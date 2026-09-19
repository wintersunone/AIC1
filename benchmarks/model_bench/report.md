# AIC Benchmark — Model-Generation Results (Part B)

Model: `qwen3.8-27b-sglang`  ·  Cells: 72 (task×lang×cond) · 301 samples


## 1. pass@1 by tier × language × condition (mean over 5 samples)

### Tier 1

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=2) | 100.0% (n=8) | 100.0% (n=8) |
| spec in context |   0.0% (n=2) | 100.0% (n=8) | 100.0% (n=8) |

### Tier 2

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=0) | 100.0% (n=7) | 100.0% (n=7) |
| spec in context |   0.0% (n=2) | 100.0% (n=7) | 100.0% (n=7) |

### Tier 3

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=0) |   0.0% (n=0) | 100.0% (n=2) |
| spec in context |   0.0% (n=1) |   0.0% (n=0) | 100.0% (n=3) |

### Tier 4

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% (n=0) |   0.0% (n=0) |   0.0% (n=0) |
| spec in context |   0.0% (n=0) |   0.0% (n=0) |   0.0% (n=0) |


## 2. Silent-wrong-output rate by tier × language × condition

(_fraction of samples that ran to completion, no error, but output ≠ expected_)

### Tier 1

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot | 100.0% |   0.0% |  12.5% |
| spec in context | 100.0% |   0.0% |  12.5% |

### Tier 2

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% |   0.0% |   0.0% |
| spec in context | 100.0% |   0.0% |   0.0% |

### Tier 3

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% |   0.0% |   0.0% |
| spec in context | 100.0% |   0.0% |   0.0% |

### Tier 4

| condition | AIC | C | Python |
|---|---|---|---|
| zero shot |   0.0% |   0.0% |   0.0% |
| spec in context |   0.0% |   0.0% |   0.0% |


## 3. Overall language comparison (all tiers)

| language | pass@1 | silent-wrong |
|---|---|---|
| aic |   0.0% | 100.0% |
| c | 100.0% |   0.0% |
| python | 100.0% |   5.7% |

**AIC condition effect (Z→S):** 0.0% → 0.0%  (Δ +0.0 pts)


## 4. Data quality: LLM/endpoint failures (excluded from scoring)

Cells where the model/endpoint returned no code (timeout, overload, empty content). These are infra failures, NOT model answers, and are excluded from pass@1 and silent-wrong above.

| language | zero_shot | spec_in_context |
|---|---|---|
| aic | 115 | 108 |
| c | 59 | 47 |
| python | 38 | 40 |

Total LLM-failed cells: **407** out of 900 target.


## 5. AIC failure decomposition (non-passing samples, LLM failures excluded)

| failure class | count | % of AIC non-pass |
|---|---|---|
| format-only (whitespace) — logic correct | 16 | 94.1% |
| genuinely wrong value | 0 | 0.0% |
| compile/runtime error | 1 | 5.9% |

_AIC non-passing samples (LLM failures excluded): 17_

_Interpretation: if most AIC failures are format-only, the dominant AIC-specific obstacle is the print/whitespace convention, not logic. If most are compile errors, it is syntax. If genuinely-wrong-value dominates, it is algorithmic._


## 6. AIC error-category breakdown (by failure)

| error_category | count |
|---|---|
| none | 16 |
| PARSE | 1 |
