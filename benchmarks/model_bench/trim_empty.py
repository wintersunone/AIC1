#!/usr/bin/env python3
"""Remove empty-code (LLM-failed) records from results.jsonl so the harness
re-runs just those cells. Keeps valid model outputs. Reports before/after.
"""
import os, json, collections
os.chdir(os.path.dirname(os.path.abspath(__file__)))
p = "results.jsonl"
recs = [json.loads(l) for l in open(p)]
before = len(recs)
# a record is "valid" iff it has non-empty candidate code (a real model answer)
valid = [r for r in recs if (r.get("raw_candidate_code") or "").strip()]
dropped = before - len(valid)
open(p, "w").write("\n".join(json.dumps(r) for r in valid) + "\n")
byl = collections.Counter(r["language"] for r in valid)
print(f"before={before} dropped(empty-code)={dropped} kept={len(valid)} by_lang={dict(byl)}")
# show which cells are now missing
done = set()
for r in valid:
    done.add((r["task_id"], r["language"], r["condition"], r["sample_index"]))
print("distinct valid cells:", len(done))
