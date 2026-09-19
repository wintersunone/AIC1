#!/usr/bin/env python3
"""Aggregate results.jsonl into the required deliverables:
  - pass@1 (mean pass rate over the 5 samples) by tier x language x condition
  - silent-wrong-output rate, same breakdown
  - per-task detail and error-category breakdown
Writes a markdown report (report.md) and a JSON (summary.json).
"""
import os, json, re, collections
import sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from tasks import TASKS
EXP = {t["task_id"]: t["expected"] for t in TASKS}
OUT = os.path.join(HERE, "results.jsonl")

def load():
    recs = []
    if os.path.exists(OUT):
        for line in open(OUT):
            try:
                recs.append(json.loads(line))
            except Exception:
                pass
    return recs

def norm(s):
    """Collapse all whitespace — used to split format-only vs value-differs."""
    return re.sub(r"\s+", "", s or "")

def mean(xs):
    return sum(xs) / len(xs) if xs else 0.0

def main():
    recs = load()
    if not recs:
        print("no results yet"); return
    tiers = {1, 2, 3, 4}
    langs = ["aic", "c", "python"]
    conds = ["zero_shot", "spec_in_context"]

    # Separate infra failures (model/endpoint produced no code) from real model
    # samples. llm_failed must NOT count toward pass@1 or silent-wrong — it is
    # an endpoint problem, not a model answer. Empty candidate code (old runs)
    # means the model produced nothing to score, so it counts the same way.
    llm_failed = [r for r in recs
                  if r.get("error_category") == "llm_failed"
                  or not (r.get("raw_candidate_code") or "").strip()]
    failed_keys = {(r["task_id"], r["language"], r["condition"], r["sample_index"]) for r in llm_failed}
    recs = [r for r in recs
            if (r["task_id"], r["language"], r["condition"], r["sample_index"]) not in failed_keys]
    llm_failed_by = collections.Counter((r["language"], r["condition"]) for r in llm_failed)

    # cell-level: (task,lang,cond) -> list of samples
    cell = collections.defaultdict(list)
    for r in recs:
        cell[(r["task_id"], r["language"], r["condition"])].append(r)

    # pass@1 per (task,lang,cond) = mean over samples
    cell_pass = {}
    for k, rs in cell.items():
        cell_pass[k] = mean([1 for r in rs if r["passed_functional_test"]])

    def agg(pred):
        t = {}
        for tier in tiers:
            for lang in langs:
                for cond in conds:
                    vals = [cell_pass[(tid, lang, cond)]
                            for (tid, l, c) in cell_pass
                            if l == lang and c == cond]
                    # filter to this tier
                    task_tier = {r["task_id"]: r["tier"] for r in recs}
                    vals = [cell_pass[(tid, lang, cond)]
                            for (tid, l, c) in cell_pass
                            if l == lang and c == cond and task_tier[tid] == tier]
                    t[(tier, lang, cond)] = (mean(vals), len(vals))
        return t

    pass_agg = agg(lambda r: r["passed_functional_test"])

    # silent-wrong per (task,lang,cond) = fraction of samples silent_wrong_output
    cell_silent = {k: mean([1 for r in rs if r["silent_wrong_output"]]) for k, rs in cell.items()}
    silent_agg = {}
    task_tier = {r["task_id"]: r["tier"] for r in recs}
    for tier in tiers:
        for lang in langs:
            for cond in conds:
                vals = [cell_silent[(tid, lang, cond)]
                        for (tid, l, c) in cell_silent
                        if l == lang and c == cond and task_tier[tid] == tier]
                silent_agg[(tier, lang, cond)] = (mean(vals), len(vals))

    # language-level pass@1 (all tiers)
    lang_pass = {lang: mean([cell_pass[k] for k in cell_pass if k[1] == lang]) for lang in langs}
    lang_silent = {lang: mean([cell_silent[k] for k in cell_silent if k[1] == lang]) for lang in langs}

    def fmt(pct):
        return f"{pct*100:5.1f}%"

    L = []
    L.append("# AIC Benchmark — Model-Generation Results (Part B)\n")
    L.append(f"Model: `qwen3.8-27b-sglang`  ·  Cells: {len(cell_pass)} (task×lang×cond) · {len(recs)} samples\n")
    L.append("\n## 1. pass@1 by tier × language × condition (mean over 5 samples)\n")
    for tier in tiers:
        L.append(f"### Tier {tier}\n")
        L.append("| condition | AIC | C | Python |")
        L.append("|---|---|---|---|")
        for cond in conds:
            row = [cond.replace("_", " ")]
            for lang in langs:
                v, n = pass_agg[(tier, lang, cond)]
                row.append(fmt(v) + f" (n={n})")
            L.append("| " + " | ".join(row) + " |")
        L.append("")
    L.append("\n## 2. Silent-wrong-output rate by tier × language × condition\n")
    L.append("(_fraction of samples that ran to completion, no error, but output ≠ expected_)\n")
    for tier in tiers:
        L.append(f"### Tier {tier}\n")
        L.append("| condition | AIC | C | Python |")
        L.append("|---|---|---|---|")
        for cond in conds:
            row = [cond.replace("_", " ")]
            for lang in langs:
                v, n = silent_agg[(tier, lang, cond)]
                row.append(fmt(v))
            L.append("| " + " | ".join(row) + " |")
        L.append("")

    L.append("\n## 3. Overall language comparison (all tiers)\n")
    L.append("| language | pass@1 | silent-wrong |")
    L.append("|---|---|---|")
    for lang in langs:
        L.append(f"| {lang} | {fmt(lang_pass[lang])} | {fmt(lang_silent[lang])} |")
    # AIC condition effect
    aic_z = mean([cell_pass[(tid, 'aic', 'zero_shot')] for (tid, l, c) in cell_pass if l == 'aic' and c == 'zero_shot'])
    aic_s = mean([cell_pass[(tid, 'aic', 'spec_in_context')] for (tid, l, c) in cell_pass if l == 'aic' and c == 'spec_in_context'])
    L.append(f"\n**AIC condition effect (Z→S):** {aic_z*100:.1f}% → {aic_s*100:.1f}%  (Δ {(aic_s-aic_z)*100:+.1f} pts)\n")

    L.append("\n## 4. Data quality: LLM/endpoint failures (excluded from scoring)\n")
    L.append("Cells where the model/endpoint returned no code (timeout, overload, empty content). "
             "These are infra failures, NOT model answers, and are excluded from pass@1 and "
             "silent-wrong above.\n")
    L.append("| language | zero_shot | spec_in_context |")
    L.append("|---|---|---|")
    for lang in langs:
        z = llm_failed_by.get((lang, "zero_shot"), 0)
        s = llm_failed_by.get((lang, "spec_in_context"), 0)
        L.append(f"| {lang} | {z} | {s} |")
    L.append(f"\nTotal LLM-failed cells: **{len(llm_failed_by) and sum(llm_failed_by.values())}** "
             f"out of 900 target.\n")

    # AIC failure decomposition: for each non-passing AIC sample, is it
    # (a) format-only [logic correct, output differs only in whitespace],
    # (b) genuinely-wrong value, or (c) compile/runtime error?
    L.append("\n## 5. AIC failure decomposition (non-passing samples, LLM failures excluded)\n")
    aic_fail = [r for r in recs if r["language"] == "aic" and not r["passed_functional_test"]]
    fmt_only = 0; value_diff = 0; err = 0
    for r in aic_fail:
        exp = EXP.get(r["task_id"], "")
        if r["error_category"] in ("none",):
            # ran to completion: check if it's format-only
            if norm(r["raw_output"]) == norm(exp):
                fmt_only += 1
            else:
                value_diff += 1
        else:
            err += 1
    total_fail = max(len(aic_fail), 1)
    L.append("| failure class | count | % of AIC non-pass |")
    L.append("|---|---|---|")
    L.append(f"| format-only (whitespace) — logic correct | {fmt_only} | {100*fmt_only/total_fail:.1f}% |")
    L.append(f"| genuinely wrong value | {value_diff} | {100*value_diff/total_fail:.1f}% |")
    L.append(f"| compile/runtime error | {err} | {100*err/total_fail:.1f}% |")
    L.append(f"\n_AIC non-passing samples (LLM failures excluded): {len(aic_fail)}_\n")
    L.append("_Interpretation: if most AIC failures are format-only, the dominant AIC-specific "
             "obstacle is the print/whitespace convention, not logic. If most are compile errors, "
             "it is syntax. If genuinely-wrong-value dominates, it is algorithmic._\n")

    # error category breakdown for AIC
    L.append("\n## 6. AIC error-category breakdown (by failure)\n")
    cat = collections.Counter()
    for r in recs:
        if r["language"] == "aic" and not r["passed_functional_test"]:
            cat[r["error_category"]] += 1
    L.append("| error_category | count |")
    L.append("|---|---|")
    for c, n in cat.most_common():
        L.append(f"| {c} | {n} |")

    report = "\n".join(L) + "\n"
    open(os.path.join(HERE, "report.md"), "w").write(report)

    summary = {
        "language_pass@1": lang_pass,
        "language_silent_wrong": lang_silent,
        "aic_zero_shot": aic_z, "aic_spec_in_context": aic_s,
        "pass_agg": {f"{t}/{l}/{c}": v for (t, l, c), v in pass_agg.items()},
        "silent_agg": {f"{t}/{l}/{c}": v for (t, l, c), v in silent_agg.items()},
        "aic_error_categories": dict(cat),
        "llm_failed_total": sum(llm_failed_by.values()),
        "llm_failed_by": {f"{l}/{c}": n for (l, c), n in llm_failed_by.items()},
        "aic_failure_decomposition": {"format_only": fmt_only, "value_differs": value_diff,
                                       "compile_runtime_error": err,
                                       "total_nonpass": len(aic_fail)},
    }
    json.dump(summary, open(os.path.join(HERE, "summary.json"), "w"), indent=2)
    print(report)

if __name__ == "__main__":
    main()
