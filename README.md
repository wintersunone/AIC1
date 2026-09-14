# AIC (AI Compiler / AI C)

> **A self-hosting, zero-dependency systems programming language engineered for Artificial Intelligence models to train on, reason with, and generate native machine code.**

[![Bootstrap Verification](https://img.shields.io/badge/Bootstrap-18%2F18%20Stages%20Passing-brightgreen)]()
[![Self-Hosting Closure](https://img.shields.io/badge/Closure-Bitwise%200--Diff-blue)]()
[![AIC-Bench Score](https://img.shields.io/badge/AIC--Bench-100%25%20pass%401-success)]()
[![Platform Targets](https://img.shields.io/badge/Targets-Windows%20PE%20%7C%20Linux%20ELF-orange)]()
[![Toolchain Dependencies](https://img.shields.io/badge/Toolchain-0%20External%20Dependencies-red)]()

---

## Overview

Traditional languages (C, C++, Rust, Python) were optimized for human visual aesthetics, introducing operator precedence ambiguities (`*p++`, `x & y == z`), dangling elses, significant whitespace errors, and multi-byte BPE token fragmentation that cause persistent failure modes in Large Language Models (LLMs).

**AIC** eliminates these failure modes by design:
- **100% Unambiguous S-Expression Prefix Syntax**: Every expression is explicitly delimited by square brackets `[op arg1 arg2 ...]`. Precedence is purely structural and explicit.
- **Single-BPE Token Alignment**: Delimiters and operators align cleanly across modern Byte-Pair Encoding (BPE) vocabularies.
- **Zero External Toolchain Dependencies**: Direct machine code generation from assembly into standalone Windows PE32+ (`.exe`) and Linux ELF64 (`.elf`) executables without requiring GCC, Clang, GNU binutils, or glibc.
- **Bitwise Fixed-Point Self-Hosting Closure**: The self-hosted compiler (`compiler.aic`) compiling itself produces bitwise identical machine code across all generations:
  $$\text{Gen0.s} \equiv \text{Gen1.s} \equiv \text{Gen2.s} \equiv \text{GenPE.s} \quad (717,042\text{ bytes})$$

---

## Quickstart

### Prerequisites
Python 3.8+ (for host orchestration CLI and direct emitters). No GCC, LLVM, or build tools required.

### 1. Execute an AIC Program
```bash
python aic.py run code.aic
```

### 2. Compile to Standalone Native Binaries (Zero Dependencies)
```bash
# Windows PE32+ executable
python aic.py build code.aic --target pe -o app.exe
./app.exe

# Linux ELF64 static executable (cross-compiles on Windows or Linux)
python aic.py build code.aic --target elf -o app.elf
```

### 3. Run Standard Library Integration Tests
```bash
python aic.py test
```

### 4. Run the 18-Stage Self-Hosting Bootstrap Verification
```bash
python aic.py verify
```

---

## Core Language Syntax

### Hello World & Formatting
```aic
[! msg "Hello, AI Compiler!"]
[. msg "\n"]
```

### Functions and Recursion
Functions are declared with `[: name [params] [D body...]]` (or `[: [$ name] ...]` for string/pointer return):
```aic
[: fib [n] [D
  [? [<= n 1]
    [^ n]
    [^ [+ [fib [- n 1]] [fib [- n 2]]]]]
]]

[! res [fib 10]]
[. "Fib(10) =" res "\n"]
```

### Zero-Cost S-Records (`::`)
```aic
[:: Point x y]

// Constructor
[! p [Point 10 20]]

// Field Getters and Setters
[! px [@@.Point:x p]]
[! py [@@.Point:y p]]
[@@!.Point:x p 42]

// Bulk Setter (contiguous quadword store)
[@@!.Point p 100 200]
```

### Hardware-Accelerated Bounded Loops (`@>`)
```aic
// Loop i from 0 up to 10
[@> 10 [i] [D
  [. "Step:" i "\n"]
]]
```

---

## Standard Library (`lib/`)

AIC features a high-performance standard library written in 100% pure AIC:

| Module | Features |
| :--- | :--- |
| [`lib/math.aic`](lib/math.aic) | `math_abs`, `math_min`, `math_max`, `math_clamp`, $O(\log n)$ `math_pow`, `math_gcd`, `math_lcm`, `math_sqrt` |
| [`lib/string.aic`](lib/string.aic) | `str_len`, `str_char_at`, `str_eq`, `str_cmp`, `str_cat`, `str_find`, `str_starts_with`, `str_ends_with`, `str_quote` |
| [`lib/vec.aic`](lib/vec.aic) | Dynamic array (`Vec`) with geometric capacity doubling, bounds checking, and integer/pointer slots |
| [`lib/map.aic`](lib/map.aic) | String-to-word hash map (`Map`) with 64-bit djb2 hash, power-of-2 linear probing, 50% load rehash |
| [`lib/json.aic`](lib/json.aic) | Fast recursive-descent JSON parser (`json_parse`) and serializer (`json_stringify`) |
| [`lib/arena.aic`](lib/arena.aic) | Linear bump memory allocator (`Arena`) for $O(1)$ allocation and instant zero-cost bulk reset |
| [`lib/io.aic`](lib/io.aic) | Safe file operations (`io_read_file`, `io_write_file`, `io_append_file`, `io_file_size`, `io_file_exists`) |
| [`lib/test.aic`](lib/test.aic) | Autonomous unit test evaluation framework (`test_assert_eq`, `test_assert_str_eq`, `test_summary`) |

### Example: JSON Tool-Calling in Pure AIC
```aic
[import "lib/json.aic"]

[! payload [json_obj]]
[json_obj_set payload "action" [json_str "benchmark"]]
[json_obj_set payload "trials" [json_int 100]]

[! json_str_data [json_stringify payload]]
[! parsed [json_parse json_str_data]]

[! action_val [json_obj_get parsed "action"]]
[. "Action: " [json_get_str action_val] "\n"]
```

---

## AI Training Corpus & AIC-Bench

### 1. Verified Training Corpus (`corpus/`)
AIC includes a synthetic generation pipeline ([`tools/generate_dataset.py`](tools/generate_dataset.py)) that produces natively verified programs:
- **`corpus/aic_instruct_dataset.jsonl`**: Instruction-tuning pairs formatted with Chain-of-Thought reasoning.
- **`corpus/aic_pretrain_stream.jsonl`**: Document stream for pretraining and fine-tuning foundation models.
- **`corpus/tasks/*.aic`**: Individual multi-domain source programs verified with 100% native test pass rates.

### 2. AIC-Bench (`benchmarks/`)
A standardized evaluation suite modeled on HumanEval to benchmark LLMs on AIC code generation:
```bash
# Evaluate ground-truth canonical solutions:
python benchmarks/eval_harness.py --canonical

# Evaluate an LLM's predictions:
python benchmarks/eval_harness.py --predictions model_output.jsonl
```
**Current Canonical Score: 20/20 Passed (100.0% pass@1)**.

---

## Standalone Compiler Binaries

AIC compiles directly to native binaries on both major operating systems:
- **`aic.exe`** (Windows PE32+, 124 KB): Compiles `.aic` sources directly to x86-64 assembly on Windows.
- **`aic.elf`** (Linux ELF64, 118 KB): Compiles `.aic` sources directly on Linux with 0 external dependencies (ideal for Docker and cloud sandboxes).

---

## 18-Stage Bootstrap Verification

The verification pipeline ([`verify_bootstrap.py`](verify_bootstrap.py)) guarantees bitwise mathematical closure:
1. Stage 1: Python host compiles `compiler.aic` $\to$ `compiler_gen0.s`.
2. Stage 2: Link `compiler_gen0.exe`.
3. Stage 3: `compiler_gen0.exe` compiles `compiler.aic` $\to$ `compiler_gen1.s` (**0-diff verified**).
4. Stage 4: Link `compiler_gen1.exe`.
5. Stage 5: `compiler_gen1.exe` compiles `compiler.aic` $\to$ `compiler_gen2.s` (**0-diff fixed-point verified**).
6. Stage 6: Package standalone native compiler `aic.exe` via direct PE emitter.
7. Stage 7–9: Verify native program execution and stack spilling for $>6$ parameters.
8. Stage 10–12: Verify S-records and hardware bounded loops (`@>`).
9. Stage 13: Direct PE `aic.exe` compiles `compiler.aic` $\to$ `compiler_gen_pe.s` (**0-diff verified**).
10. Stage 14: Verify standalone Linux ELF64 binary generation with direct ELF emitter.
11. Stage 15: Verify Standard Library (`math`, `string`, `vec`, `map`) with modular cyclic imports.
12. Stage 16: Verify pure-AIC JSON parser and serializer (20/20 tests passed).
13. Stage 17: Verify linear Memory Arena and safe File I/O (14/14 tests passed).
14. Stage 18: Verify standalone Linux compiler binary `aic.elf` direct packaging and header validation.

---

## Reference & Specification
For the formal grammar, token-level invariants, memory model, calling conventions, and few-shot fine-tuning prompts, consult the [AIC Language Specification](AIC_SPECIFICATION.md).
