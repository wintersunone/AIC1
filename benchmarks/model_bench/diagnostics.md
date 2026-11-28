# AIC Model-Bench Diagnostics

Generated from `results_aic_newprompt_stderr.jsonl` (180 failing AIC
candidates from the 900-sample run on `qwen3.8-27b-sglang`) and
`token_counts.json` (tiktoken measurement over the 30 canonical tasks).

## 1. Where the failures come from

The 300 AIC samples in `results_aic_newprompt.jsonl` split into:
120 passing / 180 failing. Recompiling all 180 stored candidates through the
host codegen gives the true diagnostic for each.

| Error category | Count | Meaning |
| :--- | ---: | :--- |
| `CODEGEN` | 111 | compiler rejected the program |
| `none` | 23 | compiled and ran, but printed the wrong bytes |
| `RUNTIME` | 22 | compiled, then faulted or exited non-zero |
| `SEMANTIC` | 13 | compiled and ran, output diverged |
| `PARSE` | 11 | unbalanced brackets / malformed source |

## 2. Top causes (compiler diagnostics, deduplicated)

| Count | Cause | Fix now emitted by the compiler |
| ---: | :--- | :--- |
| 16 | `str_cat` called without an import | `'str_cat' is from lib/string.aic - add [import "lib/string.aic"] first` |
| 12 | `map_new` called without an import | `'map_new' is from lib/map.aic - add [import "lib/map.aic"] first` |
| 10 | `N` (number → string) nested inside another libc call | `... assign the result to a variable first, e.g. [! h [O path "r"]]` |
| 6 | `mod` invented | `'mod' does not exist. Use the '%' operator, e.g. [% a b]` |
| 6 | `H` (allocation) called with 2 args | `'H' takes 1 argument(s), got 2` |
| 5 | `arena_new` without an import | `'arena_new' is from lib/arena.aic - add [import "lib/arena.aic"] first` |
| 5 | `R` (file read) wrong arity | `'R' takes 2 argument(s), got 0` |
| 5 | `include` invented | `op 'include' ... no native codegen yet` |
| 4 | unclosed `[` | `Unclosed '[' opened at line N - missing ']'` |
| 4 | `S` invented | unknown operator |

**18 of the 180 failures produced no compiler error at all** — they compiled
cleanly and printed the wrong bytes. Those are the ones a compiler hint cannot
fix; they need reflection-loop feedback (Agent Zero) rather than diagnostics.

## 3. What the pattern means

The dominant failure mode is **not** invented syntax. It is **calling real
library functions without importing their module** (33 of the top 40 hits).
That is a knowledge gap, not a language flaw — which is exactly why prompt
parity (listing the real lib names) moved pass@1 from 0.33% to 40.0%,
while invented operators like `mod` remain a minority.

## 4. Token cost (tiktoken, 30 canonical tasks)

| Tier | AIC | C | Python | AIC/C | AIC/Py |
| :--- | ---: | ---: | ---: | ---: | ---: |
| 1 | 87.1 | 54.9 | 29.5 | 1.59x | 2.95x |
| 2 | 106.1 | 50.0 | 20.8 | 2.12x | 5.11x |
| 3 | 148.0 | 46.2 | 38.2 | 3.20x | 3.87x |
| 4 | 47.3 | 45.5 | 14.3 | 1.04x | 3.30x |
| **All 30** | **100.5** | **49.4** | **26.5** | **2.03x** | **3.80x** |
| median | 79.5 | 46.5 | 20.5 | — | — |

`o200k_base` gives 101.1 / 49.7 / 26.5 — the same ratios. AIC uses fewer tokens
than C on only 4 of 30 tasks and never fewer than Python. The language's win is
**predictability**, not token economy.

## 5. Reproduce

```bash
pip install tiktoken
python3 benchmarks/model_bench/backfill_compiler_stderr.py
python3 benchmarks/model_bench/measure_tokens.py
```
