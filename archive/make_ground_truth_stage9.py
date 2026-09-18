import sys
from aic_codegen import tokenize, parse, Analyzer, Codegen

src_path = sys.argv[1]
out_path = sys.argv[2]

with open(src_path, encoding="utf-8") as f:
    text = f.read()

tokens, lines = tokenize(text)
nodes = []
while tokens:
    nodes.append(parse(tokens, lines))

an = Analyzer()
main_stmts, main_slots, main_types = an.analyze(nodes)

cg = Codegen(an.functions)
asm = cg.build(main_stmts, main_slots, main_types)

print("FUNC_COUNT", len(an.functions), file=sys.stderr)
print("MAIN_DECL_COUNT", len(main_slots), file=sys.stderr)
print("LABELS_USED", cg.label_n, file=sys.stderr)
print("STR_LABELS_USED", len(cg.str_labels), file=sys.stderr)

with open(out_path, "w", encoding="utf-8", newline="\n") as f:
    f.write(asm)
