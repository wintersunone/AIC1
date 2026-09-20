# AIC vs C vs Python: LLM code-generation benchmark — Findings

**Setup.** 30 deterministic tasks (4 tiers), 3 languages, 2 prompt conditions
(zero-shot Z / spec-in-context S), k=5 samples per cell = 900 generations.
Model: `qwen3.8-27b-sglang` (single model — a limitation; only one model was
available). Scoring is byte-exact against fixed expected output, per the
protocol. Model thinking mode was disabled uniformly for all languages
(documented below). 900/900 cells produced a valid model answer (0 endpoint
failures in the final run; an earlier thinking-on partial run, in which 57% of
cells failed due to endpoint timeouts, is archived as
`results_thinking_on_partial.jsonl` and was excluded from these results).

## (a) Does AIC pass@1 differ meaningfully from C/Python?

Yes — drastically. Overall pass@1 (mean over 5 samples, all tiers):
**AIC 0.33% (1/300), C 87.3% (262/300), Python 94.3% (283/300)**.
The AIC deficit is present in *every* tier, including Tier 1 (factorial,
fibonacci, popcount — where C is 100% and Python 97.5%). AIC's only pass in
300 samples was task 24 (io file round-trip) under spec-in-context. So on this
model, AIC is not close to C/Python for LLM generation, and the deficit is not
concentrated in the hard tiers: it is total. (The C/Python gap itself is real
but small — Python leads by 7 pts, driven almost entirely by Tier 3, where
Python 83.8% beats C 56.2%.)

## (b) Tier 4 landmine: concentrated weakness or even spread?

Failures are spread evenly across all tiers (AIC is 0–2.5% in every tier),
which means the **syntax itself is the obstacle**, not a specific invariant.
The Tier 4 ABI-landmine tasks (25-30, which are phrased to tempt the model
into nesting libc-bound ops) did NOT show the designed concentrated weakness:
Tier 4 AIC pass@1 (0%) is the same as Tier 1 (0%). When the model's AIC code
does compile, it does not demonstrably get the binding rule wrong more often
than it gets anything else wrong — it rarely produces compilable AIC at all.
The decomposition of 299 non-passing AIC samples: **68.2% compile/codegen
error, 14.0% genuinely wrong value, 17.7% format-only (logic correct,
whitespace mismatch)**. The dominant failure is *syntax/stdlib API* (e.g.
wrong stdlib function arity, misused record/word ops, `N`/`str_cat` usage),
not the specific ABI invariant. The landmine *is* a real checkable failure
mode — the compiler catches the unsafe nesting in some forms (Tier 5, task
#32 showed it can also slip through silently) — but in model generation it is
downstream of a bigger problem: the model rarely reaches code that compiles.

Note the genuine language gap this run exposes: **Tier 3 (records/pointers)
is where C collapses** (55–58% vs 100% in Tier 1/2/4) — the C model output
gets pointer/record semantics wrong on the same tasks it nails trivially.
AIC does not "fail worse" in Tier 3 relative to its own other tiers (it is 0
there as it is everywhere), but the tier that distinguishes C from Python is
the memory-semantics tier, not the ABI-landmine tier.

## (c) Does Condition S (spec-in-context) improve AIC?

Barely: **0.0% → 0.7%** (Δ +0.7 pts, the single passing sample was under S).
The full grammar/stdlib/ABI background in the prompt did not make AIC
learnable-on-demand for this model. C/Python do not need the extra context
(their pass rates are ~flat between conditions, 87–94%).

## (d) Silent-wrong-output rate

Overall (fraction of all samples that ran with no error but produced output
≠ expected): **AIC 31.7% (95/300), C 0.3% (1/300), Python 0.7% (2/300)**.
The AIC silent-wrong rate is soundness-critical: a verifier that only checks
"does it run without error" would be confidently wrong ~1 in 3 times on AIC
outputs. Within AIC the silent-wrong rate *rises* for the spec-conditioned
memory tasks (Tier 4: 6.7% Z, 60.0% S) — programs that manipulate
records/buffers often run "cleanly" and print the wrong number. This is the
single most important property for using AIC as an RL verifier: the error
taxonomy (typed `[ERR]`) catches most logic-level mistakes, but silent wrong
values are common enough that exact-output checking is mandatory, not
optional.

## Caveats (documented, not adjusted around)

1. **Single model** (qwen3.8-27b-sglang). The spec asked for ≥2 models across
   capability levels; only one endpoint was available. Results may not hold
   for stronger models — a 27B model struggling with AIC syntax does not
   imply a frontier model would.
2. **Thinking mode disabled** (via `chat_template_kwargs.enable_thinking=false`,
   uniformly for every cell/language). This endpoint is a reasoning model
   whose thinking-on mode makes AIC codegen calls take 150-400s (900
   generations was infeasible, and thinking-on runs produced heavy timeout
   loss: 57% of cells failed in the archived partial run). Because thinking
   can change model behavior per language, it was turned off *uniformly*
   rather than per-language; the comparison remains internally fair, but
   thinking-on AIC numbers could be different (either direction).
3. **Byte-exact scoring** is mandated by the protocol. AIC's `[.]` op
   space-joins its arguments (and the spec's own few-shot example uses a
   multi-arg print that produces trailing whitespace), so "correct logic +
   print-idiom mismatch" scores as silent-wrong. The decomposition in §5 of
   report.md separates this class (17.7% of AIC failures = 53 samples) from
   genuine logic errors. A whitespace-normalized secondary metric would
   raise AIC pass@1 by ~18 points but is reported here only as a diagnostic,
   not as the primary number.
4. Endpoint instability: the first (thinking-on) run lost 57% of cells to
   timeouts; the final thinking-off run lost 0/900. The final dataset is
   complete.
