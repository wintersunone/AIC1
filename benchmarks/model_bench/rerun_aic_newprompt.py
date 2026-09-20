#!/usr/bin/env python3
"""Re-run all 300 AIC cells under the NEW prompt (corrected FEWSHOT + full S
language reference) to a fresh results file. Leaves the official 900-cell
results.jsonl untouched. Same scoring path (score_aic), same extraction.

Usage: python3 rerun_aic_newprompt.py --workers 6
"""
import os, sys, json, time, argparse, threading
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import harness
from tasks import TASKS

OUT = os.path.join(HERE, "results_aic_newprompt.jsonl")
LOG = os.path.join(HERE, "run_aic_newprompt.log")
harness.OUT = OUT
harness.LOG = LOG

lock = threading.Lock()

def progress(done, total):
    if done % 25 == 0 or done == total:
        with lock:
            open(LOG, "a").write(time.strftime("%H:%M:%S") + f" progress {done}/{total}\n")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=6)
    ap.add_argument("--restart", action="store_true", help="ignore existing done cells")
    args = ap.parse_args()

    cells = []
    for task in TASKS:
        for cond in ("zero_shot", "spec_in_context"):
            for s in range(5):
                cells.append((task, "aic", cond, s))

    done = set()
    if not args.restart and os.path.exists(OUT):
        for line in open(OUT):
            try:
                r = json.loads(line)
                if (r.get("raw_candidate_code") or "").strip():
                    done.add((r["task_id"], r["language"], r["condition"], r["sample_index"]))
            except Exception:
                pass
    todo = [c for c in cells if (c[0]["task_id"], c[1], c[2], c[3]) not in done]
    with lock:
        open(LOG, "w").write(time.strftime("%H:%M:%S") +
            f"START aic-newprompt {len(todo)} cells ({len(done)} done), "
            f"workers={args.workers}, model={harness.MODEL}\n")
    if not todo:
        print("nothing to do"); return

    from concurrent.futures import ThreadPoolExecutor, as_completed
    t0 = time.time()
    with ThreadPoolExecutor(max_workers=args.workers) as ex:
        futs = {ex.submit(harness.process_cell, *c): c for c in todo}
        for i, fu in enumerate(as_completed(futs), 1):
            try:
                fu.result()
            except Exception as e:
                import traceback
                with lock:
                    open(LOG, "a").write(f"CELL EXCEPTION {futs[fu]}: {e}\n{traceback.format_exc()[-1200:]}\n")
            progress(i, len(todo))
    with lock:
        open(LOG, "a").write(time.strftime("%H:%M:%S") + f" DONE in {(time.time()-t0)/60:.1f} min\n")

    # quick per-tier summary
    recs = [json.loads(l) for l in open(OUT)]
    import collections
    tt = {t["task_id"]: t["tier"] for t in TASKS}
    for tier in (1, 2, 3, 4):
        v = [r for r in recs if tt[r["task_id"]] == tier]
        p = sum(1 for r in v if r["passed_functional_test"] is True)
        z = [r for r in v if r["condition"] == "zero_shot"]
        s = [r for r in v if r["condition"] == "spec_in_context"]
        print(f"Tier {tier}: {p}/{len(v)} pass  (Z {sum(r['passed_functional_test'] for r in z)}/{len(z)}, "
              f"S {sum(r['passed_functional_test'] for r in s)}/{len(s)})")
    p = sum(1 for r in recs if r["passed_functional_test"] is True)
    print(f"TOTAL AIC newprompt: {p}/{len(recs)} = {100*p/len(recs):.2f}%")

if __name__ == "__main__":
    main()
