#!/usr/bin/env python3
"""backfill_compiler_stderr.py - recompile the existing failed AIC candidates.

No LLM calls: results_aic_newprompt.jsonl already stores raw_candidate_code.
We rebuild each failing candidate through the compiler and write the exact
diagnostic into a sidecar JSONL + a top-causes summary.

Run: python3 benchmarks/model_bench/backfill_compiler_stderr.py
"""
import collections
import json
import os
import re
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(os.path.dirname(HERE))
SRC = os.path.join(HERE, "results_aic_newprompt.jsonl")
OUT = os.path.join(HERE, "results_aic_newprompt_stderr.jsonl")

sys.path.insert(0, BASE)


def compile_err(code, workdir, name):
    p = os.path.join(workdir, name + ".aic")
    with open(p, "w") as f:
        f.write(code)
    r = subprocess.run(
        [sys.executable, os.path.join(BASE, "aic.py"), "build", p,
         "-o", os.path.join(workdir, name + ".elf"), "--force-python"],
        capture_output=True, text=True, cwd=BASE, timeout=90)
    txt = ((r.stdout or "") + (r.stderr or "")).strip()
    if r.returncode != 0:
        return txt
    return ""


def main():
    rows = [json.loads(l) for l in open(SRC)]
    aic_rows = [r for r in rows if r["language"] == "aic"]
    failing = [r for r in aic_rows if not r["passed_functional_test"]]
    out = []
    causes = collections.Counter()
    cats = collections.Counter()

    with tempfile.TemporaryDirectory() as d:
        for i, r in enumerate(failing):
            code = r.get("raw_candidate_code") or ""
            if not code.strip():
                err = "empty candidate (no code extracted)"
                cat = "EMPTY"
            else:
                err = compile_err(code, d, f"c{i}")
                cat = r.get("error_category", "?")
                if err:
                    m = re.search(r":kind (\w+)", err)
                    if m:
                        cat = m.group(1)

            m = re.search(r"(?:Line \d+: )(.+?)(?:\n|$)", err)
            key = m.group(1) if m else err[:120]
            key = re.sub(r"Line \d+: ", "", key)
            causes[key] += 1
            cats[cat] += 1

            rec = dict(task_id=r["task_id"], tier=r["tier"], condition=r["condition"],
                       sample_index=r["sample_index"], error_category=cat,
                       compiler_stderr=err[:1200])
            out.append(rec)

    with open(OUT, "w") as f:
        for rec in out:
            f.write(json.dumps(rec) + "\n")

    print(f"recompiled {len(failing)} failing AIC candidates -> {OUT}")
    print("\n=== error categories ===")
    for k, v in cats.most_common():
        print(f"{v:4d}  {k}")
    print("\n=== top 10 causes ===")
    for k, v in causes.most_common(10):
        print(f"{v:4d}  {k}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
