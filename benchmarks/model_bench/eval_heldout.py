#!/usr/bin/env python3
"""eval_heldout.py - evaluation on the 50 held-out tasks.

Four cells per task:
  aic        single shot, parity prompt
  agent_zero single shot + up to N reflection retries (default 5)
  c          single shot
  python     single shot

Scoring is byte-exact stdout, identical to harness.score_aic/score_c/score_py.
Reports pass@1 with 95% Wilson score intervals and silent_wrong_output.

Run:  python3 benchmarks/model_bench/eval_heldout.py --samples 1
      python3 benchmarks/model_bench/eval_heldout.py --samples 10 --agent-iters 5
"""

import argparse
import json
import math
import os
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

import harness  # noqa: E402
from heldout_tasks import TASKS, FIXED_FILE, FIXED_FILE_CONTENT  # noqa: E402
from tasks import AIC_SYSTEM, AIC_SPEC_CONTEXT  # noqa: E402

SYSTEM = AIC_SYSTEM + "\n" + AIC_SPEC_CONTEXT
OUT = os.path.join(HERE, "results_heldout.jsonl")
REPORT = os.path.join(HERE, "heldout_report.md")


def wilson(k, n, z=1.96):
    """95% Wilson score interval for k successes out of n."""
    if n == 0:
        return (0.0, 0.0)
    p = k / n
    denom = 1 + z * z / n
    centre = (p + z * z / (2 * n)) / denom
    half = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n)) / denom
    return (max(0.0, centre - half), min(1.0, centre + half))


def prompt_for(lang, task):
    lead = {
        "aic": "Return ONLY the AIC program in a fenced ```aic block.",
        "c": "Return ONLY a complete C program (with main) in a fenced ```c block. "
             "It must print exactly the expected output.",
        "python": "Return ONLY a complete Python 3 program in a fenced ```python block.",
    }[lang]
    return f"Task:\n{task['spec']}\n\n{lead}"


def run_cell(task, lang, model):
    reply = harness.chat(SYSTEM, prompt_for(lang, task), model=model)
    code = harness.extract_code(reply)
    res = harness.SCORE[lang](code, task)
    return dict(code=code, res=res)


def run_agent(task, iters, model):
    first = None
    last = None
    for it in range(1, iters + 1):
        if it == 1:
            user = prompt_for("aic", task)
        else:
            user = prompt_for("aic", task) + f"\nYour program:\n```aic\n{first}\n```"
            last = last or {}
            if last.get("compiled") is False:
                user += (f"\nIt FAILED TO COMPILE ({last.get('cat')}):\n"
                         f"{last.get('compiler_stderr') or last.get('output') or ''}")
            elif not last.get("ran"):
                user += (f"\nIt COMPILED but FAILED TO RUN ({last.get('cat')}):\n"
                         f"{last.get('output') or ''}")
            else:
                user += (f"\nIt ran but printed the WRONG output.\n"
                         f"Expected (byte-exact):\n```\n{task['expected']}```\n"
                         f"Got:\n```\n{last.get('output')}```")
            user += "\nFix it. Return ONLY the corrected AIC program in a fenced ```aic block."
        try:
            reply = harness.chat(SYSTEM, user, model=model)
        except Exception as e:
            return dict(ok=False, iterations=it, code="", res={"cat": "LLM", "compiler_stderr": str(e)})
        code = harness.extract_code(reply)
        if it == 1:
            first = code
        last = harness.score_aic(code, task)
        if last.get("ran") and last.get("output") == task["expected"]:
            return dict(ok=True, iterations=it, code=code, res=last)
    return dict(ok=False, iterations=iters, code=first or "", res=last or {"cat": "none"})


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", type=int, default=1)
    ap.add_argument("--agent-iters", type=int, default=5)
    ap.add_argument("--model", default=harness.MODEL)
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--cells", default="aic,agent_zero,c,python")
    ap.add_argument("--out", default=OUT)
    ap.add_argument("--report", default=REPORT)
    ap.add_argument("--append", action="store_true")
    args = ap.parse_args()

    tasks = TASKS[: args.limit] if args.limit else TASKS
    cells = [c.strip() for c in args.cells.split(",") if c.strip()]
    rows = []
    t0 = time.perf_counter()

    mode = "a" if args.append else "w"
    with open(args.out, mode) as f:
        for s in range(args.samples):
            for task in tasks:
                for lang in cells:
                    if lang == "agent_zero":
                        r = run_agent(task, args.agent_iters, args.model)
                        res = r["res"] or {}
                        rec = dict(task_id=task["task_id"], tier=task["tier"],
                                   language="agent_zero", sample_index=s,
                                   passed=bool(r["ok"]),
                                   iterations=r["iterations"],
                                   error_category=res.get("cat", "none"),
                                   silent_wrong_output=res.get("silent", False),
                                   compiler_stderr=res.get("compiler_stderr", ""),
                                   raw_candidate_code=r["code"])
                    else:
                        r = run_cell(task, lang, args.model)
                        res = r["res"]
                        rec = dict(task_id=task["task_id"], tier=task["tier"],
                                   language=lang, sample_index=s,
                                   passed=bool(res.get("ran") and
                                               res.get("output") == task["expected"]),
                                   iterations=1,
                                   error_category=res.get("cat", "none"),
                                   silent_wrong_output=res.get("silent", False),
                                   compiler_stderr=res.get("compiler_stderr", ""),
                                   raw_candidate_code=r["code"])
                    rows.append(rec)
                    f.write(json.dumps(rec) + "\n")
                    f.flush()
                    print(f"s{s} t{task['task_id']:3d} {lang:<10} "
                          f"{'PASS' if rec['passed'] else 'fail'} "
                          f"cat={rec['error_category']}")

    # ---- aggregate
    stats = {}
    for lang in cells:
        rs = [r for r in rows if r["language"] == lang]
        n = len(rs)
        k = sum(1 for r in rs if r["passed"])
        lo, hi = wilson(k, n)
        silent = sum(1 for r in rs if r["silent_wrong_output"])
        stats[lang] = dict(n=n, k=k, pct=100.0 * k / n if n else 0.0,
                           lo=100.0 * lo, hi=100.0 * hi, silent=silent)

    by_tier = {}
    for lang in cells:
        for tier in sorted({r["tier"] for r in rows}):
            rs = [r for r in rows if r["language"] == lang and r["tier"] == tier]
            if not rs:
                continue
            by_tier.setdefault(tier, {})[lang] = (
                sum(1 for r in rs if r["passed"]), len(rs))

    lines = ["# Held-Out Evaluation (50 tasks, never used for prompt tuning)", ""]
    lines.append(f"Model: `{args.model}` · samples/cell: {args.samples} · "
                 f"wall: {time.perf_counter()-t0:.0f}s")
    lines.append("")
    lines.append("| Cell | pass@1 | 95% Wilson CI | silent wrong |")
    lines.append("| :--- | ---: | :--- | ---: |")
    for lang in cells:
        st = stats[lang]
        label = "Agent Zero (5 retries)" if lang == "agent_zero" else lang
        lines.append(f"| {label} | {st['k']}/{st['n']} = {st['pct']:.1f}% | "
                     f"{st['lo']:.1f}–{st['hi']:.1f}% | {st['silent']} |")
    lines.append("")
    lines.append("| Tier | " + " | ".join(cells) + " |")
    lines.append("| ---: | " + " | ".join("---:" for _ in cells) + " |")
    for tier in sorted(by_tier):
        row = [f"{by_tier[tier].get(c, (0,0))[0]}/{by_tier[tier].get(c, (0,0))[1]}"
               for c in cells]
        lines.append(f"| {tier} | " + " | ".join(row) + " |")
    lines.append("")
    lines.append(f"Raw records: `{os.path.basename(args.out)}`")

    with open(args.report, "w") as f:
        f.write("\n".join(lines) + "\n")

    print("\n" + "\n".join(lines))
    return 0


if __name__ == "__main__":
    sys.exit(main())
