from pathlib import Path
import sys


EXTERN_CALLS = {
    "calloc@PLT": "aic_calloc",
    "malloc@PLT": "aic_malloc",
    "sprintf@PLT": "aic_sprintf",
    "strlen@PLT": "aic_strlen",
    "strtol@PLT": "aic_strtol",
    "fopen@PLT": "aic_fopen",
    "ftell@PLT": "aic_ftell",
    "fseek@PLT": "aic_fseek",
    "fread@PLT": "aic_fread",
    "fwrite@PLT": "aic_fwrite",
    "fclose@PLT": "aic_fclose",
    "printf@PLT": "aic_printf",
}


def replace_external_calls(lines):
    out = []
    for line in lines:
        if line.startswith("    call    "):
            for old, new in EXTERN_CALLS.items():
                line = line.replace(old, new)
        out.append(line)
    return out


def remove_elf_note(lines):
    return [
        line for line in lines
        if line.strip() != '.section .note.GNU-stack,"",@progbits'
    ]


def rename_entry(lines):
    out = []
    for line in lines:
        if line == "    .globl main\n":
            out.append("    .globl aic_main\n")
        elif line == "main:\n":
            out.append("aic_main:\n")
        else:
            out.append(line)
    return out


def replace_handler(lines, label, msg_label):
    start = next(i for i, line in enumerate(lines) if line == f"{label}:\n")
    end = start + 1
    while end < len(lines) and not (
        lines[end].startswith(".L") and lines[end].endswith(":\n")
    ) and not lines[end].lstrip().startswith(".section"):
        end += 1
    replacement = [
        f"{label}:\n",
        f"    leaq    {msg_label}(%rip), %rdi\n",
        "    call    aic_runtime_error\n",
    ]
    return lines[:start] + replacement + lines[end:]


def main(argv):
    src = Path(argv[1] if len(argv) > 1 else "compiler_gen0.s")
    dst = Path(argv[2] if len(argv) > 2 else "compiler_gen0_mingw.s")
    lines = src.read_text(encoding="utf-8").splitlines(keepends=True)
    lines = replace_external_calls(lines)
    lines = remove_elf_note(lines)
    lines = rename_entry(lines)
    labels = {line.strip() for line in lines if line.startswith(".L")}
    if ".Ldivzero:" in labels:
        lines = replace_handler(lines, ".Ldivzero", "divzero_msg")
    if ".Lruntimeerror:" in labels:
        lines = replace_handler(lines, ".Lruntimeerror", "runtimeerr_msg")
    dst.write_text("".join(lines), encoding="utf-8", newline="\n")


if __name__ == "__main__":
    main(sys.argv)
