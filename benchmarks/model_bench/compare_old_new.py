#!/usr/bin/env python3
"""Old (results.jsonl) vs new (results_aic_newprompt.jsonl) AIC comparison.
Same corrected mean@5 metric, tier x condition breakdown, failure decomposition.
"""
import json, os, re, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from tasks import TASKS
tt = {t["task_id"]: t["tier"] for t in TASKS}

def load(path):
    return [json.loads(l) for l in open(path)] if os.path.exists(path) else []

old = [r for r in load(os.path.join(HERE, "results.jsonl")) if r["language"] == "aic"]
new = load(os.path.join(HERE, "results_aic_newprompt.jsonl"))

def digits(s): return re.sub(r"[^0-9]", "", s or "")

def report(name, recs):
    n = len(recs)
    if not n:
        print(f"{name}: no data"); return
    p = sum(1 for r in recs if r["passed_functional_test"] is True)
    print(f"\n=== {name}: {p}/{n} = {100*p/n:.2f}% pass@1 ===")
    for tier in (1, 2, 3, 4):
        v = [r for r in recs if tt[r["task_id"]] == tier]
        z = [r for r in v if r["condition"] == "zero_shot"]
        s = [r for r in v if r["condition"] == "spec_in_context"]
        print(f"  T{tier}: {sum(1 for r in v if r['passed_functional_test'])}/{len(v)}"
              f"  (Z {sum(1 for r in z if r['passed_functional_test'])}/{len(z)},"
              f" S {sum(1 for r in s if r['passed_functional_test'])}/{len(s)})")
    # failure decomposition of non-pass: compile-fail (empty raw_output & not ran) vs silent vs other
    compile_fail = sum(1 for r in recs if not r["passed_functional_test"] and r["error_category"] in
                       ("CODEGEN", "PARSE", "SEMANTIC"))
    runtime = sum(1 for r in recs if not r["passed_functional_test"] and r["error_category"] == "RUNTIME")
    silent = sum(1 for r in recs if not r["passed_functional_test"] and r["silent_wrong_output"])
    print(f"  non-pass: compile/parse/semantic={compile_fail} runtime={runtime} "
          f"silent-wrong={silent} other={n - p - compile_fail - runtime - silent}")
    # value-correct among non-pass (numeric match ignoring format)
    exps = {t["task_id"]: t["expected"] for t in TASKS}
    valcorrect = 0
    for r in recs:
        if r["passed_functional_test"]:
            continue
        if r["raw_output"] and digits(r["raw_output"]) == digits(exps[r["task_id"]]):
            valcorrect += 1
    print(f"  non-pass but numerically correct (format-only): {valcorrect}")

report("OLD (results.jsonl, original prompt)", old)
report("NEW (results_aic_newprompt.jsonl, corrected prompt)", new)
