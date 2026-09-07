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

    # 2. Gen 0 link (direct, zero bridge files!)
    run(["gcc", "-O2", "compiler_gen0.s", "-o", "compiler_gen0.exe"],
        "Stage 2: Assemble & link compiler_gen0.exe (standalone)")

    # 3. Gen 1 native compilation
    run(["./compiler_gen0.exe", "compiler.aic", "compiler_gen1.s"],
        "Stage 3: Run native compiler_gen0.exe on compiler.aic -> compiler_gen1.s")

    if not filecmp.cmp("compiler_gen0.s", "compiler_gen1.s", shallow=False):
        print("[FAIL] compiler_gen0.s and compiler_gen1.s differ!")
        sys.exit(1)
    sz0 = os.path.getsize("compiler_gen0.s")
    sz1 = os.path.getsize("compiler_gen1.s")
    print(f"    >>> STAGE 1 CLOSURE VERIFIED: 0-diff (Size: {sz0:,} bytes) <<<")

    # 4. Gen 1 link (direct, zero bridge files!)
    run(["gcc", "-O2", "compiler_gen1.s", "-o", "compiler_gen1.exe"],
        "Stage 4: Assemble & link compiler_gen1.exe (standalone)")

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

    print("\n" + "=" * 70)
    print("ALL 13 STAGES PASSED. SELF-HOSTING & TOOLCHAIN FREEDOM PROVEN.")
    print(f"Compiler binary: aic.exe ({os.path.getsize('aic.exe'):,} bytes)")
    print("Zero external toolchain dependency (GCC/MinGW eliminated from packaging).")
    print("=" * 70)


if __name__ == "__main__":
    main()
