#!/usr/bin/env python3
"""measure_tokens.py - count real tokens for equivalent AIC / C / Python programs.

Uses the reference implementations from tasks.py (30 tasks, tiers 1-4), which
are byte-verified working programs in all three languages, then tokenizes each
with a real BPE tokenizer.

Tokenizers tried in order:
  tiktoken cl100k_base  (GPT-4 / Llama-3 family BPE)
  tiktoken o200k_base   (GPT-4o / o-series BPE)

If tiktoken is unavailable the script prints a clear fallback and exits 2 --
it never guesses counts.

ponytail: cl100k/o200k approximate Qwen and Llama vocabularies; swapping in an
exact HF tokenizer only changes the absolute numbers, not the AIC-vs-C-vs-Python
ratio, so this is honest enough for a language-shape claim.
"""

import argparse
import json
import os
import statistics
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from tasks import TASKS  # noqa: E402


def load_tokenizer(name):
    import tiktoken
    return tiktoken.get_encoding(name)


def table(enc, label, tasks):
    rows = []
    for t in tasks:
        n = {lang: len(enc.encode(t[lang])) for lang in ("aic", "c", "py")}
        rows.append(dict(task=t["task_id"], tier=t["tier"], **n))

    by_tier = {}
    for r in rows:
        by_tier.setdefault(r["tier"], []).append(r)

    print(f"\n=== {label} ===")
    print(f"{'tier':>4} {'n':>3} {'AIC':>8} {'C':>8} {'Py':>8} "
          f"{'AIC/C':>7} {'AIC/Py':>7}")
    allr = []
    for tier in sorted(by_tier):
        rs = by_tier[tier]
        a = statistics.mean(r["aic"] for r in rs)
        c = statistics.mean(r["c"] for r in rs)
        p = statistics.mean(r["py"] for r in rs)
        print(f"{tier:>4} {len(rs):>3} {a:>8.1f} {c:>8.1f} {p:>8.1f} "
              f"{a/c:>7.2f} {a/p:>7.2f}")
        allr.extend(rs)
    a = statistics.mean(r["aic"] for r in allr)
    c = statistics.mean(r["c"] for r in allr)
    p = statistics.mean(r["py"] for r in allr)
    print(f"{'ALL':>4} {len(allr):>3} {a:>8.1f} {c:>8.1f} {p:>8.1f} "
          f"{a/c:>7.2f} {a/p:>7.2f}")
    print(f"median AIC={statistics.median(r['aic'] for r in allr):.1f} "
          f"C={statistics.median(r['c'] for r in allr):.1f} "
          f"Py={statistics.median(r['py'] for r in allr):.1f}")
    wins_c = sum(1 for r in allr if r["aic"] < r["c"])
    wins_py = sum(1 for r in allr if r["aic"] < r["py"])
    print(f"tasks where AIC uses fewer tokens than C:      {wins_c}/{len(allr)}")
    print(f"tasks where AIC uses fewer tokens than Python: {wins_py}/{len(allr)}")
    return dict(label=label, rows=rows, mean_aic=a, mean_c=c, mean_py=p)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--json", default=None, help="also write per-task counts here")
    ap.add_argument("--limit", type=int, default=0)
    args = ap.parse_args()

    tasks = TASKS[: args.limit] if args.limit else TASKS
    encs = []
    for name in ("cl100k_base", "o200k_base"):
        try:
            encs.append((name, load_tokenizer(name)))
        except Exception as e:
            print(f"[warn] tokenizer {name} unavailable: {e}")
    if not encs:
        print("[ERR] no real tokenizer available. Run: pip install tiktoken")
        return 2

    out = {}
    for label, enc in encs:
        out[label] = table(enc, label, tasks)

    if args.json:
        with open(args.json, "w") as f:
            json.dump({k: v["rows"] for k, v in out.items()}, f, indent=1)
        print(f"\nper-task counts written to {args.json}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
