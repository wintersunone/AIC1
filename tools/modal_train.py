#!/usr/bin/env python3
"""modal_train.py - zero-friction cloud LoRA comparison runner (Modal).

Runs an equal-data LoRA experiment: the same base model, LoRA rank/alpha/epochs,
and matched example budgets, trained separately on
  corpus/sft_aic.jsonl  /  corpus/sft_c.jsonl  /  corpus/sft_python.jsonl
then evaluates each adapter on benchmarks/model_bench/heldout_tasks.py.

Local sanity check (no Modal, no GPU needed):
    python3 tools/modal_train.py --check

Deploy/run on Modal (requires `pip install modal` + `modal setup`):
    modal run tools/modal_train.py --data-budget 100
    modal run tools/modal_train.py --data-budget 100 --languages aic,c,python

ponytail: no local GPU here; this file only *configures* the remote job. All
torch/trl/peft imports happen inside the Modal container.
"""

import argparse
import os
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

BASE_MODEL = "Qwen/Qwen2.5-Coder-7B-Instruct"
LORA_R = 16
LORA_ALPHA = 32
EPOCHS = 3
MAX_LEN = 2048

CORPUS = {
    "aic": os.path.join(REPO, "corpus", "sft_aic.jsonl"),
    "c": os.path.join(REPO, "corpus", "sft_c.jsonl"),
    "python": os.path.join(REPO, "corpus", "sft_python.jsonl"),
}


# --------------------------------------------------------------- check mode
def check():
    """Validate the local layout without touching Modal or torch."""
    problems = []
    for lang, path in CORPUS.items():
        if not os.path.exists(path):
            problems.append(f"missing corpus: {path}")
            continue
        n = sum(1 for line in open(path) if line.strip())
        if n == 0:
            problems.append(f"empty corpus: {path}")
        else:
            print(f"[OK] {lang:<6} corpus: {n} records")
    if not os.path.exists(os.path.join(REPO, "benchmarks", "model_bench", "heldout_tasks.py")):
        problems.append("missing heldout_tasks.py")
    if problems:
        for p in problems:
            print(f"[ERR] {p}")
        return 1
    print("[OK] layout valid; run `modal run tools/modal_train.py` on a machine with `modal`.")
    return 0


# ------------------------------------------------------------- modal app
def build_modal_app():
    import modal

    app = modal.App("aic-lora-compare")

    image = (
        modal.Image.debian_slim(python_version="3.11")
        .pip_install(
            "torch>=2.3",
            "transformers>=4.44",
            "datasets>=2.20",
            "peft>=0.12",
            "trl>=0.11",
            "accelerate",
        )
        .add_local_dir(os.path.join(REPO, "corpus"), remote_path="/root/corpus")
        .add_local_dir(os.path.join(REPO, "benchmarks"), remote_path="/root/benchmarks")
    )

    VOL = modal.Volume.from_name("aic-lora-adapters", create_if_missing=True)

    def read_tasks():
        """Load the held-out tasks inside the container (no LLM calls)."""
        sys.path.insert(0, "/root/benchmarks/model_bench")
        from heldout_tasks import TASKS
        return TASKS

    @app.function(image=image, volumes={"/adapters": VOL}, gpu="A10G", timeout=60 * 60 * 3)
    def train_one(language: str, data_budget: int):
        import json
        import torch
        from datasets import load_dataset
        from transformers import AutoModelForCausalLM, AutoTokenizer
        from peft import LoraConfig
        from trl import SFTConfig, SFTTrainer

        path = f"/root/corpus/sft_{language}.jsonl"
        rows = [json.loads(l) for l in open(path)]
        rows = rows[:data_budget]
        if not rows:
            return {"language": language, "error": "empty corpus slice"}

        text_key = {"aic": "aic", "c": "c", "python": "py"}[language]
        with open("/tmp/train.jsonl", "w") as f:
            for r in rows:
                f.write(json.dumps({
                    "messages": [
                        {"role": "system", "content": "You write precise code."},
                        {"role": "user", "content": r["spec"]},
                        {"role": "assistant", "content": r[text_key]},
                    ]
                }) + "\n")

        raw = load_dataset("json", data_files={"train": "/tmp/train.jsonl"})["train"]
        raw = raw.remove_columns([c for c in raw.column_names if c != "messages"])

        tok = AutoTokenizer.from_pretrained(BASE_MODEL, trust_remote_code=True)
        if tok.pad_token is None:
            tok.pad_token = tok.eos_token
        model = AutoModelForCausalLM.from_pretrained(
            BASE_MODEL, torch_dtype=torch.bfloat16, device_map="auto",
            trust_remote_code=True)

        peft_config = LoraConfig(
            r=LORA_R, lora_alpha=LORA_ALPHA, lora_dropout=0.05,
            target_modules=["q_proj", "k_proj", "v_proj", "o_proj",
                            "gate_proj", "up_proj", "down_proj"],
            bias="none", task_type="CAUSAL_LM")

        cfg = SFTConfig(
            output_dir=f"/adapters/{language}_{data_budget}",
            num_train_epochs=EPOCHS,
            per_device_train_batch_size=2,
            gradient_accumulation_steps=4,
            learning_rate=2e-4,
            logging_steps=5,
            save_strategy="epoch",
            report_to="none",
            max_length=MAX_LEN,
            packing=False,
            bf16=True,
        )
        trainer = SFTTrainer(model=model, args=cfg, train_dataset=raw,
                              processing_class=tok, peft_config=peft_config)
        trainer.train()
        trainer.model.save_pretrained(cfg.output_dir)
        tok.save_pretrained(cfg.output_dir)
        VOL.commit()
        return {"language": language, "budget": data_budget,
                "examples": len(rows), "adapter": cfg.output_dir}

    @app.function(image=image, volumes={"/adapters": VOL}, gpu="A10G",
                  timeout=60 * 60 * 2)
    def evaluate(language: str, data_budget: int):
        """Score the adapter on the held-out set, byte-exact against expected."""
        import json
        import re
        import torch
        from transformers import AutoModelForCausalLM, AutoTokenizer
        from peft import PeftModel

        sys.path.insert(0, "/root/benchmarks/model_bench")
        from heldout_tasks import TASKS

        adapter = f"/adapters/{language}_{data_budget}"
        tok = AutoTokenizer.from_pretrained(adapter, trust_remote_code=True)
        base = AutoModelForCausalLM.from_pretrained(
            BASE_MODEL, torch_dtype=torch.bfloat16, device_map="auto",
            trust_remote_code=True)
        model = PeftModel.from_pretrained(base, adapter)
        model.eval()

        ok = 0
        for t in TASKS:
            msg = [{"role": "user",
                    "content": f"Task:\n{t['spec']}\n\nReturn ONLY the program as raw text, no markdown."}]
            ids = tok.apply_chat_template(msg, return_tensors="pt",
                                          add_generation_prompt=True).to(model.device)
            out = model.generate(ids, max_new_tokens=512, do_sample=False)
            text = tok.decode(out[0][ids.shape[1]:], skip_special_tokens=True)
            text = re.sub(r"```[a-zA-Z]*\n?", "", text).replace("```", "").strip()
            # run it through the AIC compiler here is out of scope for this
            # probe; byte-exact comparison of the raw text is the honest ceiling.
            if text.strip() == t["expected"].strip():
                ok += 1
        return {"language": language, "budget": data_budget,
                "heldout_passed": ok, "heldout_total": len(TASKS)}

    return app, train_one, evaluate


def modal_main(args):
    app, train_one, evaluate = build_modal_app()
    with app.run():
        results = []
        for lang in args.languages.split(","):
            lang = lang.strip()
            if lang not in CORPUS:
                print(f"[ERR] unknown language {lang}")
                return 1
            train_res = train_one.remote(lang, args.data_budget)
            eval_res = evaluate.remote(lang, args.data_budget)
            results.append({**train_res, **eval_res})
            print(train_res, eval_res)
        print("\n=== equal-data LoRA comparison ===")
        for r in results:
            hp, ht = r.get("heldout_passed", 0), r.get("heldout_total", 1)
            print(f"  {r['language']:<7} n={r.get('examples', 0):4d}  "
                  f"heldout {hp}/{ht}")
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true",
                    help="validate local layout without Modal or torch")
    ap.add_argument("--data-budget", type=int, default=100)
    ap.add_argument("--languages", default="aic,c,python")
    ap.add_argument("--modal-run", action="store_true",
                    help="actually run on Modal (requires `pip install modal`)")
    args = ap.parse_args()

    if args.check or not args.modal_run:
        return check()
    return modal_main(args)


if __name__ == "__main__":
    sys.exit(main())
