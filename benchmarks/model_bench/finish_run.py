#!/usr/bin/env python3
"""Finish the 900-cell benchmark with per-language concurrency.
C/Python calls are fast (~17-31s) -> 8 parallel workers.
AIC calls are slow (~150-400s) -> 2 parallel workers, so they don't queue
behind each other (queueing is what caused the 407 empty cells).
Appends to results.jsonl; resume-safe (completed_cells() skips done cells).
"""
import os, sys, time, threading
from concurrent.futures import ThreadPoolExecutor, as_completed
os.chdir(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import harness

def run_lang(langs, workers):
    done = harness.completed_cells()
    todo = [c for c in harness.all_cells()
            if c[1] in langs and (c[0]["task_id"], c[1], c[2], c[3]) not in done]
    harness.log(f"[{langstr}] starting {len(todo)} cells, {workers} workers")
    t0 = time.time()
    with ThreadPoolExecutor(max_workers=workers) as ex:
        futs = [ex.submit(harness.process_cell, *c) for c in todo]
        for i, fu in enumerate(as_completed(futs), 1):
            try:
                fu.result()
            except Exception as e:
                import traceback
                harness.log(f"[{langstr}] CELL EXC: {e}\n{traceback.format_exc()[-800:]}")
            if i % 10 == 0 or i == len(todo):
                harness.log(f"[{langstr}] {i}/{len(todo)} ({(time.time()-t0)/60:.0f}m)")
    harness.log(f"[{langstr}] done in {(time.time()-t0)/60:.0f}m")

langstr = "c+py"
run_lang(("c", "python"), 4)

# now AIC (GPU is free of C/Python load -> faster AIC calls)
done = harness.completed_cells()
langstr = "aic"
run_lang(("aic",), 2)

harness.log("ALL DONE")
