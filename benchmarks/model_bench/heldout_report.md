# Held-Out Evaluation (50 tasks, never used for prompt tuning)

Model: `qwen3.8-27b-sglang` · samples/cell: 1 · wall: 2071s

| Cell | pass@1 | 95% Wilson CI | silent wrong |
| :--- | ---: | :--- | ---: |
| aic | 0/50 = 0.0% | 0.0–7.1% | 45 |
| Agent Zero (5 retries) | 29/50 = 58.0% | 44.2–70.6% | 18 |
| c | 50/50 = 100.0% | 92.9–100.0% | 0 |
| python | 41/50 = 82.0% | 69.2–90.2% | 4 |

| Tier | aic | agent_zero | c | python |
| ---: | ---: | ---: | ---: | ---: |
| 1 | 0/10 | 2/10 | 10/10 | 10/10 |
| 2 | 0/10 | 5/10 | 10/10 | 9/10 |
| 3 | 0/16 | 13/16 | 16/16 | 11/16 |
| 4 | 0/14 | 9/14 | 14/14 | 11/14 |

Raw records: `results_heldout.jsonl`
