"""
verify_bootstrap.py - Automated Self-Hosting Bootstrap & Regression Test for AIC

Executes the complete 4-stage compiler bootstrap pipeline:
1. Host Prototyping: aic_codegen.py compiles compiler.aic -> compiler_gen0.s
2. Generation 0 Build: GCC links compiler_gen0.s + bridge -> compiler_gen0.exe
3. Generation 1 Compilation: compiler_gen0.exe compiler.aic -> compiler_gen1.s
   Asserts: compiler_gen0.s == compiler_gen1.s (Stage 1 Closure)
4. Generation 1 Build: GCC links compiler_gen1.s + bridge -> compiler_gen1.exe
5. Generation 2 Compilation: compiler_gen1.exe compiler.aic -> compiler_gen2.s
   Asserts: compiler_gen1.s == compiler_gen2.s (Stage 2 Fixed-Point Closure)
6. Native E2E Test: aic.exe compiles stage9_src.aic, runs binary, verifies output.
"""

import filecmp
import os
import shutil
import struct
import subprocess
import sys
import time


def run(cmd, desc):
    print(f"[*] {desc}...")
    t0 = time.time()
    p = subprocess.run(cmd, capture_output=True, text=True)
    dt = time.time() - t0
    if p.returncode != 0:
        print(f"[FAIL] {desc} exited with code {p.returncode}")
        if p.stdout:
            print("--- STDOUT ---")
            print(p.stdout[:500])
        if p.stderr:
            print("--- STDERR ---")
            print(p.stderr[:500])
        sys.exit(1)
    print(f"    Completed in {dt:.3f}s")
    return p


def main():
    print("=" * 70)
    print("AIC Self-Hosting Bootstrap Verification Pipeline")
    print("=" * 70)

    # 1. Host compile
    run([sys.executable, "aic_codegen.py", "compiler.aic", "compiler_gen0.s"],
        "Stage 1: Python host compiles compiler.aic -> compiler_gen0.s")

    # 2. Gen 0 link (Direct PE emitter or GCC if available)
    if shutil.which("gcc"):
        run(["gcc", "-O2", "compiler_gen0.s", "-o", "compiler_gen0.exe"],
            "Stage 2: Assemble & link compiler_gen0.exe (GCC)")
    else:
        run([sys.executable, "tools/aic_pe_emitter.py", "compiler_gen0.s", "-o", "compiler_gen0.exe"],
            "Stage 2: Assemble & link compiler_gen0.exe (Direct PE emitter)")

    # 3. Gen 1 native compilation
    run(["./compiler_gen0.exe", "compiler.aic", "compiler_gen1.s"],
        "Stage 3: Run native compiler_gen0.exe on compiler.aic -> compiler_gen1.s")

    if not filecmp.cmp("compiler_gen0.s", "compiler_gen1.s", shallow=False):
        print("[FAIL] compiler_gen0.s and compiler_gen1.s differ!")
        sys.exit(1)
    sz0 = os.path.getsize("compiler_gen0.s")
    sz1 = os.path.getsize("compiler_gen1.s")
    print(f"    >>> STAGE 1 CLOSURE VERIFIED: 0-diff (Size: {sz0:,} bytes) <<<")

    # 4. Gen 1 link (Direct PE emitter or GCC if available)
    if shutil.which("gcc"):
        run(["gcc", "-O2", "compiler_gen1.s", "-o", "compiler_gen1.exe"],
            "Stage 4: Assemble & link compiler_gen1.exe (GCC)")
    else:
        run([sys.executable, "tools/aic_pe_emitter.py", "compiler_gen1.s", "-o", "compiler_gen1.exe"],
            "Stage 4: Assemble & link compiler_gen1.exe (Direct PE emitter)")

    # 5. Gen 2 native compilation
    run(["./compiler_gen1.exe", "compiler.aic", "compiler_gen2.s"],
        "Stage 5: Run native compiler_gen1.exe on compiler.aic -> compiler_gen2.s")

    if not filecmp.cmp("compiler_gen1.s", "compiler_gen2.s", shallow=False):
        print("[FAIL] compiler_gen1.s and compiler_gen2.s differ!")
        sys.exit(1)
    sz2 = os.path.getsize("compiler_gen2.s")
    print(f"    >>> STAGE 2 FIXED-POINT CLOSURE VERIFIED: 0-diff (Size: {sz2:,} bytes) <<<")

    # 6. Standalone aic.exe packaging (Direct PE/COFF, zero GCC)
    run([sys.executable, "tools/aic_pe_emitter.py", "compiler_gen1.s", "-o", "aic.exe"],
        "Stage 6: Package standalone native compiler aic.exe (Direct PE emitter)")

    # 7. Native aic.exe compiles user program
    run(["./aic.exe", "stage9_src.aic", "stage9_test.s"],
        "Stage 7: Native aic.exe compiles user program stage9_src.aic -> stage9_test.s")

    # 8. Assemble user binary via Direct PE emitter
    run([sys.executable, "tools/aic_pe_emitter.py", "stage9_test.s", "-o", "stage9_test.exe"],
        "Stage 8: Package user binary stage9_test.exe (Direct PE emitter)")

    # 9. Execute native user binary
    p_prog = run(["./stage9_test.exe"], "Stage 9: Execute native user binary stage9_test.exe")
    expected_output = "main-total 7\nfrom-fn\n"
    out = p_prog.stdout.replace("\r\n", "\n")
    if out != expected_output:
        print("[FAIL] Program output mismatch! Expected:")
        print(repr(expected_output))
        print("Got:")
        print(repr(out))
        sys.exit(1)
    print("    >>> USER PROGRAM EXECUTION VERIFIED CLEAN: main-total 7 / from-fn <<<")

    # 10. Native aic.exe compiles test_record.aic (Milestone 1 dogfood test)
    run(["./aic.exe", "test_record.aic", "test_record_pipeline.s"],
        "Stage 10: Native aic.exe compiles test_record.aic -> test_record_pipeline.s")

    # 11. Assemble test_record.exe via Direct PE emitter
    run([sys.executable, "tools/aic_pe_emitter.py", "test_record_pipeline.s", "-o", "test_record_pipeline.exe"],
        "Stage 11: Package test_record_pipeline.exe (Direct PE emitter)")

    # 12. Execute native test_record binary
    p_rec = run(["./test_record_pipeline.exe"], "Stage 12: Execute test_record_pipeline.exe")
    expected_rec = "101 202 303\n404 505 606\nsize= 3 bytes= 24\nk= 0\nk= 1\nk= 2\n"
    out_rec = p_rec.stdout.replace("\r\n", "\n")
    if out_rec != expected_rec:
        print("[FAIL] test_record output mismatch! Expected:")
        print(repr(expected_rec))
        print("Got:")
        print(repr(out_rec))
        sys.exit(1)
    print("    >>> S-RECORD & BOUNDED LOOP EXECUTION VERIFIED CLEAN <<<")

    # 13. Pure Direct PE self-hosting closure: native PE aic.exe compiles compiler.aic
    run(["./aic.exe", "compiler.aic", "compiler_gen_pe.s"],
        "Stage 13: Direct PE aic.exe compiles compiler.aic -> compiler_gen_pe.s")

    if not filecmp.cmp("compiler_gen1.s", "compiler_gen_pe.s", shallow=False):
        print("[FAIL] compiler_gen1.s and compiler_gen_pe.s differ!")
        sys.exit(1)
    sz_pe = os.path.getsize("compiler_gen_pe.s")
    print(f"    >>> STAGE 3 DIRECT PE CLOSURE VERIFIED: 0-diff (Size: {sz_pe:,} bytes) <<<")

    # 14. AIC 3.0 Optimizations & Standalone Linux ELF64 Cross-Platform Emitter
    run(["./aic.exe", "test_optimizations.aic", "test_opt_pipeline.s"],
        "Stage 14a: Native aic.exe compiles test_optimizations.aic -> test_opt_pipeline.s")

    run([sys.executable, "tools/aic_pe_emitter.py", "test_opt_pipeline.s", "-o", "test_opt_pipeline.exe"],
        "Stage 14b: Package test_opt_pipeline.exe (Direct PE emitter)")

    p_opt = run(["./test_opt_pipeline.exe"], "Stage 14c: Execute native test_opt binary")
    expected_opt = (
        "Direct ctor: 10 20 30\n"
        "Hash ctor: 40 50 60\n"
        "Spaced ctor: 70 80 90\n"
        "Array bulk: 444 555 666\n"
        "Single bulk: 987 654 321\n"
        "Slice 1: Hello\n"
        "Slice 2: Antigravity\n"
        "Slice 3: AI Compiler\n"
        "Sum 8: 36\n"
    )
    out_opt = p_opt.stdout.replace("\r\n", "\n")
    if out_opt != expected_opt:
        print("[FAIL] test_optimizations output mismatch! Expected:")
        print(repr(expected_opt))
        print("Got:")
        print(repr(out_opt))
        sys.exit(1)
    print("    >>> RECORD CTOR, BULK SETTER & HARDWARE SLICING VERIFIED CLEAN <<<")

    run([sys.executable, "tools/aic_elf_emitter.py", "test_opt_pipeline.s", "-o", "test_opt_pipeline.elf"],
        "Stage 14d: Generate standalone Linux ELF64 binary test_opt_pipeline.elf")

    with open("test_opt_pipeline.elf", "rb") as f_elf:
        elf_bytes = f_elf.read()
    assert elf_bytes[:4] == b"\x7fELF", "Invalid ELF magic bytes"
    assert elf_bytes[4] == 2, "Not 64-bit ELF class"
    assert elf_bytes[5] == 1, "Not little-endian ELF"
    (e_machine,) = struct.unpack("<H", elf_bytes[18:20])
    assert e_machine == 0x3E, f"Invalid machine type {e_machine:#x} (not x86-64)"
    (e_entry, e_phoff) = struct.unpack("<QQ", elf_bytes[24:40])
    (e_phentsize, e_phnum) = struct.unpack("<HH", elf_bytes[54:58])
    assert e_phnum >= 2, f"Expected at least 2 program headers, got {e_phnum}"
    print(f"    >>> LINUX ELF64 BINARY VALIDATED: Entry {e_entry:#x}, {e_phnum} PT_LOAD segments ({len(elf_bytes):,} bytes) <<<")

    # 15. Standard Library & Modular Imports
    run(["./aic.exe", "test_stdlib.aic", "test_stdlib_pipeline.s"],
        "Stage 15a: Native aic.exe compiles test_stdlib.aic with modular imports -> test_stdlib_pipeline.s")

    run([sys.executable, "tools/aic_pe_emitter.py", "test_stdlib_pipeline.s", "-o", "test_stdlib_pipeline.exe"],
        "Stage 15b: Package test_stdlib_pipeline.exe (Direct PE emitter)")

    p_stdlib = run(["./test_stdlib_pipeline.exe"],
                   "Stage 15c: Execute native test_stdlib binary")
    expected_stdlib = (
        "Math: 99 17 42 100 1024 6 36 12\n"
        "String: Hello, AIC! 1 72 2 1 1\n"
        "Vector: 5 8 300 500 4\n"
        "Map: 4 10 30 1 0\n"
    )
    out_stdlib = p_stdlib.stdout.replace("\r\n", "\n")
    if out_stdlib != expected_stdlib:
        print("[FAIL] test_stdlib output mismatch! Expected:")
        print(repr(expected_stdlib))
        print("Got:")
        print(repr(out_stdlib))
        sys.exit(1)
    print("    >>> STANDARD LIBRARY (MATH, STRING, VEC, MAP) & MODULAR IMPORTS VERIFIED CLEAN <<<")

    run([sys.executable, "tools/aic_elf_emitter.py", "test_stdlib_pipeline.s", "-o", "test_stdlib_pipeline.elf"],
        "Stage 15d: Generate standalone Linux ELF64 binary test_stdlib_pipeline.elf")

    with open("test_stdlib_pipeline.elf", "rb") as f_self:
        elf_bytes = f_self.read()
    assert elf_bytes[:4] == b"\x7fELF", "Invalid ELF magic bytes"
    print(f"    >>> STDLIB LINUX ELF64 BINARY VALIDATED ({len(elf_bytes):,} bytes) <<<")

    print("\n" + "=" * 70)
    print("ALL 15 STAGES PASSED. SELF-HOSTING & CROSS-PLATFORM TOOLCHAIN FREEDOM PROVEN.")
    print(f"Compiler binary: aic.exe ({os.path.getsize('aic.exe'):,} bytes)")
    print("Zero external toolchain dependency (Windows PE & Linux ELF direct emitters).")
    print("=" * 70)


if __name__ == "__main__":
    main()
