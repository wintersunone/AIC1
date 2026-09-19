#!/usr/bin/env python3
"""Verify Part A reference implementations: each of the 30 tasks x 3 languages
must produce byte-exact expected output (deterministic). Any mismatch is
printed and (unless --accept) the script exits non-zero.

AIC refs run via the native toolchain (aic.py build + run, gcc under
binfmt-qemu on this host). C via gcc. Python via python3. File/stdin tasks
get the fixed inputs set up first.
"""
import os, sys, subprocess, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
from tasks import TASKS, FIXED_FILE, FIXED_FILE_CONTENT, FIXED_STDIN

def run_aic(code, cwd, timeout=90, stdin_data=None):
    with tempfile.TemporaryDirectory() as d:
        p = os.path.join(d, "prog.aic")
        open(p, "w").write(code)
        # use aic.py build then run the produced binary (deterministic native path)
        elf = os.path.join(d, "prog.elf")
        b = subprocess.run(["python3", os.path.join(BASE, "aic.py"), "build", p, "-o", elf],
                           capture_output=True, text=True, cwd=BASE, timeout=timeout)
        if b.returncode != 0:
            return None, "build-fail: " + (b.stdout + b.stderr)[-300:]
        r = subprocess.run([elf], capture_output=True, text=True, cwd=cwd, timeout=timeout,
                           input=(stdin_data or ""))
        return r.stdout, "rc=%d" % r.returncode

def run_c(code, cwd, timeout=30, stdin_data=None):
    with tempfile.TemporaryDirectory() as d:
        p = os.path.join(d, "prog.c"); o = os.path.join(d, "prog")
        open(p, "w").write(code)
        c = subprocess.run(["gcc", "-O2", "-o", o, p], capture_output=True, text=True, timeout=timeout)
        if c.returncode != 0:
            return None, "build-fail: " + c.stderr[-300:]
        r = subprocess.run([o], capture_output=True, text=True, cwd=cwd, timeout=timeout,
                           input=(stdin_data or ""))
        return r.stdout, "rc=%d" % r.returncode

def run_py(code, cwd, timeout=30):
    with open(os.devnull, "w") as sink:
        pass
    inp = FIXED_STDIN if False else ""
    r = subprocess.run([sys.executable, "-c", code], capture_output=True, text=True,
                       cwd=cwd, timeout=timeout, input="")
    return r.stdout, "rc=%d stderr=%s" % (r.returncode, r.stderr[-200:])

def verify(task, workdir):
    exp = task["expected"]
    sd = FIXED_STDIN if task["uses_stdin"] else None
    res = {}
    # AIC
    out, meta = run_aic(task["aic"], workdir, stdin_data=sd)
    res["aic"] = (out == exp, out, meta)
    # C
    out, meta = run_c(task["c"], workdir, stdin_data=sd)
    res["c"] = (out == exp, out, meta)
    # Python
    code = task["py"]
    r = subprocess.run([sys.executable, "-c", code], capture_output=True, text=True,
                       cwd=workdir, timeout=30, input=(sd or ""))
    res["py"] = (r.stdout == exp, r.stdout, "rc=%d" % r.returncode)
    return res

def main():
    accept = "--accept" in sys.argv
    only = None
    for a in sys.argv[1:]:
        if a.startswith("--task="): only = int(a.split("=")[1])
    with tempfile.TemporaryDirectory() as wd:
        open(os.path.join(wd, FIXED_FILE), "w").write(FIXED_FILE_CONTENT)
        fails = []
        for t in TASKS:
            if only and t["task_id"] != only: continue
            r = verify(t, wd)
            status = []
            for lang in ("aic", "c", "py"):
                ok, out, meta = r[lang]
                status.append((lang, ok, out, meta))
            allok = all(s[1] for s in status)
            mark = "OK " if allok else "FAIL"
            print(f"{mark} task {t['task_id']:2d}", end="")
            for lang, ok, out, meta in status:
                if not ok:
                    print(f" | {lang} MISMATCH exp={t['expected']!r} got={out!r} {meta}", end="")
                    fails.append((t["task_id"], lang))
            print()
    if fails:
        print(f"\n{len(fails)} reference mismatches:")
        for tid, lang in fails:
            print(f"  task {tid} {lang}")
        if not accept:
            sys.exit(1)

if __name__ == "__main__":
    main()
