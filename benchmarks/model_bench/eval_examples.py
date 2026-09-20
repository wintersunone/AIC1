#!/usr/bin/env python3
"""Evaluate examples/*.aic through the exact harness pipeline (build+run).

Ground-truth check of the repo's own example suite in the same environment the
benchmark uses. Interactive examples (08/09) get the harness's fixed stdin
("42\\n") and a 5s run timeout; a timeout there is expected, not a harness bug.
"""
import os, subprocess, tempfile, json
BASE = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
EX = os.path.join(BASE, "examples")

for f in sorted(os.listdir(EX)):
    if not f.endswith(".aic"):
        continue
    src = open(os.path.join(EX, f)).read()
    with tempfile.TemporaryDirectory() as d:
        p = os.path.join(d, "prog.aic")
        open(p, "w").write(src)
        elf = os.path.join(d, "prog.elf")
        try:
            b = subprocess.run(["python3", os.path.join(BASE, "aic.py"), "build", p, "-o", elf],
                               capture_output=True, text=True, cwd=BASE, timeout=90)
        except subprocess.TimeoutExpired:
            print(f"{f:32} BUILD TIMEOUT"); continue
        if b.returncode != 0:
            print(f"{f:32} BUILD FAIL: {(b.stdout + b.stderr).strip()[-160:]}")
            continue
        try:
            r = subprocess.run([elf], capture_output=True, timeout=5, input="42\n".encode(), cwd=d)
            out = r.stdout.decode(errors="replace")
            rc = r.returncode
            flag = "OK" if rc == 0 else f"rc={rc}"
            print(f"{f:32} BUILD OK, RUN {flag}, out={len(out)}B: {out[:100]!r}")
        except subprocess.TimeoutExpired:
            print(f"{f:32} BUILD OK, RUN TIMEOUT (interactive)")
