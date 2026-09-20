# AIC Benchmark — Prompt Knowledge-Parity Verification (Addendum)

This addendum answers the follow-up: *"Review the language and the codebase,
and give Qwen the same syntax instructions / knowledge starting point that it
gets for C and Python, then re-run."* It documents (1) what the repo's
`examples/` + `AIC_SPECIFICATION.md` reveal, (2) the repo examples evaluated
against the benchmark pipeline, (3) the prompt correction, and (4) the
before/after AIC results.

**Bottom line:** the original AIC prompt was *not* knowledge-parity with the
C/Python prompts, and it actively taught the model the print idiom that fails
byte-exact scoring. Giving the model the same knowledge it has for C/Python
(full grammar, complete stdlib, no-invented-operators, correct byte-exact
print rule) moves AIC pass@1 from **0.33% (1/300) to 40.0% (120/300)** on the
identical model, pipeline, and tasks. This does **not** overturn the earlier
harness-verdict (a) — the harness was always sound — but it *does* overturn
the implication that "0% AIC is the model's best." The 0.33% was an artifact
of an under-informed, self-contradicting prompt.

## 1. What the repo materials reveal (root cause of the 0.33%)

The benchmark's original AIC prompt (Condition Z) was the 6-line system prompt
from `AIC_SPECIFICATION.md` §8.1, plus a compressed stdlib summary and a
two-example FEWSHOT. Three defects, all confirmed against the source of
truth (`AIC_SPECIFICATION.md`, `lib/`, `examples/`, `TRAINING_GUIDE.md`):

1. **The canonical materials teach the failing print idiom.** The spec's own
   §8.2 few-shot examples *and every file in `examples/`* use
   `[. "Fib(10) =" res "\n"]` — a label + multi-arg + embedded `\n`. That
   idiom can never produce a byte-exact bare number (`3628800\n`): the label
   prefix is extra, multi-arg `[.]` space-joins (adding a space), and the
   embedded `\n` doubles with `[.]`'s own trailing newline. The benchmark's
   FEWSHOT copied this exact example, so the model was *explicitly shown*
   the wrong pattern.
2. **Compressed stdlib → invented operators.** The Condition-S stdlib list was
   a name-only summary with no signatures and no "these are the only ones"
   framing. The model filled gaps with invented ops seen in the field:
   `[mod a b]`, `[sqrt n]`, `[/ / n 10]`, `[& bit 1]` used as a bit-test,
   `[K a b]` as gcd-modulo. The spec §5.1 intrinsic table and §6 stdlib
   reference (which do define `math_gcd`, `math_sqrt`, `%`, `&`, `K`=file
   write) were not in the prompt, so the model had no reason not to invent.
3. **No byte-exact output rule in Z.** Condition Z (the base, and the only
   thing 50% of cells saw) never stated that stdout is compared byte-for-byte
   or that a bare number = a single-arg print. C/Python models don't need this
   (they know `printf`/`print`); AIC needed it stated.

`AIC_SPECIFICATION.md` §8.1's own recommended system prompt is the same
6-line text the benchmark used — so the defect is inherited from the
language's own recommended prompting, not introduced by the harness.

## 2. Repo `examples/` evaluated against the benchmark pipeline

`eval_examples.py` runs each `examples/*.aic` through the exact harness path
(write → `aic.py build` from the project root → run in a tempdir, 5s timeout,
fixed stdin `42\n`):

| example | build | run |
|---|---|---|
| 01_basics | OK | OK (233 B out) |
| 02_algorithms | OK | OK (278 B) |
| 03_records | OK | OK (231 B) |
| 04_json_toolcall | OK | OK (258 B) |
| 05_system_arena | OK | OK (355 B) |
| 06_min_heap | OK | OK (522 B, all `[PASS]`) |
| 07_bytecode_vm | OK | OK (425 B, all `[PASS]`) |
| 08_visual_terminal_suite | OK | OK (4784 B) |
| 09_interactive_mandelbrot | OK | TIMEOUT (interactive, by design) |

**8/9 build and run; 9/9 build.** The toolchain handles the language's own
realistic, idiomatically-written programs — including the constructs the
model never got told about: `[: [$ name] ...]` string-return functions,
`[@@$.Rec:field p]` pointer-field reads, `lib/test.aic` assertions. This
reconfirms verdict (a) (pipeline sound) and shows the failure was knowledge,
not capability: the model *can* be shown these idioms and the compiler will
accept them.

Note: even the "correct" repo examples all use the label-print idiom — they
pass here only because we're checking build+run, not byte-exact output. That
is exactly why the model failed the benchmark: it faithfully reproduced the
idiom its only examples demonstrated.

## 3. The prompt correction (knowledge parity)

Changes (in `tasks.py` / `harness.py`), AIC-only — C/Python prompts and all
task definitions, expected outputs, and the scoring path are untouched:

- **`AIC_SPEC_CONTEXT` (Condition S) replaced** with the full language
  reference: complete operator set (with an explicit "these are the only
  operators — do NOT invent `mod`/`sqrt`/`//`"), full memory/word/byte ops,
  record/pointer-field ops, the 13 system intrinsics, the ABI rule, and the
  **complete stdlib with signatures for every `lib/*.aic`** (verified against
  the actual `lib/` — not the spec's summary), plus an explicit byte-exact
  OUTPUT RULE (bare number = `[. [N value]]`; multi-value line = build one
  string with `str_cat` and print it).
- **`AIC_SYSTEM` (Condition Z) gained rule 7**: stdout is compared
  byte-exactly; print exactly the expected line(s), no labels/extra
  spaces/extra newlines; bare number = single-arg `[. [N value]]`.
- **`FEWSHOT` corrected**: the fib example now prints `[. [N [fib 10]]]`
  (the only idiom that can pass) instead of `[. "Fib(10) =" res "\n"]`, and
  a one-line printing rule is stated above it.

## 4. Before/after AIC results (same model, pipeline, tasks)

| scope | OLD (original prompt) | NEW (knowledge-parity prompt) |
|---|---|---|
| **AIC pass@1** | **0.33% (1/300)** | **40.0% (120/300)** |
| Tier 1 | 0/80 (Z 0/40, S 0/40) | 58/80 (Z 23/40, S 35/40) |
| Tier 2 | 0/80 | 24/80 (Z 2/40, S 22/40) |
| Tier 3 | 1/80 | 15/80 (Z 0/40, S 15/40) |
| Tier 4 | 0/60 | 23/60 (Z 1/30, S 22/30) |
| condition Z (all tiers) | 0/150 | 26/150 = 17.3% |
| condition S (all tiers) | 1/150 | 94/150 = 62.7% |
| non-pass numerically-correct (format-only) | 60 | **0** |
| non-pass: compile/parse/semantic | 171 | 135 |
| non-pass: runtime | 33 | 22 |
| non-pass: silent-wrong | 95 | 23 |

Interpretation:

- **The print-idiom fix is total and clean.** "Non-pass but numerically
  correct (format-only)" goes 60 → 0. Every program that now computes a
  right value prints it byte-exactly. The `[. [N value]]` single-arg rule
  eliminated the entire format-only failure class.
- **Syntax errors fell** (171 → 135) but remain the dominant residual
  obstacle — the model still struggles with raw S-expression nesting on the
  hard tiers even with the full grammar in context.
- **Condition S now massively outperforms Z** (62.7% vs 17.3% vs the old
  0.7% vs 0.0%). This is the knowledge-parity effect: in the old prompt the
  full grammar was *not* meaningfully helpful (S≈Z), but now that S actually
  carries the complete reference, it behaves the way the follow-up predicted
  it should. Giving the model the stdlib+grammar in context lets it write
  valid AIC for the stdlib tasks (T3/T4) it could not before.
- **C/Python are unaffected** (their prompts and scores are unchanged; only
  the AIC prompt changed). The new AIC 40% is still below C 87.3% / Python
  94.3%, so the language gap is real and reduced but not closed — and it is
  now concentrated in genuine syntax/algorithm difficulty (Tier 2 record/
  pointer logic: Z only 2/40) rather than in a prompt artifact.

### What this does and does not change

- **Does not change** the original 900-cell result or verdict (a): the
  harness is sound, and C/Python numbers stand. `results.jsonl`,
  `summary.json`, `report.md`, `findings.md` are unchanged.
- **Does change** the AIC interpretation: the earlier "uniform near-total
  AIC failure" finding was substantially a *prompt* effect. With fair
  knowledge parity, AIC is 40% on this 27B model — a real, much smaller gap
  to C/Python, with the residual failure now attributable to the language's
  S-expression syntax difficulty rather than to being taught a broken print
  idiom.
- **Repo-level finding (out of scope, flagged):** `AIC_SPECIFICATION.md`
  §8.2, `TRAINING_GUIDE.md`, and every `examples/*.aic` use the label-print
  idiom. If those materials are used to prompt/train any model for byte-exact
  tasks, they will teach the same failure. That is a repo/docs issue to fix
  upstream, not a benchmark-harness issue.

## Artifacts

- `tasks.py` / `harness.py` — corrected AIC prompt (Z rule 7, full S
  reference, corrected FEWSHOT). C/Python prompts and scoring unchanged.
- `eval_examples.py` — runs `examples/*.aic` through the harness pipeline.
- `rerun_aic_newprompt.py` — re-runs the 300 AIC cells to
  `results_aic_newprompt.jsonl` (resume-safe; leaves `results.jsonl` alone).
- `results_aic_newprompt.jsonl` — 300 fresh AIC generations, new prompt.
- `compare_old_new.py` — the old-vs-new table above.
