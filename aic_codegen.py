# aic_codegen.py - .aic -> native x86-64 (v7: + word-addressable heap)
#
# Scope as of v5: top-level statements built from `.` `!` `?` `W` `D`,
# integer arithmetic/comparison/bitwise expressions, top-level function
# definitions (`§`) with recursion, string literals for assignment and
# printing only, and file I/O (O/Z/R/K/X).
#
# v6 added a byte-addressable heap.
#   H   - allocate n+1 zeroed bytes (calloc), returns a pointer
#   @   - read byte i of a string/pointer -> int              (no libc call)
#   @!  - write byte i of a string/pointer -> int              (no libc call)
#   L   - strlen of a string/pointer -> int                    (libc call)
#   N   - int -> newly-allocated decimal string                (libc call)
#   V   - string -> int (strtol, base 10)                      (libc call)
#
# New in v7: word-addressable (8-byte) access on the SAME buffers/pointers
# @/@! already use.
#   @@   - read 8 bytes at word-index i (byte offset i*8) -> int
#   @@!  - write 8 bytes at word-index i (byte offset i*8) -> int
# This is the concrete gap named at the bottom of this file in v6: a
# token stream / AST is an array of fixed-size records (tag byte, child
# pointers, etc), and @/@! being byte-granular meant 8 ops to move one
# pointer. @@/@@! are pure register/addressing-mode math - like @/@!,
# no `call` is emitted, so (like @/@!, unlike H/L/N/V) they need no
# stack-alignment restriction and are allowed anywhere an expression is.
#
# With byte ops for tags/flags and word ops for pointers/ints in the same
# buffer, compiler.aic can lay out its own token/AST records - e.g. byte 0
# = tag, word 1 = left child, word 2 = right child - entirely in AIC, with
# no new compiler feature needed for "lists" as such. That was the plan
# stated in v6: `#`/`M`/`$`/`$!`/`C` stay deliberately unimplemented here;
# AIC builds its own array/record layer out of H + byte/word ops, the same
# way libc's string functions are just C, not language magic.
#
# KNOWN LIMITATION (unchanged from v6): 'L' calls strlen, so a buffer with
# an embedded 0x00 byte will under-report its length. Source code has no
# NUL bytes, so this doesn't block compiler.aic, but it's a real gap for
# arbitrary binary data - inherent to NUL-terminated strings, not fixed
# here. Note this also means a word-array buffer (which will often contain
# 0x00 bytes as part of small pointer/int values) must never have its
# length taken with 'L' - track the element count in a separate int
# instead, the way a real allocator or array type would.
#
# ANOTHER LIMITATION, new with word ops: unlike the interpreter (which
# raises a located AICError if a value doesn't fit in 64 bits either
# way), native codegen's @@! is a raw `movq` store - it wraps silently on
# overflow, same as real hardware, with no runtime check. This is a
# genuine interpreter/native divergence, in the same spirit as the
# existing "no bounds check on @/@! in native codegen" gap: the
# interpreter is the safe reference semantics, native is raw memory
# access. Get correctness from testing against the interpreter first.
#
# NEW WITH POINTER-TYPED WORD OPS ('@@$'/'@@$!'): same story again, one
# level up. Native has no address space to validate against - a word full
# of garbage is just another 64-bit value, so a stray '@@$' on a slot that
# was never given a real pointer will happily hand back a wild address
# and only fault later (or not at all) if that address is actually
# dereferenced with '@'/'@!'/'L'/etc. The interpreter, because it has no
# real memory and instead simulates pointers as handles into a registry
# of live objects, CAN and does catch this immediately with a located
# error ("does not hold a valid pointer"). This makes the interpreter
# strictly safer here, not just different - by design, since the dev/debug
# loop is exactly where you want that caught, not on real hardware. This
# is not something to "fix" toward parity: real addresses and simulated
# handles are different enough that matching native's silence would only
# throw away a free safety net, not close a real behavioral gap (the
# thing being caught - reading garbage as a pointer - is undefined
# behavior in both, native just doesn't tell you until later).
#
# Deliberately NOT supported (see note at bottom of file for why):
#   - generic heap-allocated lists/maps (`#`, `M`, `$`, `$!`, `C`) as a
#     compiler feature - the plan is for AIC to build these itself now
#     that it has byte AND word heap access.
#   - closures: a `§` nested inside another function's body, or inside
#     top-level control flow, is rejected with a specific error rather
#     than silently miscompiled or misread as a variable.
#   - a function reading anything other than its own params/locals.
#   - more than 6 parameters (would need stack-passed args).
#
# Three-pass design:
#   Pass 1 (register): find every top-level `§`, record its name/params/
#     label. Anything else at the top level is a "main" statement.
#   Pass 2 (analyze): for main and for each function body *separately*,
#     collect declared variables, infer each variable's type, and verify
#     every read/call/operand is valid - all before a single instruction
#     is emitted. Catches, at compile time, bugs CONFIRMED present in the
#     interpreter:
#       (a) reading an undefined variable silently echoes its own name
#           back as a string instead of erroring (compiler.py eval_node,
#           Symbol branch, _MISSING fallback).
#       (b) calling a function with the wrong number of arguments
#           silently truncates via zip() instead of erroring, leaving
#           unbound params to fall through to the same name-echo bug
#           (confirmed: `[add 3]` against a 2-param `add` prints "3b").
#   Pass 3 (codegen): emit x86-64 for main, then for each function.

import os
from compiler import tokenize, parse, AICError, Symbol, StrLit

_CMP_SETcc = {
    "==": "sete", "!=": "setne",
    "<": "setl", ">": "setg", "<=": "setle", ">=": "setge",
}
_CMP_OP_NAMES = set(_CMP_SETcc) | {
    "+", "-", "*", "/", "%", "&", "|", "^^", "<<", ">>", "&&", "||",
}
_STMT_OPS = {".", "!", "?", "W", "D", "@>"}
_FILE_MODES = {"r", "w", "a"}
_BYTE_OPS = {"@": 2, "@!": 3}                                     # no libc call
_WORD_OPS = {"@@": 2, "@@!": 3, "@@$": 2, "@@$!": 3}              # no libc call
_WORD_PTR_OPS = {"@@$", "@@$!"}    # pointer-typed word slots - same bits as
                                    # @@/@@!, STR instead of INT at the type
                                    # level so an array of buffer pointers
                                    # can be built (e.g. token-name cache,
                                    # a symbol table) without laundering
                                    # every pointer through '@@' as INT and
                                    # losing the ability to '@'/'L' it again
_LIBC_OPS = {"O": 2, "Z": 1, "R": 2, "K": 2, "X": 1,               # calls libc/runtime
             "H": 1, "L": 1, "N": 1, "V": 1, "A": 1}
_LIBC_STR_RETURN = {"H", "R", "N", "A"}                           # the rest return INT
_RESERVED_NAMES = (_STMT_OPS | _CMP_OP_NAMES | set(_BYTE_OPS) | set(_WORD_OPS)
                    | set(_LIBC_OPS) | {"^", "§", ":"})
_ARG_REGS = ["%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"]
_MAX_PARAMS = 64

INT, STR = "int", "str"


class CodegenError(Exception):
    pass


def _line_of(node):
    return getattr(node, "line", "?")


def _op_name(node0):
    return node0.name if isinstance(node0, Symbol) else str(node0)


def _is_form(node, op):
    return isinstance(node, list) and node and _op_name(node[0]) == op


def _is_fn_def(node):
    return isinstance(node, list) and node and _op_name(node[0]) in ("§", ":")


def _is_record_def(node):
    return isinstance(node, list) and node and _op_name(node[0]) == "::"


def _is_record_op(op):
    return op.startswith("@@.") or op.startswith("@@!.") or op.startswith("@@$.") or op.startswith("@@$!.")


def _kind(t):
    return "a number" if t == INT else "a string/buffer"


class FnInfo:
    __slots__ = ("name", "params", "param_types", "ret_type", "body_stmts",
                 "label", "declared", "slots", "types")
    def __init__(self, name, params, param_types, ret_type, body_stmts, line):
        self.name = name
        self.params = params
        self.param_types = param_types   # declared per-parameter, from the signature
        self.ret_type = ret_type         # declared, from the signature (INT unless '[$ name]')
        self.body_stmts = body_stmts
        self.label = f"aicfn_{name}"
        self.declared = None   # set, filled in during analysis
        self.slots = None      # name -> slot index, filled in during analysis
        self.types = None      # name -> "int"/"str", filled in during analysis (seeded from param_types)


# --- Pass 1 + 2: registration & static analysis --------------------------
class Analyzer:
    def __init__(self):
        self.declared = set()     # main-level variables ever assigned
        self.functions = {}       # name -> FnInfo
        self.records = {}         # rec_name -> {"fields": {name: offset}, "size": size}
        self.field_map = {}       # field_name -> (rec_name, offset, size)
        self.constants = {}       # const_name -> int_value

    # ---- registration -----------------------------------------------------
    def register(self, program_nodes):
        main_stmts = []
        for n in program_nodes:
            if _is_fn_def(n):
                self._register_function(n)
            elif _is_record_def(n):
                self._register_record(n)
            else:
                main_stmts.append(n)
        return main_stmts

    def _register_record(self, node):
        if len(node) < 3:
            raise CodegenError(
                f"Line {_line_of(node[0])}: '::' needs a record name and at least one field"
            )
        rec_name = _op_name(node[1])
        field_names = [_op_name(f) for f in node[2:]]
        fields = {f: i for i, f in enumerate(field_names)}
        size = len(field_names)
        self.records[rec_name] = {"fields": fields, "size": size}
        for f, i in fields.items():
            self.field_map[f] = (rec_name, i, size)
        self.constants[f"{rec_name}.size"] = size
        self.constants[f"{rec_name}.bytes"] = size * 8
        self.constants[f"{rec_name}:size"] = size
        self.constants[f"{rec_name}:bytes"] = size * 8

    def _resolve_record_field(self, spec):
        if ":" in spec:
            rec, f = spec.split(":", 1)
            if rec not in self.records:
                raise CodegenError(f"Unknown record '{rec}'")
            if f not in self.records[rec]["fields"]:
                raise CodegenError(f"Record '{rec}' has no field '{f}'")
            return self.records[rec]["fields"][f], self.records[rec]["size"]
        elif "." in spec:
            rec, f = spec.split(".", 1)
            if rec not in self.records:
                raise CodegenError(f"Unknown record '{rec}'")
            if f not in self.records[rec]["fields"]:
                raise CodegenError(f"Record '{rec}' has no field '{f}'")
            return self.records[rec]["fields"][f], self.records[rec]["size"]
        else:
            if spec not in self.field_map:
                raise CodegenError(f"Unresolved record field '{spec}'")
            _, offset, size = self.field_map[spec]
            return offset, size


    def _parse_name_decl(self, node_part, node, what):
        """A plain Symbol declares a number; '[$ name]' declares a
        string/buffer. Same marker, same meaning, in both spots this is
        used - a function's own name (-> its return type) and each entry
        in its parameter list (-> that parameter's type). Explicit by
        design: inferring a function's signature from its call sites
        would need a fixed-point pass over the whole (possibly mutually-
        recursive) call graph, and would turn a typo into an error that
        surfaces somewhere else entirely - the opposite of a specific,
        located error."""
        if isinstance(node_part, Symbol):
            return node_part.name, INT
        if (isinstance(node_part, list) and len(node_part) == 2
                and isinstance(node_part[0], Symbol) and node_part[0].name == "$"
                and isinstance(node_part[1], Symbol)):
            return node_part[1].name, STR
        raise CodegenError(
            f"Line {_line_of(node[0])}: {what} must be a plain name (a "
            f"number) or '[$ name]' (a string/buffer) - got {node_part!r}"
        )

    def _register_function(self, node):
        if len(node) < 4:
            raise CodegenError(
                f"Line {_line_of(node[0])}: '§' needs a name, a parameter "
                f"list, and a body, e.g. [§ f [x] [^ x]]"
            )
        name, ret_type = self._parse_name_decl(node[1], node, "function name")
        if name in self.functions:
            raise CodegenError(
                f"Line {_line_of(node[0])}: function '{name}' is defined "
                f"more than once"
            )
        if name in _RESERVED_NAMES:
            raise CodegenError(
                f"Line {_line_of(node[0])}: '{name}' is a reserved operator "
                f"name and can't be used as a function name"
            )
        if not isinstance(node[2], list):
            raise CodegenError(f"Line {_line_of(node[0])}: expected a parameter list after '{name}'")
        params, param_types = [], []
        for p in node[2]:
            pname, ptype = self._parse_name_decl(p, node, "parameter")
            if pname in params:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: parameter '{pname}' repeated "
                    f"in '{name}'s parameter list"
                )
            params.append(pname)
            param_types.append(ptype)
        if len(params) > _MAX_PARAMS:
            raise CodegenError(
                f"Line {_line_of(node[0])}: '{name}' has {len(params)} "
                f"parameters, native codegen supports at most {_MAX_PARAMS}"
            )
        body_stmts = list(node[3:])
        self.functions[name] = FnInfo(name, params, param_types, ret_type, body_stmts, _line_of(node[0]))

    # ---- declaration collection (per-scope) --------------------------------
    def collect_declarations(self, node, target_set, ctx_name):
        if _is_fn_def(node):
            raise CodegenError(
                f"Line {_line_of(node[0])}: {self._nested_define_msg(ctx_name)}"
            )
        if not isinstance(node, list) or not node:
            return
        if isinstance(node[0], Symbol) and node[0].name == "!":
            if len(node) < 3 or not isinstance(node[1], Symbol):
                raise CodegenError(f"Line {_line_of(node[0])}: '!' needs a variable name and a value")
            target_set.add(node[1].name)
        if isinstance(node[0], Symbol) and node[0].name == "@>":
            if len(node) >= 4 and isinstance(node[2], list) and len(node[2]) == 1 and isinstance(node[2][0], Symbol):
                target_set.add(node[2][0].name)
            elif len(node) >= 5 and isinstance(node[3], list) and len(node[3]) == 1 and isinstance(node[3][0], Symbol):
                target_set.add(node[3][0].name)
        for child in node:
            self.collect_declarations(child, target_set, ctx_name)

    def _nested_define_msg(self, ctx_name):
        if ctx_name is None:
            return ("conditional or nested function definitions aren't "
                    "supported - define functions directly at the top level")
        return (f"nested function definitions (closures) aren't supported "
                f"yet - a function defined inside '{ctx_name}' would need "
                f"to close over '{ctx_name}'s scope, which needs heap-"
                f"allocated environments (see the note at the bottom of "
                f"aic_codegen.py)")

    # ---- read/call/type validation ------------------------------------------
    def check_reads(self, node, declared, types, ctx_name, allow_return,
                     in_op_position=False, is_assign_target=False, top=False):
        """Validates the node AND returns its static type ("int" or "str").
        For statement-shaped nodes the return value isn't meaningful to the
        caller and can be ignored - only expression positions rely on it.
        `top` marks a position where the stack is guaranteed 16-byte
        aligned (bare statement, '!' rhs, '?'/'W' condition/branches, '.'
        arguments, '^' return value) - the only positions ops that call
        into the C runtime may appear."""
        if isinstance(node, StrLit):
            return STR
        if isinstance(node, (int, float)) or node is None:
            return INT
        if isinstance(node, Symbol):
            if is_assign_target:
                return None
            if in_op_position:
                if (node.name in _STMT_OPS or node.name in _CMP_OP_NAMES
                        or node.name in _BYTE_OPS or node.name in _WORD_OPS
                        or node.name in _LIBC_OPS or _is_record_op(node.name)
                        or node.name in self.records or (node.name.startswith("#") and node.name[1:] in self.records)
                        or node.name == "#"):
                    return None
                if node.name == "^":
                    if not allow_return:
                        raise CodegenError(
                            f"Line {_line_of(node)}: 'return' only makes "
                            f"sense inside a function body"
                        )
                    return None
                if node.name in ("§", ":"):
                    return None
                if node.name in self.functions:
                    return None
                raise CodegenError(
                    f"Line {_line_of(node)}: op '{node.name}' has no native "
                    f"codegen support yet in this slice"
                )
            if node.name in self.constants:
                return INT
            if node.name not in declared:
                where = f"function '{ctx_name}'" if ctx_name else "this program"
                extra = (f" (only its own parameters/locals are visible - "
                         f"no implicit access to caller or global variables)"
                         if ctx_name else
                         f" (the interpreter would silently return the "
                         f"string '{node.name}' here instead of catching this)")
                raise CodegenError(
                    f"Line {_line_of(node)}: variable '{node.name}' is read "
                    f"but never assigned anywhere in {where}{extra}"
                )
            return types.get(node.name, INT)
        if not isinstance(node, list) or not node:
            return INT

        op = _op_name(node[0])
        self.check_reads(node[0], declared, types, ctx_name, allow_return, in_op_position=True)

        if op == "^":
            if len(node) != 2:
                raise CodegenError(f"Line {_line_of(node[0])}: '^' takes exactly one value")
            t = self.check_reads(node[1], declared, types, ctx_name, allow_return, top=True)
            expected = self.functions[ctx_name].ret_type if ctx_name is not None else INT
            if t != expected:
                marker = f"[$ {ctx_name}]" if expected == STR else ctx_name
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{ctx_name}' is declared "
                    f"(via its '[§ {marker} ...]' header) to return "
                    f"{_kind(expected)}, but this '^' returns {_kind(t)} - "
                    f"a function must return the same type on every path"
                )
            return expected

        elif op == "!":
            if len(node) < 3 or not isinstance(node[1], Symbol):
                raise CodegenError(f"Line {_line_of(node[0])}: '!' needs a variable name and a value")
            target = node[1].name
            self.check_reads(node[1], declared, types, ctx_name, allow_return, is_assign_target=True)
            rhs_type = self.check_reads(node[2], declared, types, ctx_name, allow_return, top=True)
            existing = types.get(target)
            if existing is not None and existing != rhs_type:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{target}' holds a "
                    f"{'number' if existing == INT else 'string'} elsewhere "
                    f"but is given a {'number' if rhs_type == INT else 'string'} "
                    f"here - a variable must be one type for its whole "
                    f"lifetime in native codegen (the interpreter allows "
                    f"this silently, but a machine register/stack slot "
                    f"can't represent 'sometimes a number, sometimes a "
                    f"string')"
                )
            types[target] = rhs_type
            return rhs_type

        elif op == "?":
            self.check_reads(node[1], declared, types, ctx_name, allow_return, top=True)
            t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return, top=True)
            if len(node) > 3:
                self.check_reads(node[3], declared, types, ctx_name, allow_return, top=True)
            return t2

        elif op == "W":
            self.check_reads(node[1], declared, types, ctx_name, allow_return, top=True)
            for stmt in node[2:]:
                self.check_reads(stmt, declared, types, ctx_name, allow_return, top=True)
            return INT

        elif op == "@>":
            if len(node) >= 4 and isinstance(node[2], list) and len(node[2]) == 1 and isinstance(node[2][0], Symbol):
                self.check_reads(node[1], declared, types, ctx_name, allow_return, top=True)
                types[node[2][0].name] = INT
                for stmt in node[3:]:
                    self.check_reads(stmt, declared, types, ctx_name, allow_return, top=True)
            elif len(node) >= 5 and isinstance(node[3], list) and len(node[3]) == 1 and isinstance(node[3][0], Symbol):
                self.check_reads(node[1], declared, types, ctx_name, allow_return, top=True)
                self.check_reads(node[2], declared, types, ctx_name, allow_return, top=True)
                types[node[3][0].name] = INT
                for stmt in node[4:]:
                    self.check_reads(stmt, declared, types, ctx_name, allow_return, top=True)
            else:
                raise CodegenError(f"Line {_line_of(node[0])}: Invalid '@>' form")
            return INT

        elif op in (".", "D"):
            result = INT
            for child in node[1:]:
                result = self.check_reads(child, declared, types, ctx_name, allow_return, top=True)
            return result

        elif op in self.functions:
            fn = self.functions[op]
            if len(node) - 1 != len(fn.params):
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' takes "
                    f"{len(fn.params)} argument(s), got {len(node) - 1} "
                    f"(the interpreter would silently zip() these together "
                    f"instead of erroring - confirmed to produce wrong "
                    f"results rather than a clean failure)"
                )
            for i, child in enumerate(node[1:]):
                t = self.check_reads(child, declared, types, ctx_name, allow_return)
                expected = fn.param_types[i]
                if t != expected:
                    marker = f"[$ {fn.params[i]}]" if expected == STR else fn.params[i]
                    raise CodegenError(
                        f"Line {_line_of(node[0])}: argument {i + 1} to "
                        f"'{op}' must be {_kind(expected)} (its parameter "
                        f"'{marker}' is declared that way in '{op}'s "
                        f"signature) - got {_kind(t)}"
                    )
            return fn.ret_type

        elif op in _BYTE_OPS:
            expected = _BYTE_OPS[op]
            if len(node) - 1 != expected:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' takes {expected} "
                    f"argument(s), got {len(node) - 1}"
                )
            if op == "@":
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@'s first argument must be a string/buffer")
                if t2 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@'s second argument (index) must be a number")
                return INT
            else:  # "@!"
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                t3 = self.check_reads(node[3], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@!'s first argument must be a string/buffer")
                if t2 != INT or t3 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@!'s index and value arguments must both be numbers")
                return INT

        elif op in _WORD_OPS:
            expected = _WORD_OPS[op]
            if len(node) - 1 != expected:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' takes {expected} "
                    f"argument(s), got {len(node) - 1}"
                )
            if op == "@@":
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@'s first argument must be a string/buffer")
                if t2 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@'s second argument (word index) must be a number")
                return INT
            elif op == "@@$":
                # Same load as '@@' (identical bits), typed as a pointer
                # instead of a number - use this when the word slot holds
                # a buffer address (e.g. an array of string pointers), not
                # a plain integer, so the result can be fed to '@'/'L'/etc.
                # again without a type error.
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@$'s first argument must be a string/buffer")
                if t2 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@$'s second argument (word index) must be a number")
                return STR
            elif op == "@@!":
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                t3 = self.check_reads(node[3], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@!'s first argument must be a string/buffer")
                if t2 != INT or t3 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@!'s word index and value arguments must both be numbers")
                return INT
            else:  # "@@$!" - write a pointer into a word slot
                t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                t3 = self.check_reads(node[3], declared, types, ctx_name, allow_return)
                if t1 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@$!'s first argument must be a string/buffer")
                if t2 != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@$!'s word index argument must be a number")
                if t3 != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: '@@$!'s value argument must be a string/buffer pointer - use '@@!' to store a plain number")
                return STR

        elif _is_record_op(op):
            is_set = op.startswith("@@!.") or op.startswith("@@$!.")
            is_ptr = op.startswith("@@$.") or op.startswith("@@$!.")
            if op.startswith("@@$!."): spec = op[5:]
            elif op.startswith("@@!."): spec = op[4:]
            elif op.startswith("@@$."): spec = op[4:]
            else: spec = op[3:]

            if is_set and spec in self.records:
                rec_size = self.records[spec]["size"]
                if len(node) == rec_size + 3:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    if t2 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s index argument must be a number")
                    for val_n in node[3:]:
                        self.check_reads(val_n, declared, types, ctx_name, allow_return)
                    return INT
                elif len(node) == rec_size + 2:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    for val_n in node[2:]:
                        self.check_reads(val_n, declared, types, ctx_name, allow_return)
                    return INT
                else:
                    raise CodegenError(f"Line {_line_of(node[0])}: Bulk record setter '{op}' takes {rec_size + 1} or {rec_size + 2} arguments, got {len(node) - 1}")

            offset, size = self._resolve_record_field(spec)
            if is_set:
                if len(node) == 4:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                    t3 = self.check_reads(node[3], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    if t2 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s index argument must be a number")
                    if is_ptr and t3 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s value argument must be a string/buffer pointer")
                    if not is_ptr and t3 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s value argument must be a number")
                    return t3
                elif len(node) == 3:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    if is_ptr and t2 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s value argument must be a string/buffer pointer")
                    if not is_ptr and t2 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s value argument must be a number")
                    return t2
                else:
                    raise CodegenError(f"Line {_line_of(node[0])}: '{op}' takes 2 or 3 arguments")
            else:
                if len(node) == 3:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    if t2 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s index argument must be a number")
                    return STR if is_ptr else INT
                elif len(node) == 2:
                    t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                    if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '{op}'s first argument must be a string/buffer")
                    return STR if is_ptr else INT
                else:
                    raise CodegenError(f"Line {_line_of(node[0])}: '{op}' takes 1 or 2 arguments")

        elif op in _LIBC_OPS:
            if not top:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' calls into the C "
                    f"runtime (fopen/fread/fwrite/fclose/calloc/malloc/"
                    f"sprintf/strtol/strlen) and can only be used as the "
                    f"value of '!', the condition of '?'/'W', a '.' print "
                    f"argument, a function's return value, or a bare "
                    f"statement - not nested inside another expression. "
                    f"Native codegen doesn't track stack alignment through "
                    f"arbitrary nesting for calls into the C runtime, so "
                    f"assign the result to a variable first, e.g. "
                    f"[! h [O path \"r\"]] then use 'h'"
                )
            expected = _LIBC_OPS[op]
            if len(node) - 1 != expected:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' takes {expected} "
                    f"argument(s), got {len(node) - 1}"
                )
            if op == "A":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'A' takes a numeric argv index")
                return STR
            if op == "O":
                path_t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if path_t != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'O's first argument (path) must be a string")
                if not isinstance(node[2], StrLit):
                    raise CodegenError(
                        f"Line {_line_of(node[0])}: 'O's mode argument must "
                        f"be a literal string (\"r\", \"w\", or \"a\") - "
                        f"native codegen resolves the libc fopen mode at "
                        f"compile time and has no runtime string comparison "
                        f"yet to do it dynamically"
                    )
                if node[2].val not in _FILE_MODES:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'O' mode must be \"r\", \"w\", or \"a\" - got {node[2].val!r}")
                return INT
            elif op == "Z":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'Z' takes a file handle (a number)")
                return INT
            elif op == "R":
                ht = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                ct = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                if ht != INT or ct != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'R' takes a file handle and a byte count, both numbers")
                return STR
            elif op == "K":
                ht = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                dt = self.check_reads(node[2], declared, types, ctx_name, allow_return)
                if ht != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'K's first argument must be a file handle (a number)")
                if dt != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'K's second argument (data) must be a string")
                return INT
            elif op == "X":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'X' takes a file handle (a number)")
                return INT
            elif op == "H":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'H' takes a number (byte count to allocate)")
                return STR
            elif op == "L":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'L' (native codegen) only supports strings/buffers, not lists")
                return INT
            elif op == "N":
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != INT:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'N' takes a number to convert to a string")
                return STR
            else:  # "V"
                t = self.check_reads(node[1], declared, types, ctx_name, allow_return)
                if t != STR:
                    raise CodegenError(f"Line {_line_of(node[0])}: 'V' takes a string to parse as a number")
                return INT

        elif op == "/" and len(node) == 4:
            t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
            t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
            t3 = self.check_reads(node[3], declared, types, ctx_name, allow_return)
            if t1 != STR: raise CodegenError(f"Line {_line_of(node[0])}: '/' slice first argument must be a string/buffer")
            if t2 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '/' slice start index must be a number")
            if t3 != INT: raise CodegenError(f"Line {_line_of(node[0])}: '/' slice length must be a number")
            return STR

        elif op in self.records or (op.startswith("#") and op[1:] in self.records):
            rec_name = op if op in self.records else op[1:]
            size = self.records[rec_name]["size"]
            if len(node) - 1 != size:
                raise CodegenError(f"Line {_line_of(node[0])}: Record constructor '{op}' takes {size} arguments, got {len(node) - 1}")
            for child in node[1:]:
                self.check_reads(child, declared, types, ctx_name, allow_return)
            return STR

        elif op == "#" and len(node) > 1 and _op_name(node[1]) in self.records:
            rec_name = _op_name(node[1])
            size = self.records[rec_name]["size"]
            if len(node) - 2 != size:
                raise CodegenError(f"Line {_line_of(node[0])}: Record constructor '[# {rec_name}]' takes {size} arguments, got {len(node) - 2}")
            for child in node[2:]:
                self.check_reads(child, declared, types, ctx_name, allow_return)
            return STR

        elif op in _CMP_OP_NAMES:
            if len(node) != 3:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' takes exactly 2 "
                    f"operands, got {len(node) - 1}"
                )
            t1 = self.check_reads(node[1], declared, types, ctx_name, allow_return)
            t2 = self.check_reads(node[2], declared, types, ctx_name, allow_return)
            if op in ("==", "!="):
                pass
            elif t1 != INT or t2 != INT:
                raise CodegenError(
                    f"Line {_line_of(node[0])}: '{op}' needs numbers on "
                    f"both sides - string operands aren't supported by "
                    f"native codegen yet (assigning a string to a variable "
                    f"and printing it is supported, arithmetic/comparison "
                    f"on strings is not - build that yourself with @/L now "
                    f"that a heap exists)"
                )
            return INT

        else:
            for child in node[1:]:
                self.check_reads(child, declared, types, ctx_name, allow_return)
            return INT

    # ---- driver -------------------------------------------------------------
    def analyze(self, program_nodes):
        main_stmts = self.register(program_nodes)

        for n in main_stmts:
            self.collect_declarations(n, self.declared, None)
        for fn in self.functions.values():
            fn.declared = set(fn.params)
            for stmt in fn.body_stmts:
                self.collect_declarations(stmt, fn.declared, fn.name)

        main_types = {}
        for n in main_stmts:
            self.check_reads(n, self.declared, main_types, None, allow_return=True, top=True)
        for fn in self.functions.values():
            fn.types = dict(zip(fn.params, fn.param_types))   # seeded from the signature
            for stmt in fn.body_stmts:
                self.check_reads(stmt, fn.declared, fn.types, fn.name, allow_return=True, top=True)

        # slot layout: params occupy the first slots IN PARAMETER ORDER
        # (so incoming registers copy straight across); any other local
        # gets the remaining slots in a stable (sorted) order.
        main_slots = {name: i for i, name in enumerate(sorted(self.declared))}
        for fn in self.functions.values():
            extra = sorted(fn.declared - set(fn.params))
            fn.slots = {name: i for i, name in enumerate(fn.params)}
            for i, name in enumerate(extra):
                fn.slots[name] = len(fn.params) + i

        return main_stmts, main_slots, main_types


# --- Pass 3: codegen -------------------------------------------------------
class Codegen:
    def __init__(self, functions, analyzer=None):
        self.lines = []
        self.label_n = 0
        self.needs_divzero_guard = False
        self.needs_runtime_guard = False   # calloc/malloc/fopen failure trampoline
        self.functions = functions
        self.analyzer = analyzer
        self.constants = analyzer.constants if analyzer else {}
        self.slots = {}          # active scope's name -> slot index
        self.types = {}          # active scope's name -> "int"/"str"
        self.epilogue = None     # active function's epilogue label, or None in main
        self.str_labels = {}     # literal text -> rodata label (deduped)

    def emit(self, s):
        self.lines.append(s)

    def new_label(self, base):
        self.label_n += 1
        return f".L{base}{self.label_n}"

    def slot_offset(self, name):
        return -8 * (self.slots[name] + 1)

    def string_label(self, text):
        if text not in self.str_labels:
            self.str_labels[text] = f"aicstr_{len(self.str_labels)}"
        return self.str_labels[text]

    @staticmethod
    def _escape_asm_string(text):
        out = []
        for ch in text:
            if ch == "\\": out.append("\\\\")
            elif ch == '"': out.append('\\"')
            elif ch == "\n": out.append("\\n")
            elif ch == "\t": out.append("\\t")
            else: out.append(ch)
        return "".join(out)

    def _static_type(self, node):
        """Type of an expression for codegen's own purposes (choosing a
        printf format: %s vs %ld). Mirrors (a bounded subset of) what the
        Analyzer already proved in check_reads - literals, variable reads,
        calls to user functions (now that those have a declared return
        type), the three libc ops that hand back a pointer (H/R/N), and
        the 'then'-branch of a '?' used directly as a value. Byte/word ops
        and the other libc ops all statically return a number, so the
        INT default already covers them correctly."""
        if isinstance(node, StrLit):
            return STR
        if isinstance(node, (int, float)) or node is None:
            return INT
        if isinstance(node, Symbol):
            return self.types.get(node.name, INT)
        if isinstance(node, list) and node:
            op = _op_name(node[0])
            if op in self.functions:
                return self.functions[op].ret_type
            if op in _LIBC_STR_RETURN:
                return STR
            if _is_record_op(op):
                is_ptr = op.startswith("@@$.") or op.startswith("@@$!.")
                return STR if is_ptr else INT
            if op == "/" and len(node) == 4:
                return STR
            if op in self.analyzer.records or (op.startswith("#") and op[1:] in self.analyzer.records):
                return STR
            if op == "#" and len(node) > 1 and _op_name(node[1]) in self.analyzer.records:
                return STR
            if op == "?":
                return self._static_type(node[2])
        return INT

    def _is_int_const(self, node):
        if isinstance(node, int): return True
        if isinstance(node, Symbol) and hasattr(self, "constants") and node.name in self.constants:
            return True
        return False

    def _get_int_const(self, node):
        if isinstance(node, int): return node
        if isinstance(node, Symbol) and hasattr(self, "constants") and node.name in self.constants:
            return self.constants[node.name]
        return None

    # --- expressions: result always ends up in %rax -------------------------
    def compile_expr(self, node):
        if isinstance(node, int):
            self.emit(f"    movq    ${node}, %rax")
            return
        if isinstance(node, StrLit):
            label = self.string_label(node.val)
            self.emit(f"    leaq    {label}(%rip), %rax")
            return
        if isinstance(node, Symbol):
            if hasattr(self, "constants") and node.name in self.constants:
                self.emit(f"    movq    ${self.constants[node.name]}, %rax")
                return
            off = self.slot_offset(node.name)
            self.emit(f"    movq    {off}(%rbp), %rax")
            return

        op_node = node[0]
        op = _op_name(op_node)

        if op == "&&" or op == "||":
            # Short-circuit, same as C/JS '&&'/'||' or Python 'and'/'or' -
            # the right operand is only evaluated (only its instructions
            # even run) when the left side didn't already decide the
            # result. This isn't just an optimization: a bounds guard like
            # [&& [< i n] [== [@ src i] 47]] depends on '@' never
            # executing once i == n, exactly like the interpreter now
            # guarantees.
            if len(node) != 3:
                raise CodegenError(
                    f"Line {_line_of(op_node)}: '{op}' takes exactly 2 "
                    f"operands, got {len(node) - 1}"
                )
            short_l, end_l = self.new_label("scshort"), self.new_label("scend")
            self.compile_expr(node[1])
            self.emit("    testq   %rax, %rax")
            self.emit(f"    {'je' if op == '&&' else 'jne'}      {short_l}")
            self.compile_expr(node[2])
            self.emit("    testq   %rax, %rax")
            self.emit("    setne   %al")
            self.emit("    movzbq  %al, %rax")
            self.emit(f"    jmp     {end_l}")
            self.emit(f"{short_l}:")
            self.emit(f"    movq    ${0 if op == '&&' else 1}, %rax")
            self.emit(f"{end_l}:")
            return

        if op == "?":
            if len(node) not in (3, 4):
                raise CodegenError(
                    f"Line {_line_of(op_node)}: '?' takes a condition and "
                    f"a 'then' (optionally an 'else') - got {len(node) - 1} "
                    f"argument(s)"
                )
            if len(node) == 3:
                raise CodegenError(
                    f"Line {_line_of(op_node)}: '?' can only produce a "
                    f"value when it has an 'else' branch ([? cond a b]) - "
                    f"with no 'else' there's no value for the false case, "
                    f"so this form can only be used as a bare statement, "
                    f"not nested inside an expression like '!'/'.'/a call"
                )
            then_t = self._static_type(node[2])
            else_t = self._static_type(node[3])
            if then_t != else_t:
                raise CodegenError(
                    f"Line {_line_of(op_node)}: '?' used as a value must "
                    f"produce the same type on both branches - got "
                    f"{_kind(then_t)} on 'then', {_kind(else_t)} on 'else' "
                    f"(a register can't represent 'sometimes a number, "
                    f"sometimes a string' - same rule '!' reassignment and "
                    f"a function's '^' return type already enforce)"
                )
            else_l, end_l = self.new_label("ternelse"), self.new_label("ternend")
            self.compile_expr(node[1])
            self.emit("    testq   %rax, %rax")
            self.emit(f"    je      {else_l}")
            self.compile_expr(node[2])
            self.emit(f"    jmp     {end_l}")
            self.emit(f"{else_l}:")
            self.compile_expr(node[3])
            self.emit(f"{end_l}:")
            return

        if op in self.functions:
            fn = self.functions[op]
            num_params = len(fn.params)
            num_regs = len(_ARG_REGS)
            if num_params <= num_regs:
                for arg in node[1:]:
                    self.compile_expr(arg)
                    self.emit("    pushq   %rax")
                for i in range(num_params - 1, -1, -1):
                    self.emit(f"    popq    {_ARG_REGS[i]}")
                self.emit(f"    call    {fn.label}")
            else:
                num_stack = num_params - num_regs
                pad = 1 if (num_stack % 2 != 0) else 0
                if pad:
                    self.emit("    subq    $8, %rsp")
                for i in range(num_params - 1, num_regs - 1, -1):
                    self.compile_expr(node[1 + i])
                    self.emit("    pushq   %rax")
                for i in range(num_regs):
                    self.compile_expr(node[1 + i])
                    self.emit("    pushq   %rax")
                for i in range(num_regs - 1, -1, -1):
                    self.emit(f"    popq    {_ARG_REGS[i]}")
                self.emit(f"    call    {fn.label}")
                stack_cleanup = (num_stack + pad) * 8
                self.emit(f"    addq    ${stack_cleanup}, %rsp")
            return

        if op in _BYTE_OPS:
            self.compile_byte_op(op, node)
            return

        if op in _WORD_OPS:
            self.compile_word_op(op, node)
            return

        if op in _LIBC_OPS:
            self.compile_libc_op(op, node)
            return

        if _is_record_op(op):
            self.compile_record_op(op, node)
            return

        if op == "/" and len(node) == 4:
            self.compile_slice(node)
            return

        rec_name = None
        ctor_args = None
        if op in self.analyzer.records:
            rec_name = op
            ctor_args = node[1:]
        elif op.startswith("#") and op[1:] in self.analyzer.records:
            rec_name = op[1:]
            ctor_args = node[1:]
        elif op == "#" and len(node) > 1 and _op_name(node[1]) in self.analyzer.records:
            rec_name = _op_name(node[1])
            ctor_args = node[2:]
        if rec_name is not None:
            self.compile_record_construct(rec_name, ctor_args)
            return

        if len(node) != 3:
            raise CodegenError(
                f"Line {_line_of(op_node)}: codegen only supports binary "
                f"'{op}' (exactly 2 operands), got {len(node) - 1}"
            )
        left, right = node[1], node[2]

        if self._is_int_const(left) and self._is_int_const(right):
            lval = self._get_int_const(left)
            rval = self._get_int_const(right)
            folded = None
            if op == "+":
                folded = lval + rval
            elif op == "-":
                folded = lval - rval
            elif op == "*":
                folded = lval * rval
            elif op == "/":
                if rval != 0:
                    folded = int(lval / rval)
            elif op == "%":
                if rval != 0:
                    folded = lval - int(lval / rval) * rval
            elif op == "&":
                folded = lval & rval
            elif op == "|":
                folded = lval | rval
            elif op == "^^":
                folded = lval ^ rval
            elif op == "<<":
                if 0 <= rval < 64:
                    folded = lval << rval
            elif op == ">>":
                if 0 <= rval < 64:
                    folded = lval >> rval
            if folded is not None:
                folded = (folded + (1 << 63)) % (1 << 64) - (1 << 63)
                self.emit(f"    movq    ${folded}, %rax")
                return

        self.compile_expr(left)
        self.emit("    pushq   %rax")
        self.compile_expr(right)
        self.emit("    movq    %rax, %rbx")
        self.emit("    popq    %rax")

        if op == "+":
            self.emit("    addq    %rbx, %rax")
        elif op == "-":
            self.emit("    subq    %rbx, %rax")
        elif op == "*":
            self.emit("    imulq   %rbx, %rax")
        elif op in ("/", "%"):
            self.needs_divzero_guard = True
            ok = self.new_label("divok")
            self.emit("    testq   %rbx, %rbx")
            self.emit(f"    jne     {ok}")
            self.emit("    jmp     .Ldivzero")
            self.emit(f"{ok}:")
            self.emit("    cqto")
            self.emit("    idivq   %rbx")
            if op == "%":
                self.emit("    movq    %rdx, %rax")
        elif op == "&":
            self.emit("    andq    %rbx, %rax")
        elif op == "|":
            self.emit("    orq     %rbx, %rax")
        elif op == "^^":
            self.emit("    xorq    %rbx, %rax")
        elif op == "<<":
            self.emit("    movq    %rbx, %rcx")
            self.emit("    shlq    %cl, %rax")
        elif op == ">>":
            self.emit("    movq    %rbx, %rcx")
            self.emit("    sarq    %cl, %rax")
        elif op in _CMP_SETcc:
            self.emit("    cmpq    %rbx, %rax")
            self.emit(f"    {_CMP_SETcc[op]}    %al")
            self.emit("    movzbq  %al, %rax")
        else:
            raise CodegenError(f"Line {_line_of(op_node)}: op '{op}' has no native codegen yet")

    # --- byte read/write: pure register math, no call, safe anywhere -------
    def compile_byte_op(self, op, node):
        if op == "@":
            self.compile_expr(node[1]); self.emit("    pushq   %rax")   # ptr
            self.compile_expr(node[2]); self.emit("    movq    %rax, %rbx")  # index
            self.emit("    popq    %rax")
            self.emit("    movzbq  (%rax,%rbx), %rax")
        else:  # "@!"
            self.compile_expr(node[1]); self.emit("    pushq   %rax")   # ptr
            self.compile_expr(node[2]); self.emit("    pushq   %rax")   # index
            self.compile_expr(node[3])                                  # value -> stays in %rax
            self.emit("    popq    %rbx")                                # index
            self.emit("    popq    %rcx")                                # ptr
            self.emit("    movb    %al, (%rcx,%rbx)")

    # --- word read/write: same idea as byte ops, scaled addressing mode,
    # still pure register math (no call) - safe in any expression position.
    def compile_word_op(self, op, node):
        # '@@$'/'@@$!' are typed as pointers at the check_reads level but
        # are bit-for-bit the same load/store as '@@'/'@@!' - a pointer and
        # an int are both just a 64-bit register value, so there is nothing
        # for codegen to do differently here.
        if op in ("@@", "@@$"):
            self.compile_expr(node[1]); self.emit("    pushq   %rax")   # ptr
            self.compile_expr(node[2]); self.emit("    movq    %rax, %rbx")  # word index
            self.emit("    popq    %rax")
            self.emit("    movq    (%rax,%rbx,8), %rax")
        else:  # "@@!" or "@@$!"
            self.compile_expr(node[1]); self.emit("    pushq   %rax")   # ptr
            self.compile_expr(node[2]); self.emit("    pushq   %rax")   # word index
            self.compile_expr(node[3])                                  # value -> stays in %rax
            self.emit("    popq    %rbx")                                # word index
            self.emit("    popq    %rcx")                                # ptr
            self.emit("    movq    %rax, (%rcx,%rbx,8)")

    def compile_record_op(self, op, node):
        is_set = op.startswith("@@!.") or op.startswith("@@$!.")
        if op.startswith("@@$!."): spec = op[5:]
        elif op.startswith("@@!."): spec = op[4:]
        elif op.startswith("@@$."): spec = op[4:]
        else: spec = op[3:]

        if is_set and spec in self.analyzer.records:
            rec_size = self.analyzer.records[spec]["size"]
            if len(node) == rec_size + 3:
                val_nodes = node[3:]
                for v in val_nodes:
                    self.compile_expr(v)
                    self.emit("    pushq   %rax")
                self.compile_expr(node[1])
                self.emit("    pushq   %rax")
                self.compile_expr(node[2])
                self.emit("    popq    %rbx")
                if rec_size > 1:
                    self.emit(f"    imulq   ${rec_size * 8}, %rax")
                else:
                    self.emit("    shlq    $3, %rax")
                self.emit("    addq    %rbx, %rax")
                for i in range(rec_size - 1, -1, -1):
                    self.emit("    popq    %rbx")
                    self.emit(f"    movq    %rbx, {i * 8}(%rax)")
                return
            elif len(node) == rec_size + 2:
                val_nodes = node[2:]
                for v in val_nodes:
                    self.compile_expr(v)
                    self.emit("    pushq   %rax")
                self.compile_expr(node[1])
                for i in range(rec_size - 1, -1, -1):
                    self.emit("    popq    %rbx")
                    self.emit(f"    movq    %rbx, {i * 8}(%rax)")
                return
            else:
                raise CodegenError(f"Line {_line_of(node[0])}: Bulk record setter '{op}' takes {rec_size + 1} or {rec_size + 2} arguments, got {len(node) - 1}")

        offset, size = self.analyzer._resolve_record_field(spec)

        if not is_set:
            if len(node) == 3:
                idx_node = node[2]
                if self._is_int_const(idx_node):
                    c_idx = self._get_int_const(idx_node)
                    disp = (c_idx * size + offset) * 8
                    self.compile_expr(node[1])
                    self.emit(f"    movq    {disp}(%rax), %rax")
                else:
                    self.compile_expr(node[1])
                    self.emit("    pushq   %rax")
                    self.compile_expr(idx_node)
                    self.emit("    popq    %rbx")
                    if size > 1:
                        self.emit(f"    imulq   ${size * 8}, %rax")
                        self.emit(f"    movq    {offset * 8}(%rbx,%rax), %rax")
                    else:
                        self.emit(f"    movq    {offset * 8}(%rbx,%rax,8), %rax")
            elif len(node) == 2:
                self.compile_expr(node[1])
                self.emit(f"    movq    {offset * 8}(%rax), %rax")
            else:
                raise CodegenError(f"Line {_line_of(node[0])}: '{op}' takes 1 or 2 arguments")
        else:
            if len(node) == 4:
                idx_node = node[2]
                val_node = node[3]
                if self._is_int_const(idx_node):
                    c_idx = self._get_int_const(idx_node)
                    disp = (c_idx * size + offset) * 8
                    self.compile_expr(node[1])
                    self.emit("    pushq   %rax")
                    self.compile_expr(val_node)
                    self.emit("    popq    %rbx")
                    self.emit(f"    movq    %rax, {disp}(%rbx)")
                else:
                    self.compile_expr(node[1])
                    self.emit("    pushq   %rax")
                    self.compile_expr(idx_node)
                    if size > 1:
                        self.emit(f"    imulq   ${size * 8}, %rax")
                    else:
                        self.emit("    shlq    $3, %rax")
                    self.emit("    pushq   %rax")
                    self.compile_expr(val_node)
                    self.emit("    popq    %rcx")
                    self.emit("    popq    %rbx")
                    self.emit(f"    movq    %rax, {offset * 8}(%rbx,%rcx)")
            elif len(node) == 3:
                val_node = node[2]
                self.compile_expr(node[1])
                self.emit("    pushq   %rax")
                self.compile_expr(val_node)
                self.emit("    popq    %rbx")
                self.emit(f"    movq    %rax, {offset * 8}(%rbx)")
            else:
                raise CodegenError(f"Line {_line_of(node[0])}: '{op}' takes 2 or 3 arguments")

    def compile_record_construct(self, rec_name, args):
        size = self.analyzer.records[rec_name]["size"]
        for arg in args:
            self.compile_expr(arg)
            self.emit("    pushq   %rax")
        self.emit(f"    movq    ${size * 8 + 1}, %rdi")
        self.emit("    movq    $1, %rsi")
        self.emit("    call    aic_calloc")
        self.needs_io_guard = True
        ok = self.new_label("allocok")
        self.emit("    testq   %rax, %rax")
        self.emit(f"    jne     {ok}")
        self.emit("    jmp     .Lruntimeerror")
        self.emit(f"{ok}:")
        for i in range(size - 1, -1, -1):
            self.emit("    popq    %rbx")
            self.emit(f"    movq    %rbx, {i * 8}(%rax)")

    def compile_slice(self, node):
        self.compile_expr(node[1])
        self.emit("    pushq   %rax")
        self.compile_expr(node[2])
        self.emit("    pushq   %rax")
        self.compile_expr(node[3])
        self.emit("    pushq   %rax")
        self.emit("    movq    %rax, %rdi")
        self.emit("    incq    %rdi")
        self.emit("    movq    $1, %rsi")
        self.emit("    call    aic_calloc")
        self.needs_io_guard = True
        ok = self.new_label("allocok")
        self.emit("    testq   %rax, %rax")
        self.emit(f"    jne     {ok}")
        self.emit("    jmp     .Lruntimeerror")
        self.emit(f"{ok}:")
        self.emit("    popq    %rcx")
        self.emit("    popq    %rbx")
        self.emit("    popq    %rsi")
        self.emit("    addq    %rbx, %rsi")
        self.emit("    movq    %rax, %rdi")
        self.emit("    pushq   %rax")
        self.emit("    rep movsb")
        self.emit("    popq    %rax")


    # --- C-runtime calls: uses %r12/%r13/%r14 (callee-saved per the SysV
    # ABI) as scratch across calls, so libc can't clobber them and no
    # push/pop bookkeeping (and thus no alignment risk) is needed. --------
    def compile_libc_op(self, op, node):
        if op == "O":
            self.compile_expr(node[1])                       # %rax = path ptr
            self.emit("    movq    %rax, %rdi")
            mode_label = self.string_label({"r": "rb", "w": "wb", "a": "ab"}[node[2].val])
            self.emit(f"    leaq    {mode_label}(%rip), %rsi")
            self.emit("    call    aic_fopen")
            ok = self.new_label("openok")
            self.emit("    testq   %rax, %rax")
            self.emit(f"    jne     {ok}")
            self.emit("    jmp     .Lruntimeerror")
            self.emit(f"{ok}:")
            self.needs_runtime_guard = True

        elif op == "Z":
            self.compile_expr(node[1])                        # %rax = FILE*
            self.emit("    movq    %rax, %r12")                # handle
            self.emit("    movq    %r12, %rdi")
            self.emit("    call    aic_ftell")                 # original pos
            self.emit("    movq    %rax, %r13")
            self.emit("    movq    %r12, %rdi")
            self.emit("    movq    $0, %rsi")
            self.emit("    movq    $2, %rdx")                  # SEEK_END
            self.emit("    call    aic_fseek")
            self.emit("    movq    %r12, %rdi")
            self.emit("    call    aic_ftell")                 # size
            self.emit("    movq    %rax, %r14")
            self.emit("    movq    %r12, %rdi")
            self.emit("    movq    %r13, %rsi")
            self.emit("    movq    $0, %rdx")                  # SEEK_SET
            self.emit("    call    aic_fseek")                 # restore position
            self.emit("    movq    %r14, %rax")

        elif op == "R":
            self.compile_expr(node[1])                        # %rax = FILE*
            self.emit("    movq    %rax, %r12")
            self.compile_expr(node[2])                         # %rax = count
            self.emit("    movq    %rax, %r13")
            self.emit("    leaq    1(%r13), %rdi")              # malloc(count+1)
            self.emit("    call    aic_malloc")
            ok = self.new_label("allocok")
            self.emit("    testq   %rax, %rax")
            self.emit(f"    jne     {ok}")
            self.emit("    jmp     .Lruntimeerror")
            self.emit(f"{ok}:")
            self.emit("    movq    %rax, %r14")                 # buffer ptr
            self.emit("    movq    %r14, %rdi")
            self.emit("    movq    $1, %rsi")                   # element size
            self.emit("    movq    %r13, %rdx")                 # nmemb = count
            self.emit("    movq    %r12, %rcx")                 # stream
            self.emit("    call    aic_fread")                  # %rax = bytes actually read
            self.emit("    movb    $0, (%r14,%rax)")             # NUL-terminate
            self.emit("    movq    %r14, %rax")
            self.needs_runtime_guard = True

        elif op == "K":
            self.compile_expr(node[1])                         # %rax = FILE*
            self.emit("    movq    %rax, %r12")
            self.compile_expr(node[2])                         # %rax = data ptr
            self.emit("    movq    %rax, %r13")
            self.emit("    movq    %r13, %rdi")
            self.emit("    call    aic_strlen")
            self.emit("    movq    %rax, %r14")
            self.emit("    movq    %r13, %rdi")
            self.emit("    movq    $1, %rsi")
            self.emit("    movq    %r14, %rdx")
            self.emit("    movq    %r12, %rcx")
            self.emit("    call    aic_fwrite")

        elif op == "X":
            self.compile_expr(node[1])
            self.emit("    movq    %rax, %rdi")
            self.emit("    call    aic_fclose")

        elif op == "H":
            self.compile_expr(node[1])                 # %rax = n
            self.emit("    leaq    1(%rax), %rdi")     # nmemb = n+1
            self.emit("    movq    $1, %rsi")          # size = 1 (zero-filled by calloc)
            self.emit("    call    aic_calloc")
            ok = self.new_label("allocok")
            self.emit("    testq   %rax, %rax")
            self.emit(f"    jne     {ok}")
            self.emit("    jmp     .Lruntimeerror")
            self.emit(f"{ok}:")
            self.needs_runtime_guard = True

        elif op == "L":
            self.compile_expr(node[1])
            self.emit("    movq    %rax, %rdi")
            self.emit("    call    aic_strlen")

        elif op == "N":
            self.compile_expr(node[1])                 # %rax = value
            self.emit("    movq    %rax, %r12")
            self.emit("    movq    $24, %rdi")         # enough for a 64-bit decimal + sign + NUL
            self.emit("    call    aic_malloc")
            ok = self.new_label("allocok")
            self.emit("    testq   %rax, %rax")
            self.emit(f"    jne     {ok}")
            self.emit("    jmp     .Lruntimeerror")
            self.emit(f"{ok}:")
            self.emit("    movq    %rax, %r13")
            self.emit("    movq    %r13, %rdi")
            self.emit("    leaq    fmt_d(%rip), %rsi")
            self.emit("    movq    %r12, %rdx")
            self.emit("    xorl    %eax, %eax")
            self.emit("    call    aic_sprintf")
            self.emit("    movq    %r13, %rax")
            self.needs_runtime_guard = True

        elif op == "V":
            self.compile_expr(node[1])
            self.emit("    movq    %rax, %rdi")
            self.emit("    xorl    %esi, %esi")        # endptr = NULL
            self.emit("    movq    $10, %rdx")          # base 10
            self.emit("    call    aic_strtol")

        elif op == "A":
            self.compile_expr(node[1])
            self.emit("    movq    %rax, %rdi")
            self.emit("    call    aic_arg")

    # --- statements ------------------------------------------------------------
    def compile_stmt(self, node):
        if not isinstance(node, list) or not node:
            return
        op_node = node[0]
        op = _op_name(op_node)

        if op == ".":
            args = node[1:]
            if not args:
                self.emit("    leaq    nl_only(%rip), %rdi")
                self.emit("    xorl    %eax, %eax")
                self.emit("    call    aic_printf")
                return
            for i, a in enumerate(args):
                self.compile_expr(a)
                is_str = self._static_type(a) == STR
                is_last = (i == len(args) - 1)
                if is_str:
                    fmt = "fmt_s_nl" if is_last else "fmt_s_sp"
                else:
                    fmt = "fmt_nl" if is_last else "fmt_sp"
                self.emit(f"    leaq    {fmt}(%rip), %rdi")
                self.emit("    movq    %rax, %rsi")
                self.emit("    xorl    %eax, %eax")
                self.emit("    call    aic_printf")
        elif op == "!":
            self.compile_expr(node[2])
            self.emit(f"    movq    %rax, {self.slot_offset(node[1].name)}(%rbp)")
        elif op == "^":
            self.compile_expr(node[1])
            self.emit(f"    jmp     {self.epilogue}")
        elif op == "?":
            else_l, end_l = self.new_label("else"), self.new_label("endif")
            self.compile_expr(node[1])
            self.emit("    testq   %rax, %rax")
            self.emit(f"    je      {else_l}")
            self.compile_stmt(node[2])
            self.emit(f"    jmp     {end_l}")
            self.emit(f"{else_l}:")
            if len(node) > 3:
                self.compile_stmt(node[3])
            self.emit(f"{end_l}:")
        elif op == "W":
            top_l, end_l = self.new_label("wtop"), self.new_label("wend")
            self.emit(f"{top_l}:")
            self.compile_expr(node[1])
            self.emit("    testq   %rax, %rax")
            self.emit(f"    je      {end_l}")
            for stmt in node[2:]:
                self.compile_stmt(stmt)
            self.emit(f"    jmp     {top_l}")
            self.emit(f"{end_l}:")
        elif op == "@>":
            top_l, end_l = self.new_label("maptop"), self.new_label("mapend")
            if len(node) >= 4 and isinstance(node[2], list) and len(node[2]) == 1 and isinstance(node[2][0], Symbol):
                limit_node = node[1]
                var_name = node[2][0].name
                body = node[3:]
                start_node = 0
            else:
                start_node = node[1]
                limit_node = node[2]
                var_name = node[3][0].name
                body = node[4:]

            var_off = self.slot_offset(var_name)
            if isinstance(start_node, int):
                self.emit(f"    movq    ${start_node}, {var_off}(%rbp)")
            else:
                self.compile_expr(start_node)
                self.emit(f"    movq    %rax, {var_off}(%rbp)")

            self.emit(f"{top_l}:")
            self.emit(f"    movq    {var_off}(%rbp), %rax")
            self.emit("    pushq   %rax")
            self.compile_expr(limit_node)
            self.emit("    movq    %rax, %rbx")
            self.emit("    popq    %rax")
            self.emit("    cmpq    %rbx, %rax")
            self.emit(f"    jge     {end_l}")
            for stmt in body:
                self.compile_stmt(stmt)
            self.emit(f"    incq    {var_off}(%rbp)")
            self.emit(f"    jmp     {top_l}")
            self.emit(f"{end_l}:")
        elif op == "D":
            for stmt in node[1:]:
                self.compile_stmt(stmt)
        elif (op in _BYTE_OPS or op in _WORD_OPS or op in _LIBC_OPS or _is_record_op(op)
              or op in self.analyzer.records or (op.startswith("#") and op[1:] in self.analyzer.records)
              or op == "#" or (op == "/" and len(node) == 4)):
            self.compile_expr(node)   # bare statement, result dropped
        elif op in self.functions:
            self.compile_expr(node)   # call used for side effects, result dropped
        else:
            raise CodegenError(
                f"Line {_line_of(op_node)}: this slice only compiles "
                f"top-level '.', '!', '?', 'W', 'D', '^', a byte/word/heap "
                f"op, a file op, or a function call - got '{op}'"
            )

    # --- frame builders --------------------------------------------------------
    def _frame_and_zeroinit(self, slots, param_names):
        n = len(slots)
        frame_size = max(16, ((n * 8 + 15) // 16) * 16)
        zero_targets = [name for name in slots if name not in param_names]
        zero_init = "\n".join(
            f"    movq    $0, {-8 * (slots[name] + 1)}(%rbp)" for name in zero_targets
        )
        return frame_size, zero_init

    def compile_main(self, main_stmts, main_slots, main_types):
        self.slots = main_slots
        self.types = main_types
        self.epilogue = ".Lmain_ret"
        for n in main_stmts:
            self.compile_stmt(n)
        body = "\n".join(self.lines)
        self.lines = []
        frame_size, zero_init = self._frame_and_zeroinit(main_slots, set())
        return f"""\
    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    ${frame_size}, %rsp
{zero_init}
{body}
    movq    $0, %rax
.Lmain_ret:
    leave
    ret
"""

    def compile_function(self, fn):
        self.slots = fn.slots
        self.types = fn.types
        self.epilogue = f".Lret_{fn.name}"
        for stmt in fn.body_stmts:
            self.compile_stmt(stmt)
        body = "\n".join(self.lines)
        self.lines = []
        frame_size, zero_init = self._frame_and_zeroinit(fn.slots, set(fn.params))
        arg_copy_lines = []
        for i in range(len(fn.params)):
            slot_off = -8 * (i + 1)
            if i < len(_ARG_REGS):
                arg_copy_lines.append(f"    movq    {_ARG_REGS[i]}, {slot_off}(%rbp)")
            else:
                stack_off = 16 + (i - len(_ARG_REGS)) * 8
                arg_copy_lines.append(f"    movq    {stack_off}(%rbp), %rax")
                arg_copy_lines.append(f"    movq    %rax, {slot_off}(%rbp)")
        arg_copy = "\n".join(arg_copy_lines)
        return f"""\
{fn.label}:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    ${frame_size}, %rsp
{arg_copy}
{zero_init}
{body}
    movq    $0, %rax
{self.epilogue}:
    leave
    ret
"""

    def build(self, main_stmts, main_slots, main_types):
        # Codegen must run before we know which string literals were used
        # (str_labels is populated as a side effect of compile_expr).
        main_asm = self.compile_main(main_stmts, main_slots, main_types)
        fn_asm = "\n".join(self.compile_function(fn) for fn in self.functions.values())

        divzero_handler, rodata_divzero = "", ""
        if self.needs_divzero_guard:
            divzero_handler = """
.Ldivzero:
    leaq    divzero_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error
"""
            rodata_divzero = """\
divzero_msg:
    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\\n"
divzero_msg_end:
    .equ divzero_len, divzero_msg_end - divzero_msg - 1
"""
        runtime_handler, rodata_runtime = "", ""
        if self.needs_runtime_guard:
            runtime_handler = """
.Lruntimeerror:
    leaq    runtimeerr_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error
"""
            rodata_runtime = """\
runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1
"""
        str_rodata = "\n".join(
            f'{label}:\n    .string "{self._escape_asm_string(text)}"'
            for text, label in self.str_labels.items()
        )
        bridge_asm = ""
        bridge_file = os.path.join(os.path.dirname(__file__), "tools", "aic_wincrt_bridge.s")
        if os.path.exists(bridge_file):
            with open(bridge_file, "r", encoding="utf-8") as f:
                bridge_asm = f.read()
        elif os.path.exists("tools/aic_wincrt_bridge.s"):
            with open("tools/aic_wincrt_bridge.s", "r", encoding="utf-8") as f:
                bridge_asm = f.read()

        return f"""\
    .section .rodata
fmt_nl:
    .string "%ld\\n"
fmt_sp:
    .string "%ld "
fmt_s_nl:
    .string "%s\\n"
fmt_s_sp:
    .string "%s "
fmt_d:
    .string "%ld"
nl_only:
    .string "\\n"
{str_rodata}
{rodata_divzero}
{rodata_runtime}
    .text
{main_asm}
{fn_asm}
{divzero_handler}
{runtime_handler}
{bridge_asm}"""


def read_source_with_imports(src_path, visited=None):
    import os, re
    if visited is None:
        visited = set()
    canonical = os.path.abspath(src_path)
    if canonical in visited:
        return ""
    visited.add(canonical)
    with open(src_path, "r", encoding="utf-8") as f:
        source = f.read()
    base_dir = os.path.dirname(canonical)
    def replacer(match):
        rel_path = match.group(1)
        target = os.path.join(base_dir, rel_path)
        if not os.path.exists(target):
            target = os.path.abspath(rel_path)
        if not os.path.exists(target):
            raise CodegenError(f"Imported file '{rel_path}' not found")
        return read_source_with_imports(target, visited)
    pattern = re.compile(r'\[\s*(?:load|import)\s+"([^"]+)"\s*\]')
    return pattern.sub(replacer, source)


def compile_file(src_path, asm_path):
    source = read_source_with_imports(src_path)
    tokens, lines = tokenize(source)
    program_nodes = []
    while tokens:
        program_nodes.append(parse(tokens, lines))

    analyzer = Analyzer()
    main_stmts, main_slots, main_types = analyzer.analyze(program_nodes)
    cg = Codegen(analyzer.functions, analyzer)
    asm = cg.build(main_stmts, main_slots, main_types)
    with open(asm_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(asm)
    return asm


if __name__ == "__main__":
    import sys
    src = sys.argv[1] if len(sys.argv) > 1 else "code.aic"
    out = sys.argv[2] if len(sys.argv) > 2 else "out.s"
    try:
        compile_file(src, out)
        print(f"wrote {out}")
    except (AICError, CodegenError) as e:
        diag = getattr(e, "diagnostic", f"[ERR :code 400 :kind CODEGEN :msg {repr(str(e))}]")
        print(diag, file=sys.stderr)
        sys.exit(1)

# --- Why closures / generic lists are still separate, later steps ----------
# What's here now: recursion, string literals for assignment/printing,
# file I/O, and a byte- AND word-addressable heap (H/@/@!/@@/@@!/L/N/V).
# That's enough for compiler.aic to hold and walk a mutable buffer at
# whatever granularity a field needs - which is what a tokenizer AND an
# AST builder actually need (a token: {tag: byte, text_ptr: word, next:
# word} is one buffer, addressed with @ for the tag and @@ for the two
# pointers). What's still missing:
#
# Closures: a function returned or passed around that still needs to read
# a variable from the scope it was DEFINED in, after that scope's stack
# frame may already be gone. Real closures need each captured variable
# lifted into a heap-allocated environment record with a parent pointer -
# which, notably, is now buildable in AIC itself with H + @@/@@! (an env
# record is exactly a fixed layout of word-sized slots plus a parent
# pointer) if a future increment wants to add closures as an AIC-level
# convention rather than a compiler feature.
#
# Generic lists/maps as compiler features (`#`, `M`, `$`, `$!`, `C`): still
# not added here, on purpose, and for a stronger reason now than in v6 -
# with both byte and word heap access there is no remaining primitive gap
# that would force them to be compiler magic. A dynamic array is calloc +
# a stored capacity/length pair + @@/@@! for elements; a linked structure
# is a tag byte plus word-sized pointers; both are library code, not
# language features, the same way libc doesn't need a `list` keyword.
# compiler.aic can now be started as the actual next step: a tokenizer
# that reads the source with O/R, walks it byte-by-byte with @, and
# builds a token array with H + @/@@ - no further compiler primitive is
# a hard blocker for that.
