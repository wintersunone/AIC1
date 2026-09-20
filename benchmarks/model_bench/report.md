# AIC Benchmark — Model-Generation Results (Part B)

Model: `qwen3.8-27b-sglang`  ·  Cells: 180 (task×lang×cond) · 900 samples


## 1. pass@1 by tier × language × condition (mean over 5 samples)

### Tier 1

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=8) | 100.0% (n=8) |  97.5% (n=8) |
| spec in context |   0.0% (n=8) | 100.0% (n=8) |  97.5% (n=8) |

### Tier 2

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=8) |  97.5% (n=8) | 100.0% (n=8) |
| spec in context |   0.0% (n=8) |  97.5% (n=8) |  95.0% (n=8) |

### Tier 3

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=8) |  55.0% (n=8) |  80.0% (n=8) |
| spec in context |   2.5% (n=8) |  57.5% (n=8) |  87.5% (n=8) |

### Tier 4

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=6) |  96.7% (n=6) | 100.0% (n=6) |
| spec in context |   0.0% (n=6) | 100.0% (n=6) | 100.0% (n=6) |


## 2. Silent-wrong-output rate by tier × language × condition

(_fraction of samples that ran to completion, no error, but output ≠ expected_)

### Tier 1

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |  72.5% |   0.0% |   2.5% |
| spec in context |  50.0% |   0.0% |   2.5% |

### Tier 2

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |  12.5% |   0.0% |   0.0% |
| spec in context |  30.0% |   0.0% |   0.0% |

### Tier 3

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   2.5% |   0.0% |   0.0% |
| spec in context |  20.0% |   2.5% |   0.0% |

### Tier 4

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   6.7% |   0.0% |   0.0% |
| spec in context |  60.0% |   0.0% |   0.0% |


## 3. Overall language comparison (all tiers)

| language | pass@1 | silent-wrong |
|---|---|---|
| aic |   0.3% |  31.7% |
| c |  87.3% |   0.3% |
| python |  94.3% |   0.7% |

**AIC condition effect (Z→S):** 0.0% → 0.7%  (Δ +0.7 pts)


## 4. Data quality: LLM/endpoint failures (excluded from scoring)

Cells where the model/endpoint returned no code (timeout, overload, empty content). These are infra failures, NOT model answers, and are excluded from pass@1 and silent-wrong above.

| language | zero_shot | spec_in_context |
|---|---|---|
| aic | 0 | 0 |
| c | 0 | 0 |
| python | 0 | 0 |

Total LLM-failed cells: **0** out of 900 target.


## 5. AIC failure decomposition (non-passing samples, LLM failures excluded)

| failure class | count | % of AIC non-pass |
|---|---|---|
| format-only (whitespace) — logic correct | 53 | 17.7% |
| genuinely wrong value | 42 | 14.0% |
| compile/runtime error | 204 | 68.2% |

_AIC non-passing samples (LLM failures excluded): 299_

_Interpretation: if most AIC failures are format-only, the dominant AIC-specific obstacle is the print/whitespace convention, not logic. If most are compile errors, it is syntax. If genuinely-wrong-value dominates, it is algorithmic._


## 6. AIC error-category breakdown (by failure)

| error_category | count |
|---|---|
| CODEGEN | 141 |
| none | 95 |
| RUNTIME | 33 |
| SEMANTIC | 24 |
| PARSE | 6 |
