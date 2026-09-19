#!/usr/bin/env python3
import json, os
os.chdir(os.path.dirname(os.path.abspath(__file__)))
recs = [json.loads(l) for l in open("results.jsonl")]
# C tier3 task17: look at 3 samples' code + raw_output
print("### C task17 (vec push/pop sum) — expect 55")
for r in [x for x in recs if x["language"]=="c" and x["task_id"]==17][:3]:
    print("-"*40, "s", r["sample_index"], "pass=", r["passed_functional_test"], "out=", repr(r["raw_output"]))
    print(r["raw_candidate_code"][:400])
print("\n### Python task17 — expect 55")
for r in [x for x in recs if x["language"]=="python" and x["task_id"]==17][:2]:
    print("-"*40, "s", r["sample_index"], "pass=", r["passed_functional_test"], "out=", repr(r["raw_output"]))
    print(r["raw_candidate_code"][:400])
