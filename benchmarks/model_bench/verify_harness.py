#!/usr/bin/env python3
"""Harness-verification diagnostics (sections 1, 3, 4, 5 of the follow-up).

Diagnostic pass only: does NOT modify aggregate.py, tasks, or scoring logic.
Run: python3 verify_harness.py
"""
import json, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from tasks import TASKS
from harness import score_aic, extract_code, build_messages, chat, MODEL

# ---------------- Section 1: ground-truth toolchain check ----------------
# Run every reference AIC solution through the EXACT harness path:
# extract_code (first fenced block; refs are raw code so extraction is the
# identity) -> score_aic (same build invocation, sandbox, timeout, scorer).
print("=== Section 1: 30 reference AIC solutions through the harness pipeline ===")
s1 = []
for t in TASKS:
    raw = "```aic\n" + t["aic"] + "\n```"
    code = extract_code(raw)
    assert code == t["aic"].strip("\n") + "\n" or code.replace("\n", "") == t["aic"].replace("\n", ""), \
        f"t{t['task_id']}: extraction not identity on reference code"
    res = score_aic(code, t)
    ok = res["ran"] and res["output"] == t["expected"]
    s1.append((t["task_id"], ok, res))
    print(f"t{t['task_id']:<3} {'PASS' if ok else 'FAIL'}  cat={res['cat']}  "
          f"out={json.dumps(res['output'])[:60]}")
n_pass = sum(1 for _, ok, _ in s1 if ok)
print(f"\nSection 1 result: {n_pass}/30 reference solutions pass the pipeline")

# ---------------- Section 3: Z vs S delta, isolated ----------------
print("\n=== Section 3: AIC pass@1 (mean@5), Z vs S ===")
recs = [json.loads(l) for l in open(os.path.join(HERE, "results.jsonl"))]
aic = [r for r in recs if r["language"] == "aic"]

def pass1(subset):
    # corrected metric: mean of per-sample pass over all samples in subset
    return sum(1 for r in subset if r["passed_functional_test"] is True) / len(subset)

z, s = [r for r in aic if r["condition"] == "zero_shot"], [r for r in aic if r["condition"] == "spec_in_context"]
t1z, t1s = [r for r in z if r["tier"] == 1], [r for r in s if r["tier"] == 1]
print(f"all tiers:  Z={pass1(z)*100:.2f}% ({sum(r['passed_functional_test'] for r in z)}/{len(z)})   "
      f"S={pass1(s)*100:.2f}% ({sum(r['passed_functional_test'] for r in s)}/{len(s)})")
print(f"tier 1 only: Z={pass1(t1z)*100:.2f}% ({sum(r['passed_functional_test'] for r in t1z)}/{len(t1z)})   "
      f"S={pass1(t1s)*100:.2f}% ({sum(r['passed_functional_test'] for r in t1s)}/{len(t1s)})")
# per-task detail for tier 1 AIC so the single pass is attributable
for tid in sorted(set(r["task_id"] for r in aic if r["tier"] == 1)):
    tz = [r for r in t1z if r["task_id"] == tid]
    ts = [r for r in t1s if r["task_id"] == tid]
    print(f"  t{tid}: Z {sum(1 for r in tz if r['passed_functional_test'])}/5   "
          f"S {sum(1 for r in ts if r['passed_functional_test'])}/5   "
          f"cats={sorted(set(r['error_category'] for r in tz+ts))}")

# ---------------- Section 4: model inventory ----------------
print("\n=== Section 4: model inventory ===")
from collections import Counter
mc = Counter((r["model"]) for r in recs)
print("distinct models:", len(mc))
for m, n in mc.items():
    print(f"  {m}: {n} generations")
# also check the archived partial run's model
p2 = os.path.join(HERE, "results_thinking_on_partial.jsonl")
if os.path.exists(p2):
    mc2 = Counter(json.loads(l)["model"] for l in open(p2))
    print("archived partial run models:", dict(mc2))

# ---------------- Section 5: extraction spot-check (fresh raw responses) ----
print("\n=== Section 5: extraction step, 5 fresh raw Tier-1 AIC responses (condition Z) ===")
out5 = []
for tid in (1, 2, 3, 4, 5):
    task = next(t for t in TASKS if t["task_id"] == tid)
    system, user = build_messages("aic", "zero_shot", task)
    raw = chat(system, user)
    code = extract_code(raw)
    rec = {"task_id": tid, "raw_response": raw, "extracted_code": code,
           "raw_len": len(raw or ""), "code_len": len(code or ""),
           "llm_error": (raw or "").startswith("__LLM_ERROR__")}
    out5.append(rec)
    nblocks = (raw or "").count("```")
    print(f"t{tid}: raw {rec['raw_len']}B, extracted {rec['code_len']}B, "
          f"backtick-triples={nblocks}, llm_error={rec['llm_error']}")
json.dump(out5, open(os.path.join(HERE, "verify_raw_responses.json"), "w"), indent=1)
print("raw responses + extractions saved -> verify_raw_responses.json")
print("DONE")
