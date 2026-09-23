#!/usr/bin/env python3
"""
generate_header.py - Emit a C header from an AIC source file's top-level
function definitions (AIC Milestone 1, Component D).

Reuses the AIC compiler's own tokenizer/parser (compiler.py) — no second
parser. Rules (spec Component D):
  - `[: name [p1 p2] [D ...]]`      -> int64_t name(int64_t p1, int64_t p2);
  - `[: [$ name] [p1] [D ...]]`     -> const char* name(int64_t p1);
  - default return type is int64_t; parameters are int64_t.
"""

import sys
import os


def extract_functions(src_path):
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    from compiler import read_source_with_imports, tokenize, parse, Symbol
    src = read_source_with_imports(src_path)
    tokens, lines = tokenize(src)
    fns = []
    while tokens:
        node = parse(tokens, lines)
        if node is None:
            break
        if (isinstance(node, list) and len(node) >= 3
                and isinstance(node[0], Symbol) and node[0].name == ":"):
            name_node = node[1]
            string_ret = False
            if isinstance(name_node, list) and len(name_node) == 2 \
                    and isinstance(name_node[0], Symbol) and name_node[0].name == "$":
                string_ret = True
                name_node = name_node[1]
            if isinstance(name_node, Symbol):
                params = [p.name for p in node[2] if isinstance(p, Symbol)]
                fns.append((name_node.name, params, string_ret))
    return fns


def emit_header(fns, guard="AIC_GENERATED_LIB_H"):
    lines = [
        f"#ifndef {guard}",
        f"#define {guard}",
        "",
        "#include <stdint.h>",
        "",
        "#ifdef __cplusplus",
        'extern "C" {',
        "#endif",
        "",
    ]
    for name, params, string_ret in fns:
        ret = "const char*" if string_ret else "int64_t"
        p = ", ".join("int64_t " + x for x in params) if params else "void"
        lines.append(f"{ret} {name}({p});")
    lines += [
        "",
        "#ifdef __cplusplus",
        "}",
        "#endif",
        "",
        f"#endif // {guard}",
        "",
    ]
    return "\n".join(lines)


def generate_header(src_path, out_path):
    fns = extract_functions(src_path)
    text = emit_header(fns)
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(text)
    print(f"[OK] C header generated: {out_path} ({len(fns)} function(s))")
    return out_path


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python generate_header.py <input.aic> <output.h>")
        sys.exit(1)
    generate_header(sys.argv[1], sys.argv[2])
