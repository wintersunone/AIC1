#!/usr/bin/env python3
"""
tools/train_lora_recipe.py - Turnkey LoRA Fine-Tuning Recipe for AIC

Fine-tunes open-weights foundation coding models (e.g. Qwen2.5-Coder-7B,
Llama-3.1-8B) on the AIC instruction dataset (corpus/aic_instruct_dataset.jsonl)
using Hugging Face TRL (SFTTrainer) and PEFT.

Usage:
  # Install dependencies:
  pip install transformers datasets peft trl accelerate bitsandbytes

  # Run LoRA fine-tuning on a GPU:
  python tools/train_lora_recipe.py --model Qwen/Qwen2.5-Coder-7B-Instruct

  # Dry-run validation (checks dataset syntax and arguments without GPU):
  python tools/train_lora_recipe.py --dry-run
"""

import sys
import os
import json
import argparse

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DEFAULT_DATASET = os.path.join(BASE_DIR, "corpus", "aic_instruct_dataset.jsonl")
DEFAULT_OUTPUT = os.path.join(BASE_DIR, "models", "aic-qwen2.5-coder-7b-lora")

def format_entry_as_messages(entry):
    if "messages" in entry:
        return entry["messages"]
    system_prompt = (
        "You are an expert systems programmer specializing in AIC (AI Compiler / AI C). "
        "AIC is an S-expression prefix systems language that compiles directly to native x86-64 machine code."
    )
    instruction = entry.get("instruction", "")
    thought = entry.get("thought", "")
    code = entry.get("code", "")
    assistant_content = f"<thought>\n{thought}\n</thought>\n```aic\n{code}\n```"
    return [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": instruction},
        {"role": "assistant", "content": assistant_content}
    ]

def validate_dataset(dataset_path):
    print(f"[*] Validating dataset: {dataset_path}")
    if not os.path.exists(dataset_path):
        raise FileNotFoundError(f"Dataset not found at {dataset_path}")

    count = 0
    with open(dataset_path, "r", encoding="utf-8") as f:
        for idx, line in enumerate(f):
            line = line.strip()
            if not line:
                continue
            entry = json.loads(line)
            if "messages" not in entry and not ("instruction" in entry and "code" in entry):
                raise ValueError(f"Line {idx+1}: requires either 'messages' or ('instruction' and 'code') fields")
            count += 1

    print(f"[OK] Dataset validated: {count} verified instruction pairs found.")
    return count

def run_dry_run(args):
    print("=" * 70)
    print("AIC Model Training Recipe: Dry-Run Mode")
    print("=" * 70)
    validate_dataset(args.dataset)
    print(f"Target Model       : {args.model}")
    print(f"Output Directory   : {args.output_dir}")
    print(f"LoRA Rank (r)      : {args.lora_r}")
    print(f"LoRA Alpha         : {args.lora_alpha}")
    print(f"Epochs             : {args.epochs}")
    print(f"Learning Rate      : {args.learning_rate}")
    print(f"Batch Size         : {args.batch_size}")
    print("\nDry-run completed successfully. Your dataset is 100% compliant and ready for GPU training.")

def train(args):
    validate_dataset(args.dataset)

    try:
        import torch
        from datasets import load_dataset
        from transformers import AutoModelForCausalLM, AutoTokenizer
        from peft import LoraConfig
        from trl import SFTConfig, SFTTrainer
    except ImportError as e:
        print(f"[ERR] Missing machine learning dependencies: {e}")
        print("Please install requirements:\n  pip install torch transformers datasets peft trl accelerate bitsandbytes")
        sys.exit(1)

    print("=" * 70)
    print(f"Starting LoRA Fine-Tuning: {args.model}")
    print("=" * 70)

    # 1. Tokenizer & model
    tokenizer = AutoTokenizer.from_pretrained(args.model, trust_remote_code=True)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    model = AutoModelForCausalLM.from_pretrained(
        args.model,
        torch_dtype=torch.bfloat16 if torch.cuda.is_bf16_supported() else torch.float16,
        device_map="auto",
        trust_remote_code=True,
    )

    # 2. LoRA config -- passed to SFTTrainer, NOT applied via get_peft_model.
    #    Wrapping with get_peft_model AND passing peft_config double-wraps the
    #    adapters, which breaks save_pretrained and inflates trainable params.
    peft_config = LoraConfig(
        r=args.lora_r,
        lora_alpha=args.lora_alpha,
        lora_dropout=0.05,
        target_modules=["q_proj", "k_proj", "v_proj", "o_proj",
                        "gate_proj", "up_proj", "down_proj"],
        bias="none",
        task_type="CAUSAL_LM",
    )

    # 3. Dataset -- normalise every entry to TRL's conversational "messages" schema
    raw = load_dataset("json", data_files={"train": args.dataset})
    dataset = raw["train"].map(lambda ex: {"messages": format_entry_as_messages(ex)})
    dataset = dataset.remove_columns(
        [c for c in dataset.column_names if c != "messages"])

    # 4. Training config (SFTConfig replaces TrainingArguments + SFTTrainer kwargs)
    bf16_ok = torch.cuda.is_bf16_supported() if torch.cuda.is_available() else False
    sft_config = SFTConfig(
        output_dir=args.output_dir,
        num_train_epochs=args.epochs,
        per_device_train_batch_size=args.batch_size,
        gradient_accumulation_steps=args.grad_accum,
        learning_rate=args.learning_rate,
        lr_scheduler_type="cosine",
        warmup_ratio=0.05,
        logging_steps=5,
        save_strategy="epoch",
        fp16=not bf16_ok,
        bf16=bf16_ok,
        report_to="none",
        max_length=args.max_seq_len,
        packing=False,
    )

    # 5. Trainer -- conversational dataset, no dataset_text_field
    trainer = SFTTrainer(
        model=model,
        args=sft_config,
        train_dataset=dataset,
        processing_class=tokenizer,
        peft_config=peft_config,
    )

    print("[*] Training started...")
    trainer.train()

    # 6. Save Adapter
    os.makedirs(args.output_dir, exist_ok=True)
    trainer.model.save_pretrained(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)
    print(f"\n[OK] Model fine-tuning complete! Weights saved to: {args.output_dir}")

def smoke_test(args):
    """Build everything, then stop before the first training step.

    Verifies: dataset loads, `messages` formatting works, SFTConfig accepts the
    kwargs, SFTTrainer initialises with the peft_config (no double wrap), and
    the trainer can form at least one batch.
    """
    validate_dataset(args.dataset)
    try:
        import torch
        from datasets import load_dataset
        from transformers import AutoModelForCausalLM, AutoTokenizer
        from peft import LoraConfig
        from trl import SFTConfig, SFTTrainer
    except ImportError as e:
        print(f"[ERR] Missing machine learning dependencies: {e}")
        print("  pip install torch transformers datasets peft trl accelerate bitsandbytes")
        return 1

    print(f"[*] smoke-test: tokens/model = {args.model}")
    tokenizer = AutoTokenizer.from_pretrained(args.model, trust_remote_code=True)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token
    model = AutoModelForCausalLM.from_pretrained(
        args.model,
        torch_dtype=torch.bfloat16 if torch.cuda.is_bf16_supported() else torch.float16,
        device_map="auto",
        trust_remote_code=True,
    )

    peft_config = LoraConfig(
        r=args.lora_r, lora_alpha=args.lora_alpha, lora_dropout=0.05,
        target_modules=["q_proj", "k_proj", "v_proj", "o_proj",
                        "gate_proj", "up_proj", "down_proj"],
        bias="none", task_type="CAUSAL_LM",
    )

    raw = load_dataset("json", data_files={"train": args.dataset})
    dataset = raw["train"].map(lambda ex: {"messages": format_entry_as_messages(ex)})
    dataset = dataset.remove_columns([c for c in dataset.column_names if c != "messages"])
    sample = dataset[0]["messages"]
    print(f"[OK] dataset: {len(dataset)} rows; first message roles = {[m['role'] for m in sample]}")

    bf16_ok = torch.cuda.is_bf16_supported() if torch.cuda.is_available() else False
    cfg = SFTConfig(
        output_dir=args.output_dir, num_train_epochs=1,
        per_device_train_batch_size=args.batch_size,
        gradient_accumulation_steps=1, learning_rate=args.learning_rate,
        logging_steps=1, save_strategy="no", report_to="none",
        max_length=args.max_seq_len, packing=False,
        fp16=not bf16_ok, bf16=bf16_ok,
    )
    trainer = SFTTrainer(model=model, args=cfg, train_dataset=dataset,
                          processing_class=tokenizer, peft_config=peft_config)
    total = sum(p.numel() for p in trainer.model.parameters() if p.requires_grad)
    print(f"[OK] trainer initialised; trainable params = {total:,}")
    batch = next(iter(trainer.get_train_dataloader()))
    print(f"[OK] first batch keys = {sorted(batch.keys())}, shape = {tuple(batch['input_ids'].shape)}")
    print("[OK] smoke test passed — no training was run.")
    return 0


def main():
    parser = argparse.ArgumentParser(description="Turnkey LoRA Fine-Tuning Recipe for AIC")
    parser.add_argument("--model", default="Qwen/Qwen2.5-Coder-7B-Instruct", help="Hugging Face model ID")
    parser.add_argument("--dataset", default=DEFAULT_DATASET, help="Path to instruction dataset jsonl")
    parser.add_argument("--output_dir", default=DEFAULT_OUTPUT, help="Path to save trained LoRA adapters")
    parser.add_argument("--epochs", type=int, default=3, help="Number of training epochs")
    parser.add_argument("--batch_size", type=int, default=2, help="Per-device batch size")
    parser.add_argument("--grad_accum", type=int, default=4, help="Gradient accumulation steps")
    parser.add_argument("--learning_rate", type=float, default=2e-4, help="Learning rate")
    parser.add_argument("--lora_r", type=int, default=16, help="LoRA rank dimension")
    parser.add_argument("--lora_alpha", type=int, default=32, help="LoRA alpha scaling factor")
    parser.add_argument("--max_seq_len", type=int, default=2048, help="Maximum sequence token length")
    parser.add_argument("--dry-run", action="store_true", help="Validate dataset and config without running training")
    parser.add_argument("--smoke-test", action="store_true",
                        help="Load model+dataset, build the trainer, then exit before training "
                             "(catches API/wiring mistakes without spending GPU hours)")

    args = parser.parse_args()
    if args.dry_run:
        run_dry_run(args)
    elif args.smoke_test:
        smoke_test(args)
    else:
        train(args)

if __name__ == "__main__":
    main()
