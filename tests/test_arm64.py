#!/usr/bin/env python3
"""test_arm64.py - AIC Milestone 4a: native AArch64 backend validation.

Builds the six canonical programs with `aic.py build --arch arm64`, runs the
resulting ELF64 binaries natively (no QEMU), and loads a generated shared
object through ctypes.CDLL.

Run: python3 tests/test_arm64.py
"""

import ctypes
import os
import platform
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
AIC = os.path.join(REPO, "aic.py")

SUITES = [
    "examples/01_basics.aic",
    "examples/02_algorithms.aic",
    "examples/03_records.aic",
    "tests/test_stdlib.aic",
    "tests/test_json.aic",
    "tests/test_system.aic",
    "tests/test_edge_cases.aic",
]

LIB = """\
[: fib [n] [D
  [? [< n 2] [^ n] [D]]
  [^ [+ [fib [- n 1]] [fib [- n 2]]]]
]]
[: add_numbers [a b] [D
  [^ [+ a b]]
]]
"""


def build(src, out, fmt="auto"):
    cmd = [sys.executable, AIC, "build", src, "--arch", "arm64", "-o", out]
    if fmt != "auto":
        cmd += ["--format", fmt]
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0 or not os.path.exists(out):
        raise RuntimeError(f"build failed for {src}:\n{res.stdout}\n{res.stderr}")


def run(path):
    os.chmod(path, 0o755)
    res = subprocess.run([path], capture_output=True, text=True, timeout=60)
    return res.returncode, res.stdout + res.stderr


def main():
    if platform.machine() not in ("aarch64", "arm64"):
        print(f"[SKIP] host is {platform.machine()}, not aarch64")
        return 0

    tmp = tempfile.mkdtemp(prefix="aic_arm64_")
    failures = 0

    print("== standalone ELF64 executables ==")
    for src in SUITES:
        name = os.path.basename(src).replace(".aic", "")
        out = os.path.join(tmp, name + ".elf")
        try:
            build(os.path.join(REPO, src), out)
        except Exception as e:
            print(f"  [FAIL] {name}: {e}")
            failures += 1
            continue
        rc, text = run(out)
        ok = rc == 0 and "[FAIL]" not in text
        print(f"  [{'PASS' if ok else 'FAIL'}] {name} rc={rc} ({os.path.getsize(out):,} bytes)")
        if not ok:
            failures += 1

    print("== shared object + ctypes.CDLL ==")
    libsrc = os.path.join(tmp, "algo.aic")
    with open(libsrc, "w") as f:
        f.write(LIB)
    so = os.path.join(tmp, "libalgo_arm64.so")
    try:
        build(libsrc, so, fmt="shared")
        lib = ctypes.CDLL(so)
        lib.fib.restype = ctypes.c_long
        lib.fib.argtypes = [ctypes.c_long]
        lib.add_numbers.restype = ctypes.c_long
        lib.add_numbers.argtypes = [ctypes.c_long, ctypes.c_long]
        f10 = lib.fib(10)
        s42 = lib.add_numbers(2, 40)
        ok = f10 == 55 and s42 == 42
        print(f"  [{'PASS' if ok else 'FAIL'}] fib(10)={f10} add_numbers(2,40)={s42}")
        if not ok:
            failures += 1
    except Exception as e:
        print(f"  [FAIL] shared object: {e}")
        failures += 1

    print(f"\n{'ALL PASSED' if failures == 0 else f'{failures} FAILED'}")
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
