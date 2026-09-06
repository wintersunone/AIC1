# compiler.py - High-Semantic-Density DSS Engine (0 imports) - v6
#
# Design principle: strip conveniences meant for HUMAN readability
# (verbosity, syntactic sugar), never strip what an AI depends on to
# self-correct: unambiguous semantics and specific, LOCATED errors.
# A model has no debugger - text (with a line number) is its only signal.
#
# New in v5: a byte-addressable heap.
#   H   - allocate n+1 zeroed bytes, returns a mutable buffer
#   @   - read byte i of a string/buffer (0-255)
#   @!  - write byte i of a HEAP buffer (string literals stay immutable -
#         mirrors native codegen, where literals live in read-only .rodata)
#   N   - int -> string (decimal)
#   V   - string -> int (leading-whitespace/sign/digits, atoi-style)
# Heap buffers are Python bytearrays (mutable, shared by reference - the
# same aliasing behavior a real pointer has). String literals and the
# interpreter's own bytes-as-str values stay plain str (immutable, like
# .rodata). to_raw() normalizes both to a Python str for every op except
# @!, which is the one place the distinction matters.
#
# New in v6: word-granularity (8-byte) heap access, on top of the same
# buffers @/@!/H already use.
#   @@   - read 8 bytes at word-index i (byte offset i*8) -> int
#   @@!  - write 8 bytes at word-index i (byte offset i*8)
# Motivation: @/@! are byte-granular, so storing one pointer/int into an
# array costs 8 separate ops. A token stream or AST is really an array of
# fixed-size records (tag, child pointers, etc) - word ops make that a
# single op per field instead of eight. This is the concrete next step
# named at the bottom of aic_codegen.py: "the next practical gap once
# compiler.aic gets far enough to need it". Bytes and words share the same
# underlying buffer/pointer - @@ i is byte offset i*8, so byte ops and
# word ops can address the same memory at whatever granularity a given
# field needs (e.g. a 1-byte tag followed by 8-byte child pointers).
#
# Values are treated as signed 64-bit (two's complement) on read, matching
# what a native `movq` register load means once it hits a signed op like
# cmpq/idivq. On write, the value is masked into the low 64 bits before
# being stored, mirroring hardware wraparound - but a value that doesn't
# fit any 64-bit representation at all (over/underflowed via unbounded
# Python-int arithmetic upstream) is a located AICError, not a silent
# truncation, per this file's own error-legibility principle.
#
# NOTE: 'R' (file read) now returns a bytearray, not a str - the buffer
# it hands back is freshly heap-allocated in BOTH backends (an interpreter
# str and a native codegen malloc'd buffer previously disagreed on whether
# that memory was writable; this fixes that divergence).

class StrLit:
    __slots__ = ("val", "line")
    def __init__(self, val): self.val = str(val)
    def __repr__(self): return f'"{self.val}"'

class Symbol:
    __slots__ = ("name", "line")
    def __init__(self, name): self.name = str(name)
    def __repr__(self): return self.name

class AICList(list):
    """A parsed [...] node. Subclasses list purely to carry .line - the
    source line its opening bracket started on - for error reporting."""
    __slots__ = ("line",)

class ReturnSignal(Exception):
    __slots__ = ("value",)
    def __init__(self, value): self.value = value

class AICError(Exception):
    """AIC-level semantic/runtime error, distinct from Python's own
    exceptions. Messages are auto-tagged with 'Line N:' by eval_node
    the first time they pass through a node that has position info."""
    pass

_MISSING = object()  # sentinel: "not found" vs "found value None"

class Scope:
    __slots__ = ("table", "parent")
    def __init__(self, parent=None):
        self.table = {}
        self.parent = parent

    def get(self, sym_name):
        s = self
        while s is not None:
            v = s.table.get(sym_name, _MISSING)
            if v is not _MISSING: return v
            s = s.parent
        return _MISSING

    def set(self, sym_name, value):
        self.table[sym_name] = value


def to_raw(v):
    if isinstance(v, StrLit): return v.val
    if isinstance(v, bytearray): return v.decode("latin-1")
    return v

def to_num(v):
    v = to_raw(v)
    if isinstance(v, (int, float)): return v
    if isinstance(v, str):
        if v.lstrip("-").isdigit(): return int(v)
        try: return float(v)
        except ValueError: return 0
    return 0

def to_int(v):
    return int(to_num(v))

def is_num(v):
    v = to_raw(v)
    return isinstance(v, (int, float)) or (isinstance(v, str) and v.lstrip("-").isdigit())


# --- Tokenizer -------------------------------------------------------------
# Tracks a line number per token (returned as a parallel `lines` list).
# Comments and strings are handled in a single pass, so a string containing
# "//" is never truncated. Supports \" \\ \n \t escapes inside strings.

_ESCAPES = {'"': '"', "\\": "\\", "n": "\n", "t": "\t"}

def tokenize(source_code):
    tokens, lines_out = [], []
    curr, curr_start_line = "", 1
    in_string = in_comment = escape = False
    string_start_line = 1
    line = 1
    i, n = 0, len(source_code)
    while i < n:
        c = source_code[i]
        if in_comment:
            if c == "\n": in_comment = False; line += 1
            i += 1; continue
        if escape:
            curr += _ESCAPES.get(c, c)
            escape = False; i += 1; continue
        if in_string:
            if c == "\\": escape = True
            elif c == '"':
                in_string = False
                tokens.append(StrLit(curr)); lines_out.append(string_start_line)
                curr = ""
            else:
                curr += c
                if c == "\n": line += 1
            i += 1; continue
        if c == "/" and i + 1 < n and source_code[i + 1] == "/":
            in_comment = True; i += 2; continue
        if c == '"':
            in_string = True; string_start_line = line; i += 1; continue
        if c in "[]":
            if curr.strip():
                tokens.append(_lex_atom(curr.strip())); lines_out.append(curr_start_line)
                curr = ""
            tokens.append(c); lines_out.append(line)
            i += 1; continue
        if c in " \t\r\n":
            if curr.strip():
                tokens.append(_lex_atom(curr.strip())); lines_out.append(curr_start_line)
                curr = ""
            if c == "\n": line += 1
            i += 1; continue
        if curr == "": curr_start_line = line
        curr += c; i += 1
    if curr.strip():
        tokens.append(_lex_atom(curr.strip())); lines_out.append(curr_start_line)
    if in_string:
        raise AICError(f"Unterminated string literal starting at line {string_start_line}")
    return tokens, lines_out

def _lex_atom(s):
    if s == "None": return None
    if s.isdigit() or (s.startswith("-") and s[1:].isdigit()): return int(s)
    try: return float(s) if "." in s else Symbol(s)
    except ValueError: return Symbol(s)


def parse(tokens, lines):
    if not tokens: return None
    ln = lines.pop(0)
    t = tokens.pop(0)
    if t == "[":
        tree = AICList()
        tree.line = ln
        while tokens and tokens[0] != "]":
            tree.append(parse(tokens, lines))
        if not tokens:
            raise AICError(f"Unclosed '[' opened at line {ln} - missing ']'")
        tokens.pop(0); lines.pop(0)
        return tree
    if t == "]":
        raise AICError(f"Unexpected ']' at line {ln} with no matching '['")
    if isinstance(t, (Symbol, StrLit)):
        t.line = ln
    return t


def _wrap_body(node, parts):
    """Build a synthetic multi-statement body, tagged with the parent
    node's line so errors inside it still resolve to a real source line."""
    b = AICList(parts)
    b.line = getattr(node, "line", None)
    return b


# --- Evaluator ---------------------------------------------------------
def eval_node(node, env):
    if isinstance(node, (int, float)) or node is None: return node
    if isinstance(node, StrLit): return node.val
    if isinstance(node, Symbol):
        res = env.get(node.name)
        return node.name if res is _MISSING else res
    if not isinstance(node, list) or not node: return None

    op_node = node[0]
    op = op_node.name if isinstance(op_node, Symbol) else str(op_node)

    try:
        handler = OPS.get(op)
        if handler is not None:
            return handler(node, env)

        fn = env.get(op)
        if fn is not _MISSING and isinstance(fn, tuple):
            param_names, fn_body, def_env = fn
            arg_values = [eval_node(a, env) for a in node[1:]]
            call_env = Scope(parent=def_env)          # lexical, not dynamic
            for pname, v in zip(param_names, arg_values): call_env.table[pname] = v
            try:
                return eval_node(fn_body, call_env)
            except ReturnSignal as sig:
                return sig.value

        raise AICError(f"Unknown function or operator: '{op}'")
    except AICError as e:
        msg = str(e)
        if not msg.startswith("Line "):
            line = getattr(node, "line", None) or getattr(op_node, "line", None)
            if line is not None:
                raise AICError(f"Line {line}: {msg}") from None
        raise


# --- Op handlers -------------------------------------------------------
def _op_T(node, env): return __import__('time').perf_counter()

def _op_D(node, env):
    res = None
    for stmt in node[1:]: res = eval_node(stmt, env)
    return res

def _decl_name(node_part):
    """Extract the plain name from a function-name or parameter
    declaration. A bare Symbol IS the name. '[$ name]' - native codegen's
    marker for 'this is a string/buffer, not a number' - still just means
    'name' here: the interpreter is dynamically typed and enforces
    nothing, it only needs to not choke on the annotation, so the same
    .aic source runs the same way on both backends."""
    if isinstance(node_part, Symbol):
        return node_part.name
    if (isinstance(node_part, list) and len(node_part) == 2
            and isinstance(node_part[0], Symbol) and node_part[0].name == "$"
            and isinstance(node_part[1], Symbol)):
        return node_part[1].name
    raise AICError(f"expected a plain name or '[$ name]', got {node_part!r}")

def _op_define(node, env):
    fname = _decl_name(node[1])
    params = [_decl_name(p) for p in node[2]]
    body = node[3] if len(node) == 4 else _wrap_body(node, [Symbol("D")] + list(node[3:]))
    env.table[fname] = (params, body, env)   # capture defining env -> closure
    return None

def _op_assign(node, env):
    sym = node[1].name if isinstance(node[1], Symbol) else str(node[1])
    val = eval_node(node[2], env)
    env.set(sym, val)
    return val

def _op_return(node, env):
    raise ReturnSignal(eval_node(node[1], env))

def _op_if(node, env):
    cond = eval_node(node[1], env)
    if cond and cond != 0: return eval_node(node[2], env)
    if len(node) > 3: return eval_node(node[3], env)
    return None

def _op_while(node, env):
    res = None
    body = node[2] if len(node) == 3 else _wrap_body(node, [Symbol("D")] + list(node[2:]))
    while True:
        c = eval_node(node[1], env)
        if not c or c == 0: break
        res = eval_node(body, env)
    return res

def _op_list(node, env): return [eval_node(x, env) for x in node[1:]]

def _op_map(node, env):
    d, i = {}, 1
    while i < len(node):
        d[to_raw(eval_node(node[i], env))] = eval_node(node[i + 1], env)
        i += 2
    return d

def _op_index_get(node, env):
    target = eval_node(node[1], env)
    key = eval_node(node[2], env)
    if isinstance(target, dict): return target.get(to_raw(key), -1)
    idx = to_int(key)
    if not (0 <= idx < len(target)):
        raise AICError(f"Index {idx} out of bounds for list of length {len(target)}")
    return target[idx]

def _op_index_set(node, env):
    c = eval_node(node[1], env)
    k = eval_node(node[2], env)
    v = eval_node(node[3], env)
    if isinstance(c, list):
        idx = to_int(k)
        if idx == len(c): c.append(v)
        elif 0 <= idx < len(c): c[idx] = v
        else: raise AICError(f"Index {idx} out of bounds for list of length {len(c)} (append requires index == length)")
    else:
        c[to_raw(k)] = v
    return c

def _op_len(node, env):
    v = eval_node(node[1], env)
    if isinstance(v, (str, bytearray)):
        # Mirror native codegen's 'L' (a real strlen@PLT call): stop at
        # the first zero byte rather than reporting a heap buffer's full
        # allocated size. Without this, [L [H 20]] would say 20 right
        # after allocation in the interpreter but 0 in native codegen -
        # not a rare edge case, it's what every over-provisioned buffer
        # looks like before it's filled. Same embedded-NUL limitation as
        # native's strlen, on purpose: consistent beats permissive here.
        s = to_raw(v)
        nul = s.find("\x00")
        return nul if nul != -1 else len(s)
    return len(v)

def _op_copy(node, env):
    v = eval_node(node[1], env)
    return list(v) if isinstance(v, list) else dict(v)

def _op_print(node, env):
    # Mirror native codegen's printf("%s", ...): a string/buffer argument
    # prints only up to its first zero byte, not its full backing size -
    # same reasoning as the 'L' fix just above, so a buffer prints
    # identically whether it's on its way to strlen or straight to print.
    parts = []
    for x in node[1:]:
        v = to_raw(eval_node(x, env))
        if isinstance(v, str):
            nul = v.find("\x00")
            if nul != -1:
                v = v[:nul]
        parts.append(v)
    print(*parts)
    return None

def _op_input(node, env): return input(to_raw(eval_node(node[1], env)))

def _safe_div(a, b):
    bn = to_num(b)
    if bn == 0: raise AICError("Division by zero")
    an = to_num(a)
    return an / bn if isinstance(an, float) or isinstance(bn, float) else an // bn

BIN_OPS = {
    "+": lambda a, b: to_num(a) + to_num(b) if is_num(a) and is_num(b) else str(to_raw(a)) + str(to_raw(b)),
    "-": lambda a, b: to_num(a) - to_num(b),
    "*": lambda a, b: to_num(a) * to_num(b),
    "/": _safe_div,
    "%": lambda a, b: to_int(a) % (to_int(b) or 1),
    "&": lambda a, b: to_int(a) & to_int(b),
    "|": lambda a, b: to_int(a) | to_int(b),
    "^^": lambda a, b: to_int(a) ^ to_int(b),
    "<<": lambda a, b: to_int(a) << to_int(b),
    ">>": lambda a, b: to_int(a) >> to_int(b),
    "==": lambda a, b: 1 if (to_num(a) == to_num(b) if is_num(a) and is_num(b) else to_raw(a) == to_raw(b)) else 0,
    "!=": lambda a, b: 1 if (to_num(a) != to_num(b) if is_num(a) and is_num(b) else to_raw(a) != to_raw(b)) else 0,
    "<": lambda a, b: 1 if to_num(a) < to_num(b) else 0,
    ">": lambda a, b: 1 if to_num(a) > to_num(b) else 0,
    "<=": lambda a, b: 1 if to_num(a) <= to_num(b) else 0,
    ">=": lambda a, b: 1 if to_num(a) >= to_num(b) else 0,
}

def _make_binop(fn):
    def handler(node, env):
        return fn(eval_node(node[1], env), eval_node(node[2], env))
    return handler

def _truthy(v):
    return bool(v) and v != 0

def _op_and(node, env):
    # Short-circuit: node[2] is only evaluated if node[1] is truthy. This
    # matters for more than speed - a bounds guard like
    # [&& [< i n] [== [@ src i] 47]] relies on the right side never being
    # reached once the left side is false, exactly like && in C/JS or
    # 'and' in Python. Eagerly evaluating both (the old behavior) would
    # run '@' out of bounds the moment i == n.
    a = eval_node(node[1], env)
    if not _truthy(a): return 0
    b = eval_node(node[2], env)
    return 1 if _truthy(b) else 0

def _op_or(node, env):
    a = eval_node(node[1], env)
    if _truthy(a): return 1
    b = eval_node(node[2], env)
    return 1 if _truthy(b) else 0


# --- File I/O ------------------------------------------------------------
# Handles are plain ints (1, 2, 3, ...) mapping to open Python file objects.
# Not thread-safe, not meant to be - this is a single-threaded language.

_open_files = {}
_next_handle = [1]

def _op_open(node, env):
    path = str(to_raw(eval_node(node[1], env)))
    mode = to_raw(eval_node(node[2], env))
    pymode = {"r": "rb", "w": "wb", "a": "ab"}.get(mode)
    if pymode is None:
        raise AICError(f"'O' mode must be \"r\", \"w\", or \"a\" - got {mode!r}")
    try:
        f = open(path, pymode)
    except OSError as e:
        raise AICError(f"'O' could not open '{path}' (mode '{mode}'): {e.strerror or e}")
    h = _next_handle[0]
    _next_handle[0] += 1
    _open_files[h] = f
    return h

def _resolve_handle(node, idx, env, op_name):
    h = to_int(eval_node(node[idx], env))
    f = _open_files.get(h)
    if f is None:
        raise AICError(f"'{op_name}': file handle {h} is not open (never opened, or already closed)")
    return f

def _op_filesize(node, env):
    f = _resolve_handle(node, 1, env, "Z")
    pos = f.tell()
    f.seek(0, 2)
    size = f.tell()
    f.seek(pos, 0)
    return size

def _op_fread(node, env):
    f = _resolve_handle(node, 1, env, "R")
    count = to_int(eval_node(node[2], env))
    if count < 0:
        raise AICError(f"'R': byte count must be >= 0, got {count}")
    return bytearray(f.read(count))   # mutable - matches native codegen's malloc'd buffer

def _op_fwrite(node, env):
    f = _resolve_handle(node, 1, env, "K")
    v = eval_node(node[2], env)
    raw = to_raw(v)
    # Mirror native codegen's 'K' (a real strlen@PLT call before fwrite):
    # stop at the first zero byte rather than writing a heap buffer's full
    # allocated size. Same reasoning _op_len already documents for 'L' -
    # without this, K on an H-allocated buffer would write one extra
    # embedded NUL byte in the interpreter that native codegen's
    # strlen-bounded fwrite would never emit. Latent until something
    # actually K'd a heap buffer (e.g. a name sliced out of source text)
    # rather than a plain string literal.
    if isinstance(v, bytearray):
        nul = raw.find("\x00")
        if nul != -1:
            raw = raw[:nul]
    data = str(raw)
    try:
        return f.write(data.encode("latin-1", errors="replace"))
    except OSError as e:
        raise AICError(f"'K': write failed: {e.strerror or e}")

def _op_fclose(node, env):
    h = to_int(eval_node(node[1], env))
    f = _open_files.pop(h, None)
    if f is None:
        raise AICError(f"'X': file handle {h} is not open (never opened, or already closed)")
    f.close()
    return 0

def _op_arg(node, env):
    idx = to_int(eval_node(node[1], env))
    argv = __import__('sys').argv
    if 0 <= idx < len(argv):
        return bytearray(argv[idx].encode("latin-1", errors="replace"))
    return bytearray()


# --- Heap: byte-addressable buffers ---------------------------------------

def _op_heap_alloc(node, env):
    n = to_int(eval_node(node[1], env))
    if n < 0:
        raise AICError(f"'H': size must be >= 0, got {n}")
    return bytearray(n + 1)   # zero-filled; index n is an implicit NUL terminator

def _op_byteget(node, env):
    s = to_raw(eval_node(node[1], env))
    idx = to_int(eval_node(node[2], env))
    if not isinstance(s, str):
        raise AICError("'@' needs a string/buffer as its first argument")
    if not (0 <= idx < len(s)):
        raise AICError(f"'@': index {idx} out of bounds for buffer of length {len(s)}")
    return ord(s[idx]) & 0xFF

def _op_byteset(node, env):
    target = eval_node(node[1], env)
    if not isinstance(target, bytearray):
        raise AICError(
            "'@!' can only write into a heap buffer allocated with 'H' "
            "(or read with 'R') - string literals are immutable here, the "
            "same way they'd live in read-only memory in native codegen"
        )
    idx = to_int(eval_node(node[2], env))
    val = to_int(eval_node(node[3], env))
    if not (0 <= idx < len(target)):
        raise AICError(f"'@!': index {idx} out of bounds for buffer of length {len(target)}")
    if not (0 <= val <= 255):
        raise AICError(f"'@!': byte value must be 0-255, got {val}")
    target[idx] = val
    return val

def _op_itoa(node, env):
    n = to_int(eval_node(node[1], env))
    return bytearray(str(n), "latin-1")

def _op_atoi(node, env):
    # Mirrors libc strtol(..., base=10): skip whitespace, optional sign,
    # then digits; 0 if nothing parses. Native codegen calls strtol
    # directly - this stays hand-written so both backends agree exactly.
    s = to_raw(eval_node(node[1], env))
    i, n = 0, len(s)
    while i < n and s[i] in " \t\n": i += 1
    neg = False
    if i < n and s[i] in "+-":
        neg = s[i] == "-"; i += 1
    start = i
    while i < n and s[i].isdigit(): i += 1
    if i == start: return 0
    val = int(s[start:i])
    return -val if neg else val


# --- Heap: word-addressable (8-byte) access, same buffers as @/@! --------
# Word-index i means byte offset i*8 - so an array of N pointers/ints lives
# in a buffer of at least N*8 (+1 for H's own trailing NUL) bytes, and
# element i is reached with `[@@ buf i]` / `[@@! buf i v]`, not a hand-
# rolled i*8 computed in AIC. Byte and word ops address the *same* memory,
# so a record can still mix a 1-byte tag with 8-byte fields via @ and @@
# on the same buffer at different offsets.

_WORD_MASK = (1 << 64) - 1

def _op_wordget(node, env):
    s = to_raw(eval_node(node[1], env))
    idx = to_int(eval_node(node[2], env))
    if not isinstance(s, str):
        raise AICError("'@@' needs a string/buffer as its first argument")
    off = idx * 8
    if not (0 <= off and off + 8 <= len(s)):
        raise AICError(
            f"'@@': word index {idx} (byte offset {off}..{off + 8}) out of "
            f"bounds for buffer of length {len(s)}"
        )
    raw = bytes(ord(c) & 0xFF for c in s[off:off + 8])
    return int.from_bytes(raw, byteorder="little", signed=True)

def _op_wordset(node, env):
    target = eval_node(node[1], env)
    if not isinstance(target, bytearray):
        raise AICError(
            "'@@!' can only write into a heap buffer allocated with 'H' "
            "(or read with 'R') - string literals are immutable here, the "
            "same way they'd live in read-only memory in native codegen"
        )
    idx = to_int(eval_node(node[2], env))
    val = to_int(eval_node(node[3], env))
    off = idx * 8
    if not (0 <= off and off + 8 <= len(target)):
        raise AICError(
            f"'@@!': word index {idx} (byte offset {off}..{off + 8}) out "
            f"of bounds for buffer of length {len(target)}"
        )
    if not (-(1 << 63) <= val <= _WORD_MASK):
        raise AICError(
            f"'@@!': value {val} does not fit in any 64-bit representation "
            f"(signed or unsigned) - this would silently wrap on real "
            f"hardware, so native codegen and the interpreter would start "
            f"disagreeing; narrow the value before storing it"
        )
    target[off:off + 8] = (val & _WORD_MASK).to_bytes(8, byteorder="little", signed=False)
    return val


# --- Word-addressable pointer slots ('@@$' / '@@$!') ----------------------
# In native codegen a pointer is just the 64-bit value already sitting in
# the word slot - '@@'/'@@!' already move those bits correctly. But this
# interpreter has no real address space: a buffer is a live Python
# bytearray/str object, not a number, so storing "a pointer" as a plain
# int (via to_int, like '@@!' does) would silently discard the object and
# corrupt it to 0 the moment it's written - exactly the bug this pair
# exists to close. Fix: simulate an address space. Each distinct object
# gets a synthetic, stable, never-reused handle (a plain int, so it round-
# trips through the same 8-byte slot machinery as '@@'/'@@!'); the handle
# is looked back up to the original object on read. Handles start well
# above 0 so an un-initialized (zeroed) word is distinguishable from any
# real pointer, matching how a real heap never hands out address 0.
_PTR_REGISTRY = {}        # handle -> the actual object (kept alive forever,
                          # same "never freed" story 'H' already has)
_PTR_HANDLE_BY_ID = {}    # id(obj) -> handle, so re-storing the same
                          # object/pointer twice yields the same handle
                          # (matters if a program ever compares two
                          # pointer words for equality)
_PTR_NEXT = [0x1000]      # next synthetic address to hand out (a 1-elem
                          # list so the closure below can mutate it without
                          # a 'global' statement - stays 0-import)

def _register_pointer(val):
    key = id(val)
    h = _PTR_HANDLE_BY_ID.get(key)
    if h is not None:
        return h
    h = _PTR_NEXT[0]
    _PTR_NEXT[0] += 8
    _PTR_HANDLE_BY_ID[key] = h
    _PTR_REGISTRY[h] = val
    return h

def _op_wordptrget(node, env):
    s = to_raw(eval_node(node[1], env))
    idx = to_int(eval_node(node[2], env))
    if not isinstance(s, str):
        raise AICError("'@@$' needs a string/buffer as its first argument")
    off = idx * 8
    if not (0 <= off and off + 8 <= len(s)):
        raise AICError(
            f"'@@$': word index {idx} (byte offset {off}..{off + 8}) out of "
            f"bounds for buffer of length {len(s)}"
        )
    raw = bytes(ord(c) & 0xFF for c in s[off:off + 8])
    handle = int.from_bytes(raw, byteorder="little", signed=False)
    if handle not in _PTR_REGISTRY:
        raise AICError(
            f"'@@$': word at index {idx} does not hold a valid pointer "
            f"(raw value {handle}) - it was never written with '@@$!', or "
            f"this slot was last written as a plain number via '@@!'"
        )
    return _PTR_REGISTRY[handle]

def _op_wordptrset(node, env):
    target = eval_node(node[1], env)
    if not isinstance(target, bytearray):
        raise AICError(
            "'@@$!' can only write into a heap buffer allocated with 'H' "
            "(or read with 'R') - string literals are immutable here, the "
            "same way they'd live in read-only memory in native codegen"
        )
    idx = to_int(eval_node(node[2], env))
    val = eval_node(node[3], env)
    if not isinstance(to_raw(val), str):
        raise AICError(
            "'@@$!'s value must be a string/buffer pointer - use '@@!' to "
            "store a plain number"
        )
    off = idx * 8
    if not (0 <= off and off + 8 <= len(target)):
        raise AICError(
            f"'@@$!': word index {idx} (byte offset {off}..{off + 8}) out "
            f"of bounds for buffer of length {len(target)}"
        )
    handle = _register_pointer(val)
    target[off:off + 8] = handle.to_bytes(8, byteorder="little", signed=False)
    return val


OPS = {
    "T": _op_T, "D": _op_D, "§": _op_define, "!": _op_assign, "^": _op_return,
    "?": _op_if, "W": _op_while, "#": _op_list, "M": _op_map,
    "$": _op_index_get, "$!": _op_index_set, "L": _op_len, "C": _op_copy,
    ".": _op_print, "I": _op_input,
    "O": _op_open, "Z": _op_filesize, "R": _op_fread, "K": _op_fwrite, "X": _op_fclose,
    "H": _op_heap_alloc, "@": _op_byteget, "@!": _op_byteset, "N": _op_itoa, "V": _op_atoi, "A": _op_arg,
    "@@": _op_wordget, "@@!": _op_wordset,
    "@@$": _op_wordptrget, "@@$!": _op_wordptrset,
    "&&": _op_and, "||": _op_or,
}
for _sym, _fn in BIN_OPS.items():
    OPS[_sym] = _make_binop(_fn)


if __name__ == "__main__":
    _path = __import__('sys').argv[1] if len(__import__('sys').argv) > 1 else "code.aic"
    with open(_path, "r", encoding="utf-8") as f: src = f.read()
    try:
        tokens, lines = tokenize(src)
        global_scope = Scope()
        while tokens:
            eval_node(parse(tokens, lines), global_scope)
    except AICError as e:
        print(f"AIC Error: {e}", file=__import__('sys').stderr)
        __import__('sys').exit(1)