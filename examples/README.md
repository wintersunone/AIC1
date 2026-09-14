# AIC Example Suite

This directory contains standalone, annotated reference programs demonstrating the features and paradigms of the AIC systems programming language.

Every example can be executed immediately with the unified toolchain:
```bash
python aic.py run examples/<filename>.aic
```
Or compiled into a standalone, zero-dependency native binary:
```bash
# Windows PE32+ (.exe)
python aic.py build examples/<filename>.aic --target pe -o app.exe

# Linux ELF64 (.elf)
python aic.py build examples/<filename>.aic --target elf -o app.elf
```

---

## Catalog of Examples

| File | Highlights & Concepts |
| :--- | :--- |
| [`01_basics.aic`](01_basics.aic) | Variables (`!`), arithmetic operators (`+`, `-`, `*`, `/`, `%`), bitwise logic (`&`, `\|`, `^^`, `<<`), and printing (`.`). |
| [`02_algorithms.aic`](02_algorithms.aic) | Recursive function declarations (`:` / `§`), control flow (`?`, `W`), bounded hardware loops (`@>`), and the Collatz conjecture. |
| [`03_records.aic`](03_records.aic) | Zero-cost S-records (`::`), automatic constructors, field getters (`@@.Record:field`), field setters (`@@!.Record:field`), and bulk stores (`@@!.Record`). |
| [`04_json_toolcall.aic`](04_json_toolcall.aic) | Pure-AIC JSON parser & serializer (`lib/json.aic`), building structured AI tool-call payloads, and parsing dynamic responses. |
| [`05_system_arena.aic`](05_system_arena.aic) | Linear bump memory allocator (`lib/arena.aic`), $O(1)$ bulk resets, and safe file I/O operations (`lib/io.aic`). |
| [`06_min_heap.aic`](06_min_heap.aic) | Bare-metal Binary Min-Heap Priority Queue & HeapSort with raw 64-bit word operations (`@@`, `@@!`). |
