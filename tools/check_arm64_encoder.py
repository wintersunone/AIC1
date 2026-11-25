#!/usr/bin/env python3
"""Cross-check the pure-Python AArch64 encoder against aarch64-linux-gnu-as.

Every instruction form the ARM64 codegen emits is assembled by the real
assembler and by our encoder; the 32-bit words must match exactly. This is the
runnable check that keeps the hand-written encoding honest.
"""
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))     # .../AIC1/tools
REPO = os.path.dirname(HERE)                          # .../AIC1
sys.path.insert(0, REPO)
from tools.aic_arm64_emitter import Assembler, apply_fixups

CASES = [
    "stp x29, x30, [sp, #-16]!",
    "stp x19, x20, [sp, #-16]!",
    "ldp x29, x30, [sp], #16",
    "ldp x19, x20, [sp], #16",
    "mov x29, sp",
    "mov sp, x29",
    "mov x19, x0",
    "mov x0, #0",
    "mov x0, #5",
    "movz x0, #5",
    "movz x1, #0x0800, lsl #16",
    "movk x0, #0x1234, lsl #48",
    "movn x9, #15",
    "add x0, x0, x1",
    "add x0, x1, #7",
    "add x0, x0, #1",
    "sub sp, sp, #32",
    "sub x0, x0, x1",
    "mul x0, x0, x1",
    "sdiv x2, x0, x1",
    "msub x0, x0, x1, x2",
    "and x0, x0, x1",
    "orr x0, x0, x1",
    "eor x0, x0, x1",
    "lslv x0, x0, x1",
    "asrv x0, x0, x1",
    "cmp x0, x1",
    "cmp x1, #0",
    "cset x0, eq",
    "cset x0, lt",
    "cset x0, gt",
    "cset x0, ne",
    "cset x0, le",
    "cset x0, ge",
    "cbz x0, L",
    "cbnz x0, L",
    "b L",
    "bl L",
    "b.eq L",
    "b.ne L",
    "b.ge L",
    "tst x0, x1",
    "svc #0",
    "ret",
    "str x0, [sp, #-16]!",
    "ldr x1, [sp], #16",
    "strb w3, [x1]",
    "ldrb w0, [x1]",
    "add x1, x1, x2, lsl #3",
    "ldur x0, [x29, #-24]",
    "stur xzr, [x29, #-24]",
    "ldr x0, [x1, #8]",
    "str x0, [x1]",
    "adrp x0, L",
    "add x0, x0, :lo12:L",
    "neg x0, x1",
]


def asm_words(lines):
    src = "    .text\n"
    for l in lines:
        src += l + "\n"
    src += "L:\n    ret\n"
    src += "L0:\n" if False else ""
    open("/tmp/_chk.s", "w").write(src)
    r = subprocess.run(["aarch64-linux-gnu-as", "-o", "/tmp/_chk.o", "/tmp/_chk.s"],
                       capture_output=True, text=True)
    if r.returncode:
        return None, r.stderr
    out = subprocess.run(["aarch64-linux-gnu-objdump", "-d", "/tmp/_chk.o"],
                         capture_output=True, text=True).stdout
    return [int(w, 16) for w in re.findall(r"^\s+[0-9a-f]+:\s+([0-9a-f]{8})\s", out, re.M)], None


def my_words(line):
    a = Assembler()
    a.assemble("    .text\n" + line + "\nL:\n    ret\n")
    sec = apply_fixups(a, {"text": 0, "rodata": 0x1000, "data": 0x2000})
    return [int.from_bytes(sec["text"][i:i + 4], "little") for i in range(0, len(sec["text"]), 4)]


def main():
    bad = 0
    for line in CASES:
        ref, err = asm_words([line])
        if ref is None:
            print(f"SKIP  {line!r}: {err.strip().splitlines()[0]}")
            continue
        mine = my_words(line)
        if not mine:
            print(f"FAIL  {line!r}: encoder emitted nothing")
            bad += 1
            continue
        # first word is the instruction of interest
        if line.startswith("add x0, x0, :lo12:"):
            # the object file keeps imm12=0 (the linker fixes it up); our
            # emitter resolves it immediately, so compare the opcode only.
            if (mine[0] & 0xFF800000) != (ref[0] & 0xFF800000):
                print(f"FAIL  {line!r}: mine={mine[0]:08x} gas={ref[0]:08x}")
                bad += 1
            continue
        if mine[0] != ref[0]:
            print(f"FAIL  {line!r}: mine={mine[0]:08x} gas={ref[0]:08x}")
            bad += 1
    print(f"\n{bad} mismatch(es) out of {len(CASES)} forms")
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
