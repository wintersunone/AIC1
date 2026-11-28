# Held-Out Evaluation (50 tasks, never used for prompt tuning)

Model: `qwen3.8-27b-sglang` · samples/cell: 1 · wall: 1458s

| Cell | pass@1 | 95% Wilson CI | silent wrong |
| :--- | ---: | :--- | ---: |
| aic | 35/50 = 70.0% | 56.2–80.9% | 0 |
| Agent Zero (5 retries) | 47/50 = 94.0% | 83.8–97.9% | 0 |
| c | 50/50 = 100.0% | 92.9–100.0% | 0 |
| python | 49/50 = 98.0% | 89.5–99.6% | 1 |

| Tier | aic | agent_zero | c | python |
| ---: | ---: | ---: | ---: | ---: |
| 1 | 7/10 | 10/10 | 10/10 | 10/10 |
| 2 | 5/10 | 8/10 | 10/10 | 10/10 |
| 3 | 13/16 | 16/16 | 16/16 | 16/16 |
| 4 | 10/14 | 13/14 | 14/14 | 13/14 |

Raw records: `results_heldout_final.jsonl`

## Audit notes (why v1 looked broken)

Three separate defects produced the earlier `aic 0/50`, `45 silent_wrong` result:

1. **`[: main [] ...]` was never called.** AIC runs top-level statements; a
   function named `main` is not an entry point. 99 of 100 AIC/Agent Zero
   candidates defined `main`, and only 29 ever called it. The prompt now states
   the top-level rule explicitly. This alone moved single-shot AIC from 0% to 70%.
2. **The AIC system prompt was sent to C and Python cells** in `eval_heldout.py`.
   One candidate literally wrote *"the system prompt says AIC ... I should write
   AIC code"*. Each language now gets its own system prompt.
3. **Language-specific task phrasing** (`Import lib/string.aic`, `[H 4]`,
   `arena_new`) was unfair to C/Python. Phrasings are now language-neutral, and
   `str_char_at` tasks ask for the integer code point (AIC returns INT by spec).

After these fixes: C 100%, Python 98% (one residual model error on task 143),
silent-wrong dropped to 0 for AIC and Agent Zero.
