#!/usr/bin/env python3
import json, os, collections
os.chdir(os.path.dirname(os.path.abspath(__file__)))
recs = [json.loads(l) for l in open("results.jsonl")]
# C/Python tier3 silent-wrong: look at raw outputs
for lang in ("c", "python"):
    print("="*60, lang)
    for tid in (17, 18, 19, 20, 21, 22, 23, 24):
        rs = [r for r in recs if r["language"] == lang and r["task_id"] == tid]
        if not rs: continue
        p = sum(r["passed_functional_test"] for r in rs)
        sw = sum(r["silent_wrong_output"] for r in rs)
        ex = rs[0]
        # what's expected? reconstruct from tasks
        print(f"t{tid}: pass {p}/{len(rs)} silent {sw}/{len(rs)}  sample_out={ex['raw_output'][:60]!r}")
