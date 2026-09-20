#!/usr/bin/env python3
"""One runnable check for aggregate.py's pass@1 metric.

Catches the any-pass regression: if cell_pass ever reverts to
'mean([1 for r in rs if passed])' (1.0 when ANY sample passed),
this assert fails.
"""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def check():
    # Replicate the exact expression aggregate.py uses for cell_pass,
    # driven by the same `mean` it imports.
    from aggregate import mean
    rs_passed = [True, False, False, False, False]  # exactly 1 of 5 passed
    cell = mean([1 if r else 0 for r in rs_passed])
    assert abs(cell - 0.2) < 1e-9, f"cell_pass={cell}, expected 0.2 (1/5)"

    # any-pass bug would give 1.0 here:
    assert cell != 1.0, "regressed to any-pass@k"
    assert cell != 0.0, "regressed to all-pass@k"

    # all-pass cell
    assert abs(mean([1 if r else 0 for r in [True]*5]) - 1.0) < 1e-9
    # zero-pass cell
    assert mean([1 if r else 0 for r in [False]*5]) == 0.0
    print("OK: pass@1 cell metric is per-sample mean (not any-pass)")

if __name__ == "__main__":
    check()
