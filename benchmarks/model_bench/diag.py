#!/usr/bin/env python3
import json, collections, os
os.chdir(os.path.dirname(os.path.abspath(__file__)))
recs = [json.loads(l) for l in open("results.jsonl")]
aic = [r for r in recs if r["language"] == "aic"]
print("AIC samples:", len(aic))
num_fail = 0; other = 0
for r in aic:
    if r["passed_functional_test"]: continue
    if r["silent_wrong_output"]: num_fail += 1
    else: other += 1
print("AIC silent-wrong:", num_fail, "| non-silent failure:", other)
z = [r for r in aic if r["condition"] == "zero_shot"]
s = [r for r in aic if r["condition"] == "spec_in_context"]
print("AIC Z pass:", sum(r["passed_functional_test"] for r in z), "/", len(z))
print("AIC S pass:", sum(r["passed_functional_test"] for r in s), "/", len(s))
print("AIC Z silent:", sum(r["silent_wrong_output"] for r in z), "/", len(z))
print("AIC S silent:", sum(r["silent_wrong_output"] for r in s), "/", len(s))
# error categories for AIC non-pass
cat = collections.Counter()
for r in aic:
    if not r["passed_functional_test"]:
        cat[r["error_category"]] += 1
print("AIC error categories (non-pass):", dict(cat))
