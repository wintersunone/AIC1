#!/usr/bin/env python3
"""eval_agent_zero.py - Agent Zero reflection loop over the 30 model_bench tasks.

Single-shot baseline (already measured, same model and prompt):
    AIC_SYSTEM only          -> 0.33%  (1/300)
    AIC_SYSTEM + AIC_SPEC_CONTEXT -> 40.0% (120/300), 62.7% when spec in context

This script adds the third rung: the same parity prompt, but with up to N
generate -> compile -> run -> reflect retries per task, which is what Agent
Zero's loop does. Scoring is byte-exact stdout against each task's expected
output, identical to harness.score_aic.

Run:  python3 benchmarks/model_bench/eval_agent_zero.py [--iters 5] [--model ...]
Output: results_agent_zero.jsonl + a printed summary.
"""

import argparse
import json
import os
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

import harness  # noqa: E402
from tasks import TASKS, AIC_SYSTEM, AIC_SPEC_CONTEXT  # noqa: E402

SYSTEM = AIC_SYSTEM + "\n" + AIC_SPEC_CONTEXT


def user_prompt(task):
    return f"Task:\n{task['spec']}\n\nReturn ONLY the AIC program in a fenced ```aic block."


def feedback_prompt(task, first_try, last):
    parts = [user_prompt(task), f"\nYour program:\n```aic\n{first_try}\n```"]
    if last.get("compiled") is False:
        parts.append(f"\nIt FAILED TO COMPILE ({last.get('cat')}):\n{last.get('output') or ''}")
    elif not last.get("ran"):
        parts.append(f"\nIt COMPILED but FAILED TO RUN ({last.get('cat')}):\n{last.get('output') or ''}")
    else:
        parts.append(
            f"\nIt ran but printed the WRONG output.\n"
            f"Expected (byte-exact):\n```\n{task['expected']}```\n"
            f"Got:\n```\n{last.get('output')}```"
        )
    parts.append("\nFix it. Return ONLY the corrected AIC program in a fenced ```aic block.")
    return "".join(parts)


def solve(task, iters, model):
    first_try = None
    last = None
    for it in range(1, iters + 1):
        prompt = user_prompt(task) if it == 1 else feedback_prompt(task, first_try, last)
        try:
            reply = harness.chat(SYSTEM, prompt, model=model)
        except Exception as e:
            return dict(task_id=task["task_id"], tier=task["tier"], ok=False,
                        iterations=it, error=f"LLM: {e}")
        code = harness.extract_code(reply)
        if it == 1:
            first_try = code
        last = harness.score_aic(code, task)
        if last.get("ran") and last.get("output") == task["expected"]:
            return dict(task_id=task["task_id"], tier=task["tier"], ok=True,
                        iterations=it, cat="none")
    return dict(task_id=task["task_id"], tier=task["tier"], ok=False,
                iterations=iters, cat=last.get("cat") if last else "none")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--iters", type=int, default=5)
    ap.add_argument("--model", default=harness.MODEL)
    ap.add_argument("--limit", type=int, default=0, help="Run only the first N tasks")
    ap.add_argument("--out", default=os.path.join(HERE, "results_agent_zero.jsonl"))
    args = ap.parse_args()

    tasks = TASKS[: args.limit] if args.limit else TASKS
    rows = []
    t0 = time.perf_counter()
    for i, task in enumerate(tasks, 1):
        r = solve(task, args.iters, args.model)
        rows.append(r)
        print(f"[{i:2d}/{len(tasks)}] task {task['task_id']:2d} tier {task['tier']} "
              f"{'PASS' if r['ok'] else 'FAIL'} iters={r['iterations']}"
              + (f" cat={r['cat']}" if r.get('cat') else "")
              + (f" err={r['error']}" if r.get('error') else ""))

    with open(args.out, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")

    passed = sum(1 for r in rows if r["ok"])
    n = len(rows)
    by_tier = {}
    for r in rows:
        p, t = by_tier.get(r["tier"], (0, 0))
        by_tier[r["tier"]] = (p + (1 if r["ok"] else 0), t + 1)
    avg_iters = sum(r["iterations"] for r in rows) / n

    print("\n=== Agent Zero 30-task eval ===")
    print(f"model        : {args.model}")
    print(f"max iters    : {args.iters}")
    print(f"pass@1       : {passed}/{n} = {100.0*passed/n:.1f}%")
    print(f"avg iters    : {avg_iters:.2f}")
    print(f"wall time    : {time.perf_counter()-t0:.1f}s")
    for tier in sorted(by_tier):
        p, t = by_tier[tier]
        print(f"  tier {tier}: {p}/{t} = {100.0*p/t:.1f}%")
    print(f"results      : {args.out}")
    return 0 if passed == n else 0


if __name__ == "__main__":
    sys.exit(main())
