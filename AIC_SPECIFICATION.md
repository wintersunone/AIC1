# AIC Language Specification & AI Foundation Model Training Reference (Version 4.0)

---

## 1. Executive Vision & Architectural Rationale

**AIC** (*AI Compiler / AI C*) is a production-grade, statically-deterministic systems programming language engineered explicitly for Artificial Intelligence models to train on, reason about, and generate.

### Why Traditional Languages Fail LLMs
Modern programming languages (C, C++, Rust, Python) were designed for human eyesight and typewriter ergonomics. For Large Language Models and autoregressive transformer decoders, these design choices introduce chronic failure modes:
1. **Operator Precedence Ambiguities**: Unary vs binary binding (e.g., `*p++`, `x & y == z`), requiring lookahead trees and token backtracking.
2. **Grammar Hallucinations**: Significant whitespace, dangling elses, missing semicolons, or implicit type coercions.
3. **Multi-Byte / Fragmented BPE Tokenization**: Punctuation combinations like `->`, `::=`, `/*`, or `...` often slice unpredictably across Byte-Pair Encoding (BPE) vocabularies.
4. **Toolchain Fragility**: Dependence on heavy external toolchains (LLVM, GCC, MSVC, Clang), multi-gigabyte platform SDKs, and platform-divergent build systems.

### The AIC Solution
1. **100% Unambiguous S-Expression Prefix Syntax**: Every operation is strictly delimited by square brackets `[op arg1 arg2 ...]`. Precedence is 100% explicit; AST construction is trivial and one-to-one.
2. **Deterministic Token-to-AST Mapping**: Single-character or deterministic-length delimiters guarantee clean token alignment across all modern BPE and WordPiece tokenizers (Llama, GPT, Claude, Gemini).
3. **Direct Machine Code Generation with Zero External Dependencies**: AIC compiles itself to native assembly and emits standalone executables directly with custom, zero-dependency emitters: **Windows PE32+ (x86-64)**, **Linux ELF64 (x86-64 and ARM64/AArch64)**, and **macOS Apple Silicon Mach-O ARM64** (`.macho` / `.dylib`, ad-hoc signed).
4. **Mathematical Fixed-Point Self-Hosting Closure**: Provably verified across 4 compilation generations:
   $$\text{Gen0.s} \equiv \text{Gen1.s} \equiv \text{Gen2.s} \equiv \text{GenPE.s}$$
   Zero bytes of divergence across all generations.

---

## 2. Formal Grammar (EBNF)

```ebnf
Program        ::= Directive* TopLevelItem*
Directive      ::= '[' ('import' | 'load') StringLiteral ']'
TopLevelItem   ::= RecordDef | FunctionDef | Statement

RecordDef      ::= '[' '::' Identifier Identifier+ ']'
FunctionDef    ::= '[' ('§' | ':') ReturnSpec? Identifier '[' ParamList? ']' Statement+ ']'
ReturnSpec     ::= '[' '$' Identifier ']'
ParamList      ::= ParamItem+
ParamItem      ::= Identifier | '[' '$' Identifier ']'

Statement      ::= AssignStmt
                 | ReturnStmt
                 | IfStmt
                 | WhileStmt
                 | DoBlock
                 | BoundedLoop
                 | PrintStmt
                 | ExprStmt

AssignStmt     ::= '[' '!' Identifier Expr ']'
ReturnStmt     ::= '[' '^' Expr ']'
IfStmt         ::= '[' '?' Expr Statement (Statement)? ']'
WhileStmt      ::= '[' 'W' Expr Statement+ ']'
DoBlock        ::= '[' 'D' Statement+ ']'
BoundedLoop    ::= '[' '@>' Expr '[' Identifier ']' Statement+ ']'
                 | '[' '@>' Expr Expr '[' Identifier ']' Statement+ ']'
PrintStmt      ::= '[' '.' (Expr | StringLiteral)+ ']'
ExprStmt       ::= Expr

Expr           ::= IntegerLiteral
                 | StringLiteral
                 | Identifier
                 | BinaryExpr
                 | UnaryExpr
                 | CallExpr
                 | ByteOpExpr
                 | WordOpExpr
                 | RecordExpr
                 | SliceExpr
                 | TernaryExpr
                 | ShortCircuitExpr
                 | IntrinsicExpr

IntrinsicExpr  ::= '[' 'H' Expr ']'               (* Heap allocate: size *)
                 | '[' 'F' Expr ']'               (* Heap free: ptr *)
                 | '[' 'I' Expr ']'               (* Console input: prompt *)
                 | '[' 'T' ']'                    (* Monotonic millisecond timestamp *)
                 | '[' 'L' Expr ']'               (* String length: str *)
                 | '[' 'N' Expr ']'               (* Int to string: int *)
                 | '[' 'V' Expr ']'               (* String to int: str *)
                 | '[' 'A' Expr ']'               (* CLI argument: index *)
                 | '[' 'O' Expr Expr ']'          (* File open: path mode *)
                 | '[' 'Z' Expr ']'               (* File size: handle *)
                 | '[' 'R' Expr Expr ']'          (* File read: handle len *)
                 | '[' 'K' Expr Expr Expr ']'     (* File write: handle buf len *)
                 | '[' 'X' Expr ']'               (* File close: handle *)

BinaryExpr     ::= '[' BinOp Expr Expr ']'
BinOp          ::= '+' | '-' | '*' | '/' | '%'
                 | '&' | '|' | '^^' | '<<' | '>>'
                 | '==' | '!=' | '<' | '>' | '<=' | '>='

UnaryExpr      ::= '[' '-' Expr ']'
                 | '[' '~' Expr ']'

TernaryExpr    ::= '[' '?' Expr Expr Expr ']'
ShortCircuitExpr ::= '[' ('&&' | '||') Expr Expr ']'
CallExpr       ::= '[' Identifier Expr* ']'
SliceExpr      ::= '[' '/' Expr Expr Expr ']'

ByteOpExpr     ::= '[' '@' Expr Expr ']'          (* Read byte: buffer index *)
                 | '[' '@!' Expr Expr Expr ']'     (* Write byte: buffer index val *)

WordOpExpr     ::= '[' '@@' Expr Expr ']'         (* Read 64-bit int: buffer word_index *)
                 | '[' '@@!' Expr Expr Expr ']'    (* Write 64-bit int: buffer word_index val *)
                 | '[' '@@$' Expr Expr ']'        (* Read pointer: buffer word_index *)
                 | '[' '@@$!' Expr Expr Expr ']'   (* Write pointer: buffer word_index ptr *)

RecordExpr     ::= '[' Identifier Expr+ ']'                       (* Constructor *)
                 | '[' ('@@.' | '@@$.') RecordFieldRef Expr (Expr)? ']' (* Field getter *)
                 | '[' ('@@!.' | '@@$!.') RecordFieldRef Expr (Expr)? Expr+ ']' (* Field setter / bulk setter *)
```

---

## 3. Lexical Structure & Tokens

### 3.1 Atoms and Identifiers
- Identifiers consist of any sequence of characters not containing whitespace, `[`, `]`, `"`, or `//`.
- Case-sensitive: `foo`, `Foo`, and `FOO` are distinct.
- Names can include alphanumeric characters and symbols: `vec_new`, `math_abs`, `str_eq`, `Point:x`.

### 3.2 Numeric Literals
- 64-bit signed decimal integers: `0`, `42`, `-99`, `1048576`.
- Hexadecimal / octal parsed in standard decimal-representation base format.

### 3.3 String Literals
- Enclosed by double quotes: `"Hello, World!"`.
- Character representations inside strings support standard ASCII byte sequences.
- For dynamic quotes, `[str_quote]` returns a 1-byte heap buffer containing ASCII 34 (`"`).

### 3.4 Comments
- Single-line comments begin with `//` and extend to the end of the line.
- Comments are completely stripped during tokenization and do not affect AST generation.

---

## 4. Types and Memory Model

AIC operates on a simple, predictable, hardware-mapped memory model:

| AIC Type | Size | C Equivalent | Machine Register |
| :--- | :--- | :--- | :--- |
| `INT` | 8 bytes (64-bit) | `int64_t` | `%rax`, `%rbx`, `%rcx`, etc. |
| `STR` | 8 bytes (64-bit) | `char*` / `void*` | 64-bit virtual memory address |
| `S-Record` | Variable (N * 8 bytes) | `struct` | Contiguous 64-bit aligned buffer |

### 4.1 Zero-Cost S-Records (`::`)
Declared at top-level:
```aic
[:: Point x y]
```
Creates:
- Constructor: `[Point x y]` (allocates 16 bytes via `aic_calloc`, initializes fields, returns pointer).
- Getter: `[@@.Point:x p]` (offset 0), `[@@.Point:y p]` (offset 1).
- Setter: `[@@!.Point:x p val]`, `[@@!.Point:y p val]`.
- Bulk Setter: `[@@!.Point p x_val y_val]` (writes all fields contiguously in one operation).
- Constants: `Point:size` (number of words, e.g., 2), `Point.bytes` (byte size, e.g., 16).

### 4.2 Heap Management & System Primitives
- `[H size]`: Allocates `size + 1` zeroed bytes (via `aic_calloc`), returning a pointer to a mutable buffer.
- `[F ptr]`: Releases memory allocated with `H` (via `free`).
- `[I prompt]`: Writes prompt string to stdout, reads a line of input from stdin into a newly allocated heap buffer, and returns a string pointer.
- `[T]`: Returns the current high-resolution monotonic millisecond timestamp (64-bit integer).
- `[A idx]`: Accesses command-line arguments passed to the program (`[A 0]` is binary/script path, `[A 1]` is first argument).

### 4.3 Word vs Byte Addressing
- Byte operations (`@`, `@!`): Index is in **bytes** (`buffer + index`).
- Word operations (`@@`, `@@!`, `@@$`, `@@$!`): Index is in **8-byte words** (`buffer + index * 8`).
- Pointer words (`@@$`, `@@$!`): Typed at the static analysis level as `STR` so pointers can be loaded/stored into buffers without losing string/pointer typing.

---

## 5. ABI & Calling Conventions

AIC compiles strictly to **System V AMD64 ABI** (Linux) and **Windows x64 ABI** (Windows):
- **Registers for Integer/Pointer Parameters (Args 1-6)**:
  `%rdi`, `%rsi`, `%rdx`, `%rcx`, `%r8`, `%r9` (System V) / `%rcx`, `%rdx`, `%r8`, `%r9` (Windows shadow space).
- **Arbitrary Parameter Count ($N > 6$)**:
  Stack-spilled via 16-byte aligned caller displacement and callee frame copies (`16 + (i - 6) * 8(%rbp)`).
- **Return Value**: Passed in `%rax`.
- **Stack Alignment Invariant**:
  The stack pointer `%rsp` must be 16-byte aligned before any `call` instruction. Top-level statements and intermediate variables maintain alignment. Libc and runtime intrinsic operations (`O`, `Z`, `R`, `K`, `X`, `N`, `V`, `L`, `H`, `I`, `F`, `T`) must be bound to a local variable before passing to nested expressions:
  ```aic
  // CORRECT:
  [! sz [Z handle]]
  [! buf [R handle sz]]

  // PROHIBITED (violates stack-frame alignment across arbitrary tree depths):
  [! buf [R handle [Z handle]]]
  ```

### 5.1 Runtime Intrinsic Operations Table

| Opcode | Parameters | Return Type | C Runtime / Syscall Equivalent | Description |
| :--- | :--- | :--- | :--- | :--- |
| `H` | `size: int` | `STR` | `calloc(1, size + 1)` | Allocate zero-initialized heap buffer |
| `F` | `ptr: str` | `INT` (0) | `free(ptr)` | Deallocate heap buffer |
| `I` | `prompt: str` | `STR` | SysV `sys_read(0)` / Win32 `ReadFile` | Interactive console prompt & line read |
| `T` | *(none)* | `INT` | `clock_gettime(MONOTONIC)` / `GetTickCount64` | Current millisecond timestamp |
| `L` | `s: str` | `INT` | `strlen(s)` | String length (bytes up to null terminator) |
| `N` | `n: int` | `STR` | `sprintf("%ld")` | Format signed 64-bit integer to decimal string |
| `V` | `s: str` | `INT` | `strtoll(s, ...)` | Parse decimal string to signed 64-bit integer |
| `A` | `idx: int` | `STR` | `argv[idx]` | Access command-line argument string |
| `O` | `path: str, mode: str` | `INT` | `fopen(path, mode)` | Open file stream (handle) |
| `Z` | `handle: int` | `INT` | `fseek(SEEK_END)` + `ftell` | Query file size in bytes |
| `R` | `handle: int, len: int` | `STR` | `fread(buf, 1, len, handle)` | Read `len` bytes from file into new buffer |
| `K` | `handle: int, buf: str, len: int` | `INT` | `fwrite(buf, 1, len, handle)` | Write `len` bytes from buffer to file |
| `X` | `handle: int` | `INT` | `fclose(handle)` | Close file stream |

---

## 6. Standard Library Reference (`lib/`)

AIC includes a high-performance standard library implemented in 100% pure AIC:

### 6.1 `lib/math.aic`
```aic
[import "lib/math.aic"]
```
- `[math_abs n] -> int`: Absolute value.
- `[math_min a b] -> int`: Minimum of two numbers.
- `[math_max a b] -> int`: Maximum of two numbers.
- `[math_clamp x lo hi] -> int`: Clamps `x` within `[lo, hi]`.
- `[math_pow base exp] -> int`: $O(\log n)$ integer exponentiation.
- `[math_gcd a b] -> int`: Greatest Common Divisor (Euclidean algorithm).
- `[math_lcm a b] -> int`: Least Common Multiple.
- `[math_sqrt n] -> int`: Integer square root (Newton-Raphson method).

### 6.2 `lib/string.aic`
```aic
[import "lib/string.aic"]
```
- `[str_len s] -> int`: String length (calls `strlen`).
- `[str_char_at s i] -> int`: Returns ASCII byte at index `i`.
- `[str_eq s1 s2] -> int`: Returns 1 if strings are byte-for-byte identical, 0 otherwise.
- `[str_cmp s1 s2] -> int`: Lexicographical comparison (<0, 0, >0).
- `[str_cat s1 s2] -> str`: Concatenates two strings into a newly allocated buffer.
- `[str_find s ch] -> int`: Finds first occurrence of ASCII byte `ch` (-1 if not found).
- `[str_starts_with s prefix] -> int`: Returns 1 if `s` begins with `prefix`.
- `[str_ends_with s suffix] -> int`: Returns 1 if `s` ends with `suffix`.
- `[str_from_int n] -> str`: Converts integer to decimal string representation.
- `[str_to_int s] -> int`: Parses string to signed integer (base 10).
- `[str_quote] -> str`: Returns a 1-byte string containing ASCII 34 (`"`).

### 6.3 `lib/vec.aic`
```aic
[import "lib/vec.aic"]
```
Dynamic growable vector backed by an S-record `[:: Vec data len cap]`:
- `[vec_new initial_cap] -> Vec`: Creates new dynamic vector.
- `[vec_len v] -> int`: Current element count.
- `[vec_cap v] -> int`: Total allocated capacity.
- `[vec_get v idx] -> int`: Retrieves 64-bit integer at `idx`.
- `[vec_set v idx item] -> int`: Sets 64-bit integer at `idx`.
- `[vec_push v item] -> int`: Pushes integer with geometric capacity doubling.
- `[vec_pop v] -> int`: Pops and returns last integer.
- `[vec_get_ptr v idx] -> str`: Retrieves pointer at `idx`.
- `[vec_set_ptr v idx item] -> int`: Sets pointer at `idx`.
- `[vec_push_ptr v item] -> int`: Pushes pointer with geometric capacity doubling.
- `[vec_pop_ptr v] -> str`: Pops and returns last pointer.

### 6.4 `lib/map.aic`
```aic
[import "lib/map.aic"]
```
Hash Map (String $\to$ Word/Pointer) using 64-bit djb2 hash and power-of-2 open addressing:
- `[map_new initial_cap] -> Map`: Creates new hash map.
- `[map_len m] -> int`: Entry count.
- `[map_set m key val] -> int`: Inserts or updates integer value for `key` (auto-rehashes at 50% load).
- `[map_get m key] -> int`: Retrieves integer value for `key`.
- `[map_set_ptr m key val] -> int`: Inserts or updates pointer value for `key`.
- `[map_get_ptr m key] -> str`: Retrieves pointer value for `key`.
- `[map_contains m key] -> int`: Returns 1 if `key` exists, 0 otherwise.
- `[map_keys m] -> Vec`: Returns a vector of all string keys.
- `[map_values m] -> Vec`: Returns a vector of all values.

### 6.5 `lib/json.aic`
```aic
[import "lib/json.aic"]
```
Fast recursive-descent JSON parser and serializer in pure AIC:
- **Value Types (`JsonVal:tag`)**:
  - `0`: `JSON_NULL`
  - `1`: `JSON_BOOL`
  - `2`: `JSON_INT`
  - `3`: `JSON_STR`
  - `4`: `JSON_ARR`
  - `5`: `JSON_OBJ`
- **Constructors**:
  - `[json_null] -> JsonVal`
  - `[json_bool b] -> JsonVal`
  - `[json_int n] -> JsonVal`
  - `[json_str s] -> JsonVal`
  - `[json_arr] -> JsonVal`
  - `[json_obj] -> JsonVal`
- **Parser & Serializer**:
  - `[json_parse json_str] -> JsonVal`: Parses JSON string into AST.
  - `[json_stringify val] -> str`: Serializes `JsonVal` into compact JSON string.
- **Accessors**:
  - `[json_tag v] -> int`
  - `[json_get_int v] -> int`
  - `[json_get_str v] -> str`
  - `[json_arr_push arr val] -> int`
  - `[json_arr_get arr idx] -> JsonVal`
  - `[json_arr_len arr] -> int`
  - `[json_obj_set obj key val] -> int`
  - `[json_obj_get obj key] -> JsonVal`
  - `[json_obj_contains obj key] -> int`

### 6.6 `lib/arena.aic`
```aic
[import "lib/arena.aic"]
```
Linear memory arena allocator for high-performance memory pooling:
- `[arena_new cap] -> Arena`: Creates arena with specified byte capacity.
- `[arena_buffer a] -> str`: Returns underlying heap buffer.
- `[arena_offset a] -> int`: Returns current allocation offset.
- `[arena_cap a] -> int`: Returns total capacity.
- `[arena_alloc a bytes] -> int`: Allocates 8-byte aligned chunk, returns byte offset (-1 if full).
- `[arena_alloc_words a count] -> int`: Allocates `count` words, returns word index (-1 if full).
- `[arena_reset a] -> int`: Resets offset to 0 for instant bulk reclamation.
- `[arena_used a] -> int`: Returns allocated byte count.
- `[arena_remaining a] -> int`: Returns remaining byte capacity.

### 6.7 `lib/io.aic`
```aic
[import "lib/io.aic"]
```
Safe file system and interactive I/O operations:
- `[io_read_line prompt] -> str`: Prints prompt to console and reads a line from stdin into a heap string buffer.
- `[io_read_file path] -> str`: Reads entire file into a heap string buffer.
- `[io_write_file path content] -> int`: Writes string to file, returns 1 on success.
- `[io_append_file path content] -> int`: Appends string to file.
- `[io_file_size path] -> int`: Returns file size in bytes (-1 if not found).
- `[io_file_exists path] -> int`: Returns 1 if file exists and can be opened, 0 otherwise.

### 6.8 `lib/test.aic`
```aic
[import "lib/test.aic"]
```
Unit testing framework for autonomous test evaluation:
- `[test_runner_init] -> TestStats`: Initializes test runner.
- `[test_assert_eq runner actual expected msg] -> int`: Asserts integer equality.
- `[test_assert_str_eq runner actual expected msg] -> int`: Asserts string equality.
- `[test_assert_true runner cond msg] -> int`: Asserts condition is non-zero.
- `[test_summary runner] -> int`: Prints test summary and returns 0 if all passed, 1 if any failed.

---

## 7. Direct Machine Code Emitters

AIC contains no GCC, Clang, or GNU binutils runtime requirements. Executable binaries are produced directly from assembly:
- **Windows PE32+ (`tools/aic_pe_emitter.py`)**:
  Emits valid portable executables (`.exe`) with DOS stub, PE32+ headers, `.text`, `.rdata`, `.data`, `.pdata`, and IAT import tables bound to `msvcrt.dll` or `ucrtbase.dll`.
- **Linux ELF64 (x86-64) (`tools/aic_elf_emitter.py`)**:
  Emits static Linux ELF64 binaries (`.elf`) with `_start` entry, `PT_LOAD` segments, and built-in Linux x86-64 syscall implementations (`sys_write`, `sys_read`, `sys_open`, `sys_brk`, `sys_mmap`, `sys_exit`).
- **Linux ARM64 / AArch64 (`tools/aic_arm64_emitter.py`)**:
  Emits static AArch64 ELF64 executables (`.elf`) and shared objects (`.so`) with raw `svc #0` syscalls (openat/lseek/read/write/mmap/exit/clock_gettime) — no libc, no PLT/GOT. The embedded assembler encodes the instruction subset the ARM64 backend emits; every expression-stack push/pop moves SP by 16 bytes so dereferenced SP stays 16-byte aligned on real silicon.
- **macOS Apple Silicon (`tools/aic_macho_emitter.py`)**:
  Emits `MH_EXECUTE` / `MH_DYLIB` ARM64 Mach-O images with 0x4000 (16 KiB) page alignment, `LC_LOAD_DYLINKER` + `LC_LOAD_DYLIB` bound through an `LC_DYLD_INFO_ONLY` bind stream into `__DATA` GOT slots, an `LC_DYLD_EXPORTS_TRIE` for underscore-prefixed symbols, and a pure-Python SHA-256 ad-hoc code signature (`CS_SuperBlob` / `CS_CodeDirectory`). No Xcode, `clang`, `ld64`, or `codesign`.

---

## 8. AI Model Training & Prompting Guidelines

When training foundation models or prompting an LLM to write AIC code, use the following canonical guidelines:

### 8.1 System Prompt Recommendation
```text
You are an expert compiler and systems engineer writing AIC (AI Compiler) code.
AIC uses strictly bracketed S-expression prefix syntax: [op arg1 arg2 ...].
Rules to follow:
1. Always wrap expressions in square brackets. No infix operators are allowed.
2. Define functions using [: name [params] [D body...]] or [: [$ name] [params] [D body...]] for string/pointer return.
3. Every function body must be wrapped in a [D ...] block.
4. Bind libc operations (H, O, Z, R, K, X, N, V) to local variables with [! var [op ...]] before passing to nested expressions.
5. S-records are defined with [:: RecordName field1 field2 ...] and constructed with [RecordName val1 val2 ...].
6. Use lib/math.aic, lib/string.aic, lib/vec.aic, lib/map.aic, lib/json.aic, lib/arena.aic, lib/io.aic for standard functionality.
7. PRINT RULE: `[. a b c]` prints a space between intermediate arguments and a newline after the last one. Never append a trailing "\n" and never add manual spaces. To print a bare number, write `[. [N value]]` (or `[. value]`).
8. Do NOT invent builtins: there is no `mod`, `sqrt`, `//`, `abs`, `pow`, `len`, or `print`. For modulo use the real `%` operator, `[% a b]`. Use `lib/math.aic` for `math_sqrt`/`math_abs`/`math_pow` and `[L s]` for string length.
```

### 8.2 Few-Shot Examples

#### Example 1: Recursive Fibonacci
```aic
[: fib [n] [D
  [? [<= n 1]
    [^ n]
    [^ [+ [fib [- n 1]] [fib [- n 2]]]]]
]]

[! res [fib 10]]
[. "Fib(10) =" res]
```

#### Example 2: In-Place Bubble Sort on Word Buffer
```aic
[: bubble_sort [[$ buf] len] [D
  [! i 0]
  [W [< i len] [D
    [! j 0]
    [! limit [- [- len i] 1]]
    [W [< j limit] [D
      [! a [@@ buf j]]
      [! b [@@ buf [+ j 1]]]
      [? [> a b] [D
        [@@! buf j b]
        [@@! buf [+ j 1] a]
      ] [D]]
      [! j [+ j 1]]
    ]]
    [! i [+ i 1]]
  ]]
  [^ 0]
]]
```

#### Example 3: JSON Tool-Call Processing
```aic
[import "lib/json.aic"]

[: process_agent_payload [[$ raw_json]] [D
  [! root [json_parse raw_json]]
  [? [== [json_tag root] 5] [D
    [? [json_obj_contains root "action"] [D
      [! action_val [json_obj_get root "action"]]
      [! action_str [json_get_str action_val]]
      [. "Executing action:" action_str]
    ] [D]]
  ] [D]]
  [^ 0]
]]
```

---

## 9. Verification & Quality Assurance

The compiler verifies bitwise mathematical closure via `verify_bootstrap.py`:
- 18-stage verification passes in under 3 seconds.
- 0-diff identity proven across all bootstrap compiler generations:
  $$\text{compiler\_gen0.s} \equiv \text{compiler\_gen1.s} \equiv \text{compiler\_gen2.s} \equiv \text{compiler\_gen\_pe.s} \quad (725,689\text{ bytes})$$
- Standard library (`math`, `string`, `vec`, `map`), JSON parser/serializer, linear memory arena, safe file I/O, and user programs tested and verified natively on Windows PE32+, Linux ELF64 (x86-64), Linux ARM64 ELF64, and macOS Apple Silicon Mach-O ARM64 (ad-hoc signed, verified under `codesign -v`).

---

## 10. Performance & Execution Speed Profile

AIC compiles directly to native machine code without virtual machine interpreters, bytecode translation layers, or garbage collection pauses.

### Empirical Benchmarks (Windows x86-64)

| Benchmark Task | Workload Profile | AIC (Native) | C (GCC -O2) | Node.js (V8) | Python 3.11 | Relative Performance |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Recursive Fibonacci (`fib 38`)** | Deep recursion & call-stack allocation (63M frames) | **0.2604s** | 0.0561s | 0.3443s | 7.0581s | **27.1x faster than Python**, **1.32x faster than V8** |
| **Collatz Steps (500k runs)** | Tight while-loops, integer arithmetic, bitwise shifts | **0.2971s** | 0.0745s | 0.2429s | 3.3533s | **11.3x faster than Python**, comparable to V8 |
| **Sieve of Eratosthenes (10M)** | Byte memory throughput (`@`/`@!`), stride indexing | **0.0969s** | 0.0465s | 0.1119s | 1.8315s | **18.9x faster than Python**, **2.08x of GCC -O2** |
| **Bubble Sort (5,000 words)** | Quadword heap stores (`@@`/`@@!`), 25M nested loops | **0.0460s** | 0.0155s | 0.0672s | 1.3476s | **29.3x faster than Python**, **1.46x faster than V8** |

### Mechanical Advantages
- **Microscopic Binary Size**: Standalone PE32+ executables are ~8.7 KB with 0 external DLL dependencies beyond standard runtime imports.
- **Zero-Latency Startup**: No runtime environment, JIT warmup phase, or interpreter initialization overhead.
- **Direct Register Mapping**: Memory operations (`@`, `@!`, `@@`, `@@!`) compile directly into single `movb`/`movq` instructions with indexed displacement addressing modes (`(%rdi, %rcx, 1)` or `(%rdi, %rcx, 8)`).

---

## 11. Milestone Status

| Milestone | Status | Artifacts / Proof |
| :--- | :--- | :--- |
| **M1 — C-ABI Interoperability Bridge** | **COMPLETE (2026-09-22)** | `--format shared --header` emits self-contained `.so` (ELF `ET_DYN`, raw-syscall runtime, zero undefined symbols, `.init_array` arena ctor, SysV `.dynsym`/`.hash`) and `.dll` (PE32+, `Characteristics=0x2022`, export directory) plus a `.h` sidecar. Emitters: `tools/aic_elf_emitter.py::build_shared_elf`, `tools/aic_pe_emitter.py::build_standalone_dll`, `tools/generate_header.py`. E2E validation: `tests/test_c_interop.py` (ctypes on x86-64 hosts; per-export dlopen/dlsym/call harness under the cross dynamic loader on other hosts). |
| **M2 — Linear Scan Register Allocation (`-O1`)** | **COMPLETE (2026-11-24)** | `aic_codegen.py`: live-interval analysis + greedy callee-saved allocation (`%r12`–`%r15`, `%rbx` reserved as expression scratch to preserve the `compiler.aic` fixed point). Fixed callee-save/stack-slot collision by shifting slots below `reg_area`. `aic.py build -O1` / `aic.py run -O1`. `tests/test_optimizations.aic` spill case (8 live locals, 4 regs + 4 spills). Benchmarks: `benchmarks/speed/run_speed_benchmarks.py` (-O0/-O1/C/Python). AIC is still ~2.4–5.5× of GCC `-O2`; the residual is the expression `push`/`pop` operand stack, not variable round-trips. |
| **M3 — Agent Zero (autonomous systems loop)** | **COMPLETE (2026-11-24)** | `agent/` package: `client.py` (stdlib-only OpenAI-compatible client), `prompts.py` (knowledge-parity system/reflection prompts derived from `prompt_parity.md` + `findings.md`), `sandbox.py` (import dedupe, ms telemetry, typed `[ERR :code …]` feedback, 2s run timeout), `loop.py` (≤5 iterations, bounded context, exports `.so`/`.dll` + `.h` + ctypes example). CLI: `python aic.py agent "<task>" -o <prefix> [--opt] [--max-iters N]`. Deterministic test: `tests/test_agent_zero.py` (broken attempt 1 → PARSE feedback → valid attempt 2 → verified library).  Measured on the 30-task `model_bench` set with the parity prompt: **63.3% (19/30)** pass@1 over a 5-iteration loop, avg 3.43 iterations (vs 0.33% stock single-shot and 40.0% parity single-shot). Script: `benchmarks/model_bench/eval_agent_zero.py`. |
| **M4a — Native Linux ARM64 (AArch64) backend** | **COMPLETE (2026-11-25)** | `aic_codegen_arm64.py` (AAPCS64 codegen, 16-byte SP discipline everywhere, x19–x28 locals with stack spill), `tools/aic_arm64_emitter.py` (pure-Python AArch64 assembler + ELF64/`.so` packer, `e_machine=183`, `.dynsym`/SysV `.hash`/`.init_array` with `R_AARCH64_RELATIVE`), `tools/arm64_runtime.py` (raw `svc #0` syscall runtime). `aic.py build|run --arch arm64`. Encoder cross-checked 56/56 forms against `aarch64-linux-gnu-as`. `tests/test_arm64.py` runs 7 native programs plus a `ctypes.CDLL` `.so` (`fib(10)=55`, `add_numbers(2,40)=42`); all ARM64 outputs are byte-identical to their x86-64 counterparts. |
| **M4b — Native macOS Apple Silicon (Mach-O ARM64)** | **COMPLETE (2026-11-25)** | `tools/aic_macho_emitter.py` (`MH_EXECUTE`/`MH_DYLIB`, 0x4000 page alignment, `__PAGEZERO`, `LC_LOAD_DYLINKER`, `LC_LOAD_DYLIB`, `LC_MAIN`, `LC_DYLD_INFO_ONLY` bind stream, `LC_DYLD_EXPORTS_TRIE`, SHA-256 `CS_SuperBlob` ad-hoc signer) and `tools/macos_runtime.py` (Darwin libSystem bridge, x18 untouched). `aic.py --target macho` for build and run. `tests/test_macos_arm64.py` validates headers/segments/trie/signature on any host and runs natively on Darwin/arm64: `codesign -v` passes and `ctypes.CDLL` resolves `_fib`/`_add_numbers`. Verified on a `macos-15` Apple Silicon runner. |
