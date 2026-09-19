#!/usr/bin/env python3
import json, os, collections
os.chdir(os.path.dirname(os.path.abspath(__file__)))
recs = [json.loads(l) for l in open("results.jsonl")]
empty = [r for r in recs if not r["raw_candidate_code"].strip()]
print("total records:", len(recs))
print("empty-code records:", len(empty))
# by language
byl = collections.Counter(r["language"] for r in empty)
print("by language:", dict(byl))
# by task
byt = collections.Counter(r["task_id"] for r in empty)
print("by task:", dict(sorted(byt.items())))
# Are these all LLM errors? check a few for markers
# Look at distinct 'raw_output' + error_category for empty ones
print("\nsample empty records (task,lang,cond,sample,out,cat):")
for r in empty[:8]:
    print(f"  t{r['task_id']} {r['language'][:3]} {r['condition'][:3]} s{r['sample_index']} out={r['raw_output'][:30]!r} cat={r['error_category']}")
