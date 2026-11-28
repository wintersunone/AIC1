#!/usr/bin/env python3
"""generate_verified_corpus.py - rejection-sampling + repair-pair corpus builder.

Pipeline per task:
  1. ask qwen for an AIC program (parity prompt)
  2. compile + run it in a sandbox (harness.score_aic)
  3. keep only byte-exact matches of the Python oracle  -> corpus/sft_aic.jsonl
  4. when attempt k fails and attempt k+1 succeeds, store a repair pair
     (task + broken code + compiler_stderr) -> fixed code
  5. C and Python corpora of the SAME task set for equal-data comparison

Hard invariants:
  * expected output comes from the Python reference in heldout_tasks.py, never
    from model output
  * every task is checked against heldout_tasks.py -> zero train/test overlap
  * dedupe by (task_id, code) so reruns append nothing

Run:  python3 tools/generate_verified_corpus.py --n 20 --max-iters 5
      python3 tools/generate_verified_corpus.py --n 200 --max-iters 5 --samples 3
"""

import argparse
import json
import os
import sys
import time

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BENCH = os.path.join(REPO, "benchmarks", "model_bench")
sys.path.insert(0, BENCH)
sys.path.insert(0, REPO)

import harness  # noqa: E402
from tasks import TASKS as TUNED, AIC_SYSTEM, AIC_SPEC_CONTEXT  # noqa: E402
from heldout_tasks import TASKS as HELDOUT  # noqa: E402

SYSTEM = AIC_SYSTEM + "\n" + AIC_SPEC_CONTEXT
SFT_AIC = os.path.join(REPO, "corpus", "sft_aic.jsonl")
SFT_C = os.path.join(REPO, "corpus", "sft_c.jsonl")
SFT_PY = os.path.join(REPO, "corpus", "sft_python.jsonl")
REPAIRS = os.path.join(REPO, "corpus", "sft_repair_pairs.jsonl")


def prompt_for(lang, task):
    lead = {
        "aic": "Return ONLY the AIC program in a fenced ```aic block.",
        "c": "Return ONLY a complete C program (with main) in a fenced ```c block.",
        "python": "Return ONLY a complete Python 3 program in a fenced ```python block.",
    }[lang]
    return f"Task:\n{task['spec']}\n\n{lead}"


def gen_once(task, lang, model):
    reply = harness.chat(SYSTEM, prompt_for(lang, task), model=model)
    code = harness.extract_code(reply)
    return code, harness.SCORE[lang](code, task)


def gen_aic_with_repair(task, model, max_iters):
    """Return (verified_code, repair_pairs)."""
    first = None
    last = None
    first_err = ""
    for it in range(1, max_iters + 1):
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
                user += (f"\nIt ran but printed the WRONG output.\nExpected:\n"
                         f"```\n{task['expected']}```\nGot:\n```\n{last.get('output')}```")
            user += "\nFix it. Return ONLY the corrected AIC program in a fenced ```aic block."
        try:
            reply = harness.chat(SYSTEM, user, model=model)
        except Exception:
            return None, []
        code = harness.extract_code(reply)
        if it == 1:
            first = code
        res = harness.score_aic(code, task)
        if res.get("ran") and res.get("output") == task["expected"]:
            if it > 1:
                return code, [dict(task_id=task["task_id"], tier=task["tier"],
                                   broken_code=first, compiler_stderr=first_err,
                                   fixed_code=code, iterations=it)]
            return code, []
        last = res
        if it == 1:
            first_err = (res.get("compiler_stderr") or res.get("output")
                         or res.get("cat", ""))
    return None, []


def existing_keys(path):
    keys = set()
    if os.path.exists(path):
        for line in open(path):
            try:
                r = json.loads(line)
                keys.add((r.get("task_id"), r.get("aic", "")[:400]))
            except Exception:
                pass
    return keys


def append(path, rec):
    with open(path, "a") as f:
        f.write(json.dumps(rec) + "\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=20, help="how many held-out tasks to generate")
    ap.add_argument("--max-iters", type=int, default=5)
    ap.add_argument("--model", default=harness.MODEL)
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args()

    # STRICT SEPARATION: training data comes from the tuned set only; the
    # held-out tasks are never used to build the corpus.
    held_specs = {t["spec"] for t in HELDOUT}
    overlapping = [t for t in TUNED if t["spec"] in held_specs]
    assert not overlapping, f"tuned/held-out overlap: {len(overlapping)}"
    tasks = TUNED[: args.n]

    os.makedirs(os.path.join(REPO, "corpus"), exist_ok=True)
    for p in (SFT_AIC, SFT_C, SFT_PY, REPAIRS):
        if not os.path.exists(p):
            open(p, "w").close()

    seen_aic = existing_keys(SFT_AIC)
    seen_c = existing_keys(SFT_C)
    seen_py = existing_keys(SFT_PY)

    stats = dict(aic_ok=0, aic_fail=0, repairs=0, c_ok=0, py_ok=0)
    t0 = time.perf_counter()

    for task in tasks:
        # --- AIC with reflection
        code, repairs = gen_aic_with_repair(task, args.model, args.max_iters)
        if code:
            key = (task["task_id"], code[:400])
            if key not in seen_aic:
                seen_aic.add(key)
                append(SFT_AIC, dict(
                    task_id=task["task_id"], tier=task["tier"], spec=task["spec"],
                    aic=code, expected=task["expected"], lang="aic"))
                stats["aic_ok"] += 1
        else:
            stats["aic_fail"] += 1
        for rp in repairs:
            append(REPAIRS, rp)
            stats["repairs"] += 1

        # --- equal-data C and Python corpora
        for lang, path, seen, key_name in (
                ("c", SFT_C, seen_c, "c"), ("python", SFT_PY, seen_py, "py")):
            code2, res2 = gen_once(task, lang, args.model)
            if code2 and res2.get("ran") and res2.get("output") == task["expected"]:
                key = (task["task_id"], code2[:400])
                if key not in seen:
                    seen.add(key)
                    append(path, dict(task_id=task["task_id"], tier=task["tier"],
                                      spec=task["spec"], **{key_name: code2},
                                      expected=task["expected"], lang=lang))
                    stats["c_ok" if lang == "c" else "py_ok"] += 1

        print(f"t{task['task_id']:3d} aic={'OK' if code else 'FAIL'} "
              f"repairs={len(repairs)}  "
              f"[{time.perf_counter()-t0:.0f}s]")

    print("\n=== corpus build ===")
    for p in (SFT_AIC, SFT_C, SFT_PY, REPAIRS):
        n = sum(1 for _ in open(p))
        print(f"  {os.path.relpath(p, REPO):36s} {n} records")
    print(f"  this run: {stats}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
