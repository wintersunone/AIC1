# AIC Benchmark — Harness Verification

**Verdict: (a) Harness is sound; AIC pass@1 really is ~0%.** The ground-truth
check (section 1) passes 30/30 through the exact pipeline; the Tier-1 failure
sample (section 2) shows genuine model syntax/idiom failures, not pipeline
artifacts; and spec-in-context (section 3) does not rescue performance.
Supporting evidence follows, in the order requested.

Scope note: diagnostic pass only. `aggregate.py` scoring logic and task
definitions were not modified. No cells were re-run (verdict is not (b)).
`results.jsonl` / `summary.json` / `report.md` unchanged.

---

## Section 1 — Ground-truth toolchain check (GATE)

**Result: 30/30.** All 30 reference AIC solutions (the known-correct
implementations in `tasks.py` from which expected output was derived) were
pushed through the *exact* harness path: `extract_code()` → `score_aic()`
(writes `prog.aic` to a fresh tempdir, `python3 aic.py build prog.aic -o
prog.elf` from the project root so `lib/` imports resolve, runs the ELF in the
tempdir with the fixed file/stdin inputs, 5s run timeout, byte-exact
comparison). All 30 compiled, ran, and produced byte-exact expected output
(`cat=none`, `passed=True`).

This is a positive control: extraction, compiler invocation, sandbox,
timeout, and the scorer are all exercised on code known to be correct.
A 30/30 result rules out the entire downstream pipeline (compiler, sandbox,
scoring, extraction) as the cause of the 0.33% model pass rate.

Reproducible: `python3 verify_harness.py` (sections 1/3/4/5 of this check).

## Section 2 — Manual inspection of 10 Tier-1 AIC failures

10 failing records from `results.jsonl` (`tier==1`, `language=="aic"`,
`passed_functional_test==false`), spread across both conditions and all five
error categories. `EXPECTED` vs `ACTUAL` shown for the silent-wrong ones.

| # | record | category | candidate code (abridged) | plausible AIC? | actual output | consistent? |
|---|--------|----------|---------------------------|----------------|---------------|-------------|
| 1 | t1 Z s0 | none (silent) | correct `factorial` recursion, then `[. "3628800\n"]` | yes — but **hardcodes the answer** as a string literal | EXPECTED `3628800\n` / ACTUAL `3628800\n\n` | yes — embedded `\n` + the printer's own newline = double newline |
| 2 | t1 Z s2 | none (silent) | same: correct recursion, `[. "3628800\n"]` hardcoded | yes — same hardcode | `3628800\n` / `3628800\n\n` | yes |
| 3 | t1 Z s1 | none (silent) | correct recursion, `[. "Factorial(10) =" res "\n"]` | yes — label idiom copied from the prompt's few-shot example | `3628800\n` / `Factorial(10) = 3628800 \n\n` | yes — multi-arg `[.]` space-joins, then double newline |
| 4 | t1 Z s3 | none (silent) | correct `fact`, `[. "Factorial(10) = " res "\n"]` | yes — label idiom | `3628800\n` / `Factorial(10) =  3628800 \n\n` | yes |
| 5 | t1 S s1 | none (silent) | correct `factorial`, `[. "Factorial(10) =" res "\n"]` | yes — **label idiom persists even with full spec in context** | `3628800\n` / `Factorial(10) = 3628800 \n\n` | yes |
| 6 | t2 S s0 | none (silent) | correct `fib_iter`, then `[. "75025" "\n"]` — **hardcoded** | yes — hardcode | `75025\n` / `75025 \n\n` | yes — space-join + double newline |
| 7 | t3 Z s0 | CODEGEN | `is_prime` loop is fine, but `[! nums [V 5 1 2 13 15 97]]` and `[! limit [sqrt n]]` | recognizable intent, invalid AIC: `V` is the str→int converter (takes one arg), `sqrt` is not a stdlib op | `""` (build failed) | yes — compiler rejects exactly the misused ops |
| 8 | t4 S s0 | RUNTIME | `gcd` via `[! t [K a b]]` — ABI-compliant binding, but `K` as a two-arg numeric op is not what the toolchain provides | recognizable Euclidean-gcd intent | `""` (crashed after building) | yes — builds, crashes at the unknown op |
| 9 | t3 S s0 | PARSE | `is_prime` with `[W [D ...` — **while-loop missing its condition** | recognizable intent, malformed | `""` (parse failed) | yes — parser flags the malformed `[W` |
| 10 | t8 Z s2 | SEMANTIC | `popcount` with `[! lsb [^ & bit 1]]` — `[^]` is return, `&` is not an op; also prints label `"Fib(10) ="` (few-shot label copy-pasted onto an unrelated task) | recognizable intent, invalid | `""` | yes — semantic check fires on the `[^ & ...]` |

**Conclusion for section 2.** Every one of the 10 is a recognizable attempt
at AIC — none is garbled or off-language, and none is corrupted by the
pipeline. The failures divide into two genuine model-side classes:

- **Syntax/stdlib unfamiliarity (4/10, and 57% of all 300 AIC samples
  overall):** misuse of real ops (`V`), invented ops (`sqrt`, `mod`, `//`,
  `&` as an operator, `K` as numeric), missing loop conditions. The
  compiler's stated reason matches what is actually wrong in each case.
- **Print-idiom / byte-exact mismatch (6/10, and 49 of 80 Tier-1 failures
  overall are `error_category=none` i.e. ran-clean):** the code computes the
  right value (or the model hardcodes it) but AIC's `[.]` always appends a
  newline, so the model's natural idioms — embedding `"\n"` in the printed
  string, multi-arg label prints (`"Factorial(10) =" res "\n"`), which the
  prompt's own few-shot example demonstrates — *cannot* produce the
  byte-exact `3628800\n`.

No harness artifact appears: no false-positive compiler rejection of
correct code, no extraction corruption, no scorer mismatch.

Quantified across all 300 AIC samples (recompiled through `score_aic`):
**170/300 (57%) fail to build; 97/300 (32%) compile and run; of those 97,
63 (64.9%) compute a numerically-correct answer** (digit-string comparison
ignoring labels/spacing/newlines) and fail only on byte-exact print format.
So "~0% pass" is real under the mandated byte-exact protocol, but the model
is *not* uniformly incapable of AIC — the near-zero is the product of (i)
57% syntax/stdlib failures and (ii) a print-idiom that the byte-exact scorer
cannot accept.

## Section 3 — Zero-shot vs spec-in-context delta (isolated)

AIC pass@1 (corrected mean@5 metric):

| scope | Condition Z | Condition S |
|-------|-------------|-------------|
| all tiers (150 samples each) | **0.00% (0/150)** | **0.67% (1/150)** |
| Tier 1 only (40 each) | 0.00% (0/40) | 0.00% (0/40) |

**Condition S is not meaningfully higher than Z anywhere.** The single pass
in the whole 900 is t24 (Tier 3, I/O file round-trip, S-condition s2): a
program that imports `lib/io.aic`/`lib/string.aic`, binds every libc op to a
local (ABI rule), and prints exactly `1\n`. That is precisely the task where
Condition S's added stdlib documentation is actionable.

The protocol says S≈Z should point toward a harness/extraction issue. That
inference does **not** hold here, for two evidenced reasons: (1) section 1's
30/30 positive control proves the downstream pipeline is sound; (2) section 2
shows *why* S cannot help on Tier 1 — the S-condition Tier-1 code compiles at
the same rate and runs cleanly; it fails the byte-exact check on the
label/newline print idiom, which the full grammar in context does not
correct (and which the prompt's own few-shot example actively demonstrates —
`[. "Fib(10) =" res "\n"]` — an idiom that could never satisfy a
byte-exact bare-number expectation). Syntactic validity *is* achieved some
of the time (32% of AIC samples compile), so the S≈Z result reflects the
scoring protocol + print idiom, not a broken extraction/compilation path.

## Section 4 — Model inventory

**One distinct model.** All 900 generations came from
`qwen3.8-27b-sglang` (the endpoint at `http://100.124.137.82:8888`). The
archived thinking-on partial run (`results_thinking_on_partial.jsonl`, 360
cells, excluded from results) used the same single model. This is a limitation
repeated here as required: the spec asked for ≥2 models across capability
levels; only one was available. The 0.33% figure is a property of *this*
model, not of AIC generally.

## Section 5 — Extraction step spot-check

5 fresh, pre-extraction model responses for Tier-1 AIC tasks (condition Z,
re-queried live through the same `build_messages`/`chat`/`extract_code` path;
full copies in `verify_raw_responses.json`):

1. **t1** — raw 120 B, **unfenced** (bare AIC, zero prose). Extraction = whole text + trailing newline. Correct isolation.
2. **t2** — raw 192 B, unfenced. Extraction = identity. Correct.
3. **t3** — raw 274 B, unfenced. Extraction = identity. Correct.
4. **t4** — raw 153 B, **fenced** (```` ```aic ```` block, zero surrounding prose). Extraction = block interior (143 B). Correct.
5. **t5** — raw 150 B, unfenced. Extraction = identity. Correct.

In all 5 cases the extraction produced exactly the code the model intended:
no stray prose captured, no truncation, no wrong-block selection (no sample
contained a second/corpus block), no LLM errors. Because most responses come
back unfenced, the "first fenced block" rule effectively returns the whole
response; the one fenced sample was handled correctly. **Extraction is
ruled out as a failure source.**

## Section 6 — Verdict

**(a) Harness is sound; AIC pass@1 really is ~0%.**

Evidence chain: section 1 = 30/30 positive control (pipeline exonerated);
section 2 = every inspected failure is a genuine model-side syntax/stdlib or
print-idiom defect, with compiler reasons matching the code's actual defects
(no false positives); section 3 = spec-in-context does not rescue (explained
by the byte-exact protocol + the model's print idiom, not by a pipeline
fault); section 5 = extraction verified clean on fresh responses.

**What this means for the Tier-4 ABI-invariant hypothesis.** It is **not
supported**. AIC failures are uniform across every tier (Tier 1 0/40 per
condition, Tier 4 0/30 per condition) — the designed Tier-4 ABI-landmine
concentration does not appear because the model never reaches compilable
code in a tier-specific way. The finding is the weaker, more general one:
*uniform syntax/stdlib-unfamiliarity plus an unsatisfiable print idiom under
byte-exact scoring*. `findings.md` (commit 7ef819a) already states this
directly in its section (b) — "failures are spread evenly across all tiers…
the Tier 4 ABI-landmine tasks did NOT show the designed concentrated
weakness… the dominant failure is syntax/stdlib API" — so no narrative
change was needed; this verification supplies the 30/30 positive control and
the 57%/32%/65% decomposition that back it.

**Caveat that does not change the number but must accompany it:** under the
mandated byte-exact protocol, 64.9% of *compiled* AIC programs compute the
correct answer and fail only on output formatting (label prefixes, embedded
`\n` doubling, hardcoded literals). If a future protocol uses
whitespace-normalized or value-based matching, AIC's effective score rises
substantially while the syntax-failure rate (57%) stays the dominant real
obstacle. The prompt's own few-shot example demonstrates the failing print
idiom; flagging it for any future prompt revision (out of scope for this
pass — the prompt is fixed by the protocol).

## Artifacts

- `verification.md` — this file.
- `verify_harness.py` — re-runnable diagnostic (sections 1, 3, 4, 5).
- `verify_raw_responses.json` — the 5 raw pre-extraction responses from section 5.

No changes to `aggregate.py`, `tasks.py`, `harness.py` scoring paths,
`results.jsonl`, `summary.json`, `report.md`, or `test_aggregate.py`.
