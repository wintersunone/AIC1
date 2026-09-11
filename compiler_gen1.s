    .section .rodata
fmt_nl:
    .string "%ld\n"
fmt_sp:
    .string "%ld "
fmt_s_nl:
    .string "%s\n"
fmt_s_sp:
    .string "%s "
fmt_d:
    .string "%ld"
nl_only:
    .string "\n"
aicstr_0:
    .string "code.aic"
aicstr_1:
    .string "out.s"
aicstr_2:
    .string "rb"
aicstr_3:
    .string "[ERR :code 101 :kind PARSE :msg UNEXPECTED_BRACKET :byte"
aicstr_4:
    .string "]"
aicstr_5:
    .string "[ERR :code 102 :kind PARSE :msg UNCLOSED_BRACKET :byte"
aicstr_6:
    .string "FUNC_COUNT"
aicstr_7:
    .string "MAIN_COUNT"
aicstr_8:
    .string "(complex-name)"
aicstr_9:
    .string "FUNC"
aicstr_10:
    .string "params="
aicstr_11:
    .string "declared="
aicstr_12:
    .string "MAIN_DECLARED"
aicstr_13:
    .string "STMT_UNKNOWN(-1)="
aicstr_14:
    .string "STMT_CALL(0)="
aicstr_15:
    .string "STMT_DOT(.)="
aicstr_16:
    .string "STMT_ASSIGN(!)="
aicstr_17:
    .string "STMT_IF(?)="
aicstr_18:
    .string "STMT_WHILE(W)="
aicstr_19:
    .string "STMT_DO(D)="
aicstr_20:
    .string "STMT_RETURN(^)="
aicstr_21:
    .string "STMT_BYTEOP(@)="
aicstr_22:
    .string "STMT_BYTESET(@!)="
aicstr_23:
    .string "STMT_WORDOP(@@)="
aicstr_24:
    .string "STMT_WORDSET(@@!)="
aicstr_25:
    .string "STMT_WORDPTR(@@$)="
aicstr_26:
    .string "STMT_WORDPTRSET(@@$!)="
aicstr_27:
    .string "STMT_H="
aicstr_28:
    .string "STMT_L="
aicstr_29:
    .string "STMT_N="
aicstr_30:
    .string "STMT_V="
aicstr_31:
    .string "STMT_O="
aicstr_32:
    .string "STMT_Z="
aicstr_33:
    .string "STMT_R="
aicstr_34:
    .string "STMT_K="
aicstr_35:
    .string "STMT_X="
aicstr_36:
    .string "STMT_SECTIONDEF(section)="
aicstr_37:
    .string "STMT_A="
aicstr_38:
    .string "STMT_I="
aicstr_39:
    .string "STMT_F="
aicstr_40:
    .string "STMT_T="
aicstr_41:
    .string "=== stage 6a: full-depth histogram (main + every function body, all nesting) ==="
aicstr_42:
    .string "ALL_CALL_OR_UNKNOWN(no-fn-check)="
aicstr_43:
    .string "ALL_UNKNOWN(-1)="
aicstr_44:
    .string "ALL_DOT(.)="
aicstr_45:
    .string "ALL_ASSIGN(!)="
aicstr_46:
    .string "ALL_IF(?)="
aicstr_47:
    .string "ALL_WHILE(W)="
aicstr_48:
    .string "ALL_DO(D)="
aicstr_49:
    .string "ALL_RETURN(^)="
aicstr_50:
    .string "ALL_BYTEOP(@)="
aicstr_51:
    .string "ALL_BYTESET(@!)="
aicstr_52:
    .string "ALL_WORDOP(@@)="
aicstr_53:
    .string "ALL_WORDSET(@@!)="
aicstr_54:
    .string "ALL_WORDPTR(@@$)="
aicstr_55:
    .string "ALL_WORDPTRSET(@@$!)="
aicstr_56:
    .string "[ERR :code 201 :kind SEMANTIC :msg UNRESOLVED_READ :byte"
aicstr_57:
    .string ":len"
aicstr_58:
    .string "=== stage 6b: read validation, main ==="
aicstr_59:
    .string "MAIN_READS_TOTAL="
aicstr_60:
    .string "RESOLVED="
aicstr_61:
    .string "UNRESOLVED="
aicstr_62:
    .string "[ERR :code 202 :kind SEMANTIC :msg UNRESOLVED_READ :fn"
aicstr_63:
    .string ":byte"
aicstr_64:
    .string "=== stage 6b: read validation, functions ==="
aicstr_65:
    .string "FN_READS_TOTAL="
aicstr_66:
    .string "out_body.s"
aicstr_67:
    .string "wb"
aicstr_68:
    .string ".Lmain_ret"
aicstr_69:
    .string "\n"
aicstr_70:
    .string "\n\n"
aicstr_71:
    .string "    .text\n"
aicstr_72:
    .string "%rdi"
aicstr_73:
    .string "%rsi"
aicstr_74:
    .string "%rdx"
aicstr_75:
    .string "%rcx"
aicstr_76:
    .string "%r8"
aicstr_77:
    .string "%r9"
aicstr_78:
    .string "    pushq   %rax\n"
aicstr_79:
    .string "    movq    %rax, %rbx\n"
aicstr_80:
    .string "    popq    %rax\n"
aicstr_81:
    .string "    movzbq  (%rax,%rbx), %rax\n"
aicstr_82:
    .string "    popq    %rbx\n"
aicstr_83:
    .string "    popq    %rcx\n"
aicstr_84:
    .string "    movb    %al, (%rcx,%rbx)\n"
aicstr_85:
    .string "    movq    (%rax,%rbx,8), %rax\n"
aicstr_86:
    .string "    movq    %rax, (%rcx,%rbx,8)\n"
aicstr_87:
    .string "    popq    "
aicstr_88:
    .string "    call    aicfn_"
aicstr_89:
    .string "ab"
aicstr_90:
    .string "    leaq    1(%rax), %rdi\n"
aicstr_91:
    .string "    movq    $1, %rsi\n"
aicstr_92:
    .string "    call    aic_calloc\n"
aicstr_93:
    .string "    testq   %rax, %rax\n"
aicstr_94:
    .string "    jne     .Lallocok"
aicstr_95:
    .string "    jmp     .Lruntimeerror\n"
aicstr_96:
    .string ".Lallocok"
aicstr_97:
    .string ":\n"
aicstr_98:
    .string "    movq    %rax, %rdi\n"
aicstr_99:
    .string "    call    aic_strlen\n"
aicstr_100:
    .string "    movq    %rax, %r12\n"
aicstr_101:
    .string "    movq    $24, %rdi\n"
aicstr_102:
    .string "    call    aic_malloc\n"
aicstr_103:
    .string "    movq    %rax, %r13\n"
aicstr_104:
    .string "    movq    %r13, %rdi\n"
aicstr_105:
    .string "    leaq    fmt_d(%rip), %rsi\n"
aicstr_106:
    .string "    movq    %r12, %rdx\n"
aicstr_107:
    .string "    xorl    %eax, %eax\n"
aicstr_108:
    .string "    call    aic_sprintf\n"
aicstr_109:
    .string "    movq    %r13, %rax\n"
aicstr_110:
    .string "    xorl    %esi, %esi\n"
aicstr_111:
    .string "    movq    $10, %rdx\n"
aicstr_112:
    .string "    call    aic_strtol\n"
aicstr_113:
    .string "    leaq    aicstr_"
aicstr_114:
    .string "(%rip), %rsi\n"
aicstr_115:
    .string "    call    aic_fopen\n"
aicstr_116:
    .string "    jne     .Lopenok"
aicstr_117:
    .string ".Lopenok"
aicstr_118:
    .string "    movq    %r12, %rdi\n"
aicstr_119:
    .string "    call    aic_ftell\n"
aicstr_120:
    .string "    movq    $0, %rsi\n"
aicstr_121:
    .string "    movq    $2, %rdx\n"
aicstr_122:
    .string "    call    aic_fseek\n"
aicstr_123:
    .string "    movq    %rax, %r14\n"
aicstr_124:
    .string "    movq    %r13, %rsi\n"
aicstr_125:
    .string "    movq    $0, %rdx\n"
aicstr_126:
    .string "    movq    %r14, %rax\n"
aicstr_127:
    .string "    leaq    1(%r13), %rdi\n"
aicstr_128:
    .string "    movq    %r14, %rdi\n"
aicstr_129:
    .string "    movq    %r13, %rdx\n"
aicstr_130:
    .string "    movq    %r12, %rcx\n"
aicstr_131:
    .string "    call    aic_fread\n"
aicstr_132:
    .string "    movb    $0, (%r14,%rax)\n"
aicstr_133:
    .string "    movq    %r14, %rdx\n"
aicstr_134:
    .string "    call    aic_fwrite\n"
aicstr_135:
    .string "    call    aic_fclose\n"
aicstr_136:
    .string "    call    aic_arg\n"
aicstr_137:
    .string "    call    aic_input\n"
aicstr_138:
    .string "    call    aic_free\n"
aicstr_139:
    .string "    call    aic_time\n"
aicstr_140:
    .string "    incq    %rdi\n"
aicstr_141:
    .string "    popq    %rsi\n"
aicstr_142:
    .string "    addq    %rbx, %rsi\n"
aicstr_143:
    .string "    rep movsb\n"
aicstr_144:
    .string "    movq    $"
aicstr_145:
    .string ", %rdi\n"
aicstr_146:
    .string "    movq    %rbx, "
aicstr_147:
    .string "(%rax)\n"
aicstr_148:
    .string "[ERR :code 403 :kind CODEGEN :msg UNRESOLVED_RECORD_FIELD]"
aicstr_149:
    .string "    movq    "
aicstr_150:
    .string "(%rax), %rax\n"
aicstr_151:
    .string "    imulq   $"
aicstr_152:
    .string ", %rax\n"
aicstr_153:
    .string "(%rbx,%rax), %rax\n"
aicstr_154:
    .string "(%rbx,%rax,8), %rax\n"
aicstr_155:
    .string "    shlq    $3, %rax\n"
aicstr_156:
    .string "    addq    %rbx, %rax\n"
aicstr_157:
    .string "[ERR :code 403 :kind CODEGEN :msg INVALID_BULK_RECORD_SET_ARGS]"
aicstr_158:
    .string "    movq    %rax, "
aicstr_159:
    .string "(%rbx)\n"
aicstr_160:
    .string "(%rbx,%rcx)\n"
aicstr_161:
    .string "(%rbp)\n"
aicstr_162:
    .string "    movq    $0, "
aicstr_163:
    .string ".Lmaptop"
aicstr_164:
    .string "(%rbp), %rax\n"
aicstr_165:
    .string "    cmpq    %rbx, %rax\n"
aicstr_166:
    .string "    jge     .Lmapend"
aicstr_167:
    .string "    incq    "
aicstr_168:
    .string "    jmp     .Lmaptop"
aicstr_169:
    .string ".Lmapend"
aicstr_170:
    .string "    leaq    nl_only(%rip), %rdi\n"
aicstr_171:
    .string "    call    aic_printf\n"
aicstr_172:
    .string "    leaq    fmt_s_nl(%rip), %rdi\n"
aicstr_173:
    .string "    leaq    fmt_s_sp(%rip), %rdi\n"
aicstr_174:
    .string "    leaq    fmt_nl(%rip), %rdi\n"
aicstr_175:
    .string "    leaq    fmt_sp(%rip), %rdi\n"
aicstr_176:
    .string "    movq    %rax, %rsi\n"
aicstr_177:
    .string "    je      .Lscshort"
aicstr_178:
    .string "    jne      .Lscshort"
aicstr_179:
    .string "    setne   %al\n"
aicstr_180:
    .string "    movzbq  %al, %rax\n"
aicstr_181:
    .string "    jmp     .Lscend"
aicstr_182:
    .string ".Lscshort"
aicstr_183:
    .string ".Lscend"
aicstr_184:
    .string "    je      .Lternelse"
aicstr_185:
    .string "    jmp     .Lternend"
aicstr_186:
    .string ".Lternelse"
aicstr_187:
    .string ".Lternend"
aicstr_188:
    .string "    subq    %rbx, %rax\n"
aicstr_189:
    .string "    imulq   %rbx, %rax\n"
aicstr_190:
    .string "    testq   %rbx, %rbx\n"
aicstr_191:
    .string "    jne     .Ldivok"
aicstr_192:
    .string "    jmp     .Ldivzero\n"
aicstr_193:
    .string ".Ldivok"
aicstr_194:
    .string "    cqto\n"
aicstr_195:
    .string "    idivq   %rbx\n"
aicstr_196:
    .string "    movq    %rdx, %rax\n"
aicstr_197:
    .string "    andq    %rbx, %rax\n"
aicstr_198:
    .string "    orq     %rbx, %rax\n"
aicstr_199:
    .string "    xorq    %rbx, %rax\n"
aicstr_200:
    .string "    movq    %rbx, %rcx\n"
aicstr_201:
    .string "    shlq    %cl, %rax\n"
aicstr_202:
    .string "    sarq    %cl, %rax\n"
aicstr_203:
    .string "    setl    %al\n"
aicstr_204:
    .string "    setg    %al\n"
aicstr_205:
    .string "    sete    %al\n"
aicstr_206:
    .string "    setne    %al\n"
aicstr_207:
    .string "    setle    %al\n"
aicstr_208:
    .string "    setge    %al\n"
aicstr_209:
    .string "[ERR :code 404 :kind CODEGEN :msg UNSUPPORTED_BINOP]"
aicstr_210:
    .string "(%rip), %rax\n"
aicstr_211:
    .string "[ERR :code 402 :kind CODEGEN :msg UNRESOLVED_EXPR_SYMBOL]"
aicstr_212:
    .string "    jmp     .Lret_"
aicstr_213:
    .string "    jmp     "
aicstr_214:
    .string ".Lwtop"
aicstr_215:
    .string "    je      .Lwend"
aicstr_216:
    .string "    jmp     .Lwtop"
aicstr_217:
    .string ".Lwend"
aicstr_218:
    .string "    je      .Lelse"
aicstr_219:
    .string "    jmp     .Lendif"
aicstr_220:
    .string ".Lelse"
aicstr_221:
    .string ".Lendif"
aicstr_222:
    .string "[ERR :code 401 :kind CODEGEN :msg UNSUPPORTED_STATEMENT]"
aicstr_223:
    .string "    .globl aic_main\n"
aicstr_224:
    .string "aic_main:\n"
aicstr_225:
    .string "    pushq   %rbp\n"
aicstr_226:
    .string "    movq    %rsp, %rbp\n"
aicstr_227:
    .string "    subq    $"
aicstr_228:
    .string ", %rsp\n"
aicstr_229:
    .string "    movq    $0, %rax\n"
aicstr_230:
    .string ".Lmain_ret:\n"
aicstr_231:
    .string "    leave\n"
aicstr_232:
    .string "    ret\n"
aicstr_233:
    .string "aicfn_"
aicstr_234:
    .string ", "
aicstr_235:
    .string ".Lret_"
aicstr_236:
    .string "    .section .rodata\n"
aicstr_237:
    .string "fmt_nl:\n"
aicstr_238:
    .string "    .string "
aicstr_239:
    .string "%ld\\n"
aicstr_240:
    .string "fmt_sp:\n"
aicstr_241:
    .string "%ld "
aicstr_242:
    .string "fmt_s_nl:\n"
aicstr_243:
    .string "%s\\n"
aicstr_244:
    .string "fmt_s_sp:\n"
aicstr_245:
    .string "%s "
aicstr_246:
    .string "fmt_d:\n"
aicstr_247:
    .string "%ld"
aicstr_248:
    .string "nl_only:\n"
aicstr_249:
    .string "\\n"
aicstr_250:
    .string "aicstr_"
aicstr_251:
    .string "divzero_msg:\n"
aicstr_252:
    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\\n"
aicstr_253:
    .string "divzero_msg_end:\n"
aicstr_254:
    .string "    .equ divzero_len, divzero_msg_end - divzero_msg - 1\n"
aicstr_255:
    .string "runtimeerr_msg:\n"
aicstr_256:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\\n"
aicstr_257:
    .string "runtimeerr_msg_end:\n"
aicstr_258:
    .string "    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1\n"
aicstr_259:
    .string "\n\n.Ldivzero:\n"
aicstr_260:
    .string "    leaq    divzero_msg(%rip), %rsi\n"
aicstr_261:
    .string "    movq    %rsi, %rdi\n"
aicstr_262:
    .string "    call    aic_runtime_error\n"
aicstr_263:
    .string "\n\n.Lruntimeerror:\n"
aicstr_264:
    .string "    leaq    runtimeerr_msg(%rip), %rsi\n"
aicstr_265:
    .string "tools/aic_wincrt_bridge.s"
divzero_msg:
    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\n"
divzero_msg_end:
    .equ divzero_len, divzero_msg_end - divzero_msg - 1

runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1

    .text
    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $976, %rsp
    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    $0, -256(%rbp)
    movq    $0, -264(%rbp)
    movq    $0, -272(%rbp)
    movq    $0, -280(%rbp)
    movq    $0, -288(%rbp)
    movq    $0, -296(%rbp)
    movq    $0, -304(%rbp)
    movq    $0, -312(%rbp)
    movq    $0, -320(%rbp)
    movq    $0, -328(%rbp)
    movq    $0, -336(%rbp)
    movq    $0, -344(%rbp)
    movq    $0, -352(%rbp)
    movq    $0, -360(%rbp)
    movq    $0, -368(%rbp)
    movq    $0, -376(%rbp)
    movq    $0, -384(%rbp)
    movq    $0, -392(%rbp)
    movq    $0, -400(%rbp)
    movq    $0, -408(%rbp)
    movq    $0, -416(%rbp)
    movq    $0, -424(%rbp)
    movq    $0, -432(%rbp)
    movq    $0, -440(%rbp)
    movq    $0, -448(%rbp)
    movq    $0, -456(%rbp)
    movq    $0, -464(%rbp)
    movq    $0, -472(%rbp)
    movq    $0, -480(%rbp)
    movq    $0, -488(%rbp)
    movq    $0, -496(%rbp)
    movq    $0, -504(%rbp)
    movq    $0, -512(%rbp)
    movq    $0, -520(%rbp)
    movq    $0, -528(%rbp)
    movq    $0, -536(%rbp)
    movq    $0, -544(%rbp)
    movq    $0, -552(%rbp)
    movq    $0, -560(%rbp)
    movq    $0, -568(%rbp)
    movq    $0, -576(%rbp)
    movq    $0, -584(%rbp)
    movq    $0, -592(%rbp)
    movq    $0, -600(%rbp)
    movq    $0, -608(%rbp)
    movq    $0, -616(%rbp)
    movq    $0, -624(%rbp)
    movq    $0, -632(%rbp)
    movq    $0, -640(%rbp)
    movq    $0, -648(%rbp)
    movq    $0, -656(%rbp)
    movq    $0, -664(%rbp)
    movq    $0, -672(%rbp)
    movq    $0, -680(%rbp)
    movq    $0, -688(%rbp)
    movq    $0, -696(%rbp)
    movq    $0, -704(%rbp)
    movq    $0, -712(%rbp)
    movq    $0, -720(%rbp)
    movq    $0, -728(%rbp)
    movq    $0, -736(%rbp)
    movq    $0, -744(%rbp)
    movq    $0, -752(%rbp)
    movq    $0, -760(%rbp)
    movq    $0, -768(%rbp)
    movq    $0, -776(%rbp)
    movq    $0, -784(%rbp)
    movq    $0, -792(%rbp)
    movq    $0, -800(%rbp)
    movq    $0, -808(%rbp)
    movq    $0, -816(%rbp)
    movq    $0, -824(%rbp)
    movq    $0, -832(%rbp)
    movq    $0, -840(%rbp)
    movq    $0, -848(%rbp)
    movq    $0, -856(%rbp)
    movq    $0, -864(%rbp)
    movq    $0, -872(%rbp)
    movq    $0, -880(%rbp)
    movq    $0, -888(%rbp)
    movq    $0, -896(%rbp)
    movq    $0, -904(%rbp)
    movq    $0, -912(%rbp)
    movq    $0, -920(%rbp)
    movq    $0, -928(%rbp)
    movq    $0, -936(%rbp)
    movq    $0, -944(%rbp)
    movq    $0, -952(%rbp)
    movq    $0, -960(%rbp)
    movq    $0, -968(%rbp)
    movq    $1, %rax
    movq    %rax, %rdi
    call    aic_arg
    movq    %rax, -520(%rbp)
    movq    -520(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -512(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1
    leaq    aicstr_0(%rip), %rax
    movq    %rax, -520(%rbp)
    jmp     .Lendif2
.Lelse1:
.Lendif2:
    movq    $2, %rax
    movq    %rax, %rdi
    call    aic_arg
    movq    %rax, -672(%rbp)
    movq    -672(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -664(%rbp)
    movq    -664(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse3
    leaq    aicstr_1(%rip), %rax
    movq    %rax, -672(%rbp)
    jmp     .Lendif4
.Lelse3:
.Lendif4:
    movq    -520(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok5
    jmp     .Lruntimeerror
.Lopenok5:
    movq    %rax, -464(%rbp)
    movq    -464(%rbp), %rax
    movq    %rax, %r12
    movq    %r12, %rdi
    call    aic_ftell
    movq    %rax, %r13
    movq    %r12, %rdi
    movq    $0, %rsi
    movq    $2, %rdx
    call    aic_fseek
    movq    %r12, %rdi
    call    aic_ftell
    movq    %rax, %r14
    movq    %r12, %rdi
    movq    %r13, %rsi
    movq    $0, %rdx
    call    aic_fseek
    movq    %r14, %rax
    movq    %rax, -624(%rbp)
    movq    -464(%rbp), %rax
    movq    %rax, %r12
    movq    -624(%rbp), %rax
    movq    %rax, %r13
    leaq    1(%r13), %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok6
    jmp     .Lruntimeerror
.Lallocok6:
    movq    %rax, %r14
    movq    %r14, %rdi
    movq    $1, %rsi
    movq    %r13, %rdx
    movq    %r12, %rcx
    call    aic_fread
    movb    $0, (%r14,%rax)
    movq    %r14, %rax
    movq    %rax, -896(%rbp)
    movq    -624(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok7
    jmp     .Lruntimeerror
.Lallocok7:
    movq    %rax, -944(%rbp)
    movq    $0, %rax
    movq    %rax, -488(%rbp)
    movq    $0, %rax
    movq    %rax, -936(%rbp)
    movq    $0, %rax
    movq    %rax, -504(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    $0, %rax
    movq    %rax, -912(%rbp)
    movq    $0, %rax
    movq    %rax, -8(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop8:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend9
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -48(%rbp)
    movq    -504(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse10
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse12
    movq    $0, %rax
    movq    %rax, -504(%rbp)
    jmp     .Lendif13
.Lelse12:
.Lendif13:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif11
.Lelse10:
    movq    -528(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse14
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse16
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_write_token
    movq    %rax, -936(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -936(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif17
.Lelse16:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
.Lendif17:
    jmp     .Lendif15
.Lelse14:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort20
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend21
.Lscshort20:
    movq    $1, %rax
.Lscend21:
    testq   %rax, %rax
    je      .Lelse18
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse22
    movq    $1, %rax
    jmp     .Lternend23
.Lternelse22:
    movq    $2, %rax
.Lternend23:
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_write_token
    movq    %rax, -936(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -936(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif19
.Lelse18:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse24
    movq    $1, %rax
    movq    %rax, -528(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -912(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif25
.Lelse24:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort28
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort30
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend31
.Lscshort30:
    movq    $0, %rax
.Lscend31:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend29
.Lscshort28:
    movq    $0, %rax
.Lscend29:
    testq   %rax, %rax
    je      .Lelse26
    movq    $1, %rax
    movq    %rax, -504(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif27
.Lelse26:
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_is_space
    testq   %rax, %rax
    je      .Lelse32
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif33
.Lelse32:
    movq    -488(%rbp), %rax
    movq    %rax, -8(%rbp)
.Lwtop34:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort36
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_is_atom_char
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend37
.Lscshort36:
    movq    $0, %rax
.Lscend37:
    testq   %rax, %rax
    je      .Lwend35
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lwtop34
.Lwend35:
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_write_token
    movq    %rax, -936(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -936(%rbp)
.Lendif33:
.Lendif27:
.Lendif25:
.Lendif19:
.Lendif15:
.Lendif11:
    jmp     .Lwtop8
.Lwend9:
    movq    -464(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok38
    jmp     .Lruntimeerror
.Lallocok38:
    movq    %rax, -904(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok39
    jmp     .Lruntimeerror
.Lallocok39:
    movq    %rax, -584(%rbp)
    movq    $0, %rax
    movq    %rax, -880(%rbp)
    movq    $0, %rax
    movq    %rax, -256(%rbp)
    movq    $0, %rax
    movq    %rax, -696(%rbp)
    movq    $0, %rax
    movq    %rax, -544(%rbp)
    movq    $0, %rax
    movq    %rax, -920(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
.Lwtop40:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend41
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -920(%rbp)
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse42
    movq    -904(%rbp), %rax
    pushq   %rax
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -880(%rbp)
    jmp     .Lendif43
.Lelse42:
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse44
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse46
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse48
    leaq    aicstr_3(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    movq    %rax, -256(%rbp)
    jmp     .Lendif49
.Lelse48:
.Lendif49:
    jmp     .Lendif47
.Lelse46:
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -880(%rbp)
    movq    -904(%rbp), %rax
    pushq   %rax
    movq    -880(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -544(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -696(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -696(%rbp)
.Lendif47:
    jmp     .Lendif45
.Lelse44:
.Lendif45:
.Lendif43:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -536(%rbp)
    jmp     .Lwtop40
.Lwend41:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort52
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend53
.Lscshort52:
    movq    $0, %rax
.Lscend53:
    testq   %rax, %rax
    je      .Lelse50
    movq    -904(%rbp), %rax
    pushq   %rax
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -544(%rbp)
    leaq    aicstr_5(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    movq    %rax, -256(%rbp)
    jmp     .Lendif51
.Lelse50:
.Lendif51:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse54
    movq    $1, %rax
    jmp     .Lmain_ret
    jmp     .Lendif55
.Lelse54:
.Lendif55:
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $32, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok56
    jmp     .Lruntimeerror
.Lallocok56:
    movq    %rax, -456(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok57
    jmp     .Lruntimeerror
.Lallocok57:
    movq    %rax, -576(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok58
    jmp     .Lruntimeerror
.Lallocok58:
    movq    %rax, -816(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok59
    jmp     .Lruntimeerror
.Lallocok59:
    movq    %rax, -824(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok60
    jmp     .Lruntimeerror
.Lallocok60:
    movq    %rax, -312(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok61
    jmp     .Lruntimeerror
.Lallocok61:
    movq    %rax, -320(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok62
    jmp     .Lruntimeerror
.Lallocok62:
    movq    %rax, -336(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok63
    jmp     .Lruntimeerror
.Lallocok63:
    movq    %rax, -328(%rbp)
    movq    $0, %rax
    movq    %rax, -448(%rbp)
    movq    $0, %rax
    movq    %rax, -552(%rbp)
    movq    $0, %rax
    movq    %rax, -808(%rbp)
    movq    $0, %rax
    movq    %rax, -304(%rbp)
    movq    $0, %rax
    movq    %rax, -432(%rbp)
    movq    $0, %rax
    movq    %rax, -632(%rbp)
    movq    $0, %rax
    movq    %rax, -704(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
.Lwtop64:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend65
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -920(%rbp)
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse66
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -432(%rbp)
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -632(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_section
    testq   %rax, %rax
    je      .Lelse68
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse70
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -704(%rbp)
    jmp     .Lendif71
.Lelse70:
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -704(%rbp)
.Lendif71:
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    imulq   $32, %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 0(%rbx,%rcx)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    imulq   $32, %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    imulq   $32, %rax
    pushq   %rax
    movq    -704(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 16(%rbx,%rcx)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    imulq   $32, %rax
    pushq   %rax
    movq    -432(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 24(%rbx,%rcx)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -448(%rbp)
    jmp     .Lendif69
.Lelse68:
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_record_def
    testq   %rax, %rax
    je      .Lelse72
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -864(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -848(%rbp)
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -864(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -848(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -304(%rbp), %rax
    movq    %rax, -344(%rbp)
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -440(%rbp)
    movq    $0, %rax
    movq    %rax, -216(%rbp)
.Lwtop74:
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    -432(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend75
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -320(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -328(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -216(%rbp)
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -304(%rbp)
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -440(%rbp)
    jmp     .Lwtop74
.Lwend75:
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -344(%rbp), %rax
    movq    %rax, -296(%rbp)
.Lwtop76:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend77
    movq    -336(%rbp), %rax
    pushq   %rax
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -296(%rbp)
    jmp     .Lwtop76
.Lwend77:
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -808(%rbp)
    jmp     .Lendif73
.Lelse72:
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    imulq   $16, %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 0(%rbx,%rcx)
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    imulq   $16, %rax
    pushq   %rax
    movq    -432(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -552(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -552(%rbp)
.Lendif73:
.Lendif69:
    movq    -432(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -536(%rbp)
    jmp     .Lendif67
.Lelse66:
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    imulq   $16, %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 0(%rbx,%rcx)
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    imulq   $16, %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -552(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -552(%rbp)
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -536(%rbp)
.Lendif67:
    jmp     .Lwtop64
.Lwend65:
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok78
    jmp     .Lruntimeerror
.Lallocok78:
    movq    %rax, -368(%rbp)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok79
    jmp     .Lruntimeerror
.Lallocok79:
    movq    %rax, -376(%rbp)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok80
    jmp     .Lruntimeerror
.Lallocok80:
    movq    %rax, -352(%rbp)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok81
    jmp     .Lruntimeerror
.Lallocok81:
    movq    %rax, -360(%rbp)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok82
    jmp     .Lruntimeerror
.Lallocok82:
    movq    %rax, -416(%rbp)
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok83
    jmp     .Lruntimeerror
.Lallocok83:
    movq    %rax, -408(%rbp)
    movq    $0, %rax
    movq    %rax, -288(%rbp)
    movq    $0, %rax
    movq    %rax, -768(%rbp)
    movq    $0, %rax
    movq    %rax, -720(%rbp)
    movq    $0, %rax
    movq    %rax, -688(%rbp)
    movq    $0, %rax
    movq    %rax, -752(%rbp)
    movq    $0, %rax
    movq    %rax, -792(%rbp)
    movq    $0, %rax
    movq    %rax, -760(%rbp)
    movq    $0, %rax
    movq    %rax, -888(%rbp)
    movq    $0, %rax
    movq    %rax, -744(%rbp)
    movq    $0, %rax
    movq    %rax, -240(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -264(%rbp)
    movq    $0, %rax
    movq    %rax, -800(%rbp)
.Lwtop84:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend85
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -768(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -264(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -768(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -720(%rbp)
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -888(%rbp)
    movq    -888(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok86
    jmp     .Lruntimeerror
.Lallocok86:
    movq    %rax, -712(%rbp)
    movq    -888(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok87
    jmp     .Lruntimeerror
.Lallocok87:
    movq    %rax, -224(%rbp)
    movq    $0, %rax
    movq    %rax, -744(%rbp)
    movq    $0, %rax
    movq    %rax, -240(%rbp)
    movq    -768(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -688(%rbp)
.Lwtop88:
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    -720(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend89
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse90
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -752(%rbp)
    movq    $1, %rax
    movq    %rax, -792(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -688(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -760(%rbp)
    jmp     .Lendif91
.Lelse90:
    movq    -688(%rbp), %rax
    movq    %rax, -752(%rbp)
    movq    $0, %rax
    movq    %rax, -792(%rbp)
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -760(%rbp)
.Lendif91:
    movq    -712(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -712(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -744(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -744(%rbp)
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_add
    movq    %rax, -240(%rbp)
    movq    -760(%rbp), %rax
    movq    %rax, -688(%rbp)
    jmp     .Lwtop88
.Lwend89:
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    movq    %rax, -16(%rbp)
.Lwtop92:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend93
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort96
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort98
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort100
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort102
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend103
.Lscshort102:
    movq    $0, %rax
.Lscend103:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend101
.Lscshort100:
    movq    $0, %rax
.Lscend101:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend99
.Lscshort98:
    movq    $0, %rax
.Lscend99:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend97
.Lscshort96:
    movq    $0, %rax
.Lscend97:
    testq   %rax, %rax
    je      .Lelse94
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_add
    movq    %rax, -240(%rbp)
    jmp     .Lendif95
.Lelse94:
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort106
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort108
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort110
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort112
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort114
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend115
.Lscshort114:
    movq    $0, %rax
.Lscend115:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend113
.Lscshort112:
    movq    $0, %rax
.Lscend113:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend111
.Lscshort110:
    movq    $0, %rax
.Lscend111:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend109
.Lscshort108:
    movq    $0, %rax
.Lscend109:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend107
.Lscshort106:
    movq    $0, %rax
.Lscend107:
    testq   %rax, %rax
    je      .Lelse104
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_map_var_tok
    movq    %rax, -616(%rbp)
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse116
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_add
    movq    %rax, -240(%rbp)
    jmp     .Lendif117
.Lelse116:
.Lendif117:
    jmp     .Lendif105
.Lelse104:
.Lendif105:
.Lendif95:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop92
.Lwend93:
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_sort_decls
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok118
    jmp     .Lruntimeerror
.Lallocok118:
    movq    %rax, -928(%rbp)
    movq    $0, %rax
    movq    %rax, -800(%rbp)
.Lwtop119:
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend120
    movq    -928(%rbp), %rax
    pushq   %rax
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    -712(%rbp), %rax
    pushq   %rax
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -800(%rbp)
    jmp     .Lwtop119
.Lwend120:
    movq    -368(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -712(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -928(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -640(%rbp)
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse121
    movq    $1, %rax
    jmp     .Lternend122
.Lternelse121:
    movq    $0, %rax
.Lternend122:
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -288(%rbp)
    jmp     .Lwtop84
.Lwend85:
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok123
    jmp     .Lruntimeerror
.Lallocok123:
    movq    %rax, -560(%rbp)
    movq    $0, %rax
    movq    %rax, -568(%rbp)
    movq    $0, %rax
    movq    %rax, -608(%rbp)
    movq    $0, %rax
    movq    %rax, -592(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop124:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend125
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -608(%rbp)
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -592(%rbp)
    movq    -608(%rbp), %rax
    movq    %rax, -16(%rbp)
.Lwtop126:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -592(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend127
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort130
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort132
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort134
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort136
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend137
.Lscshort136:
    movq    $0, %rax
.Lscend137:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend135
.Lscshort134:
    movq    $0, %rax
.Lscend135:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend133
.Lscshort132:
    movq    $0, %rax
.Lscend133:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend131
.Lscshort130:
    movq    $0, %rax
.Lscend131:
    testq   %rax, %rax
    je      .Lelse128
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_add
    movq    %rax, -568(%rbp)
    jmp     .Lendif129
.Lelse128:
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort140
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -936(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort142
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort144
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort146
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort148
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend149
.Lscshort148:
    movq    $0, %rax
.Lscend149:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend147
.Lscshort146:
    movq    $0, %rax
.Lscend147:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend145
.Lscshort144:
    movq    $0, %rax
.Lscend145:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend143
.Lscshort142:
    movq    $0, %rax
.Lscend143:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend141
.Lscshort140:
    movq    $0, %rax
.Lscend141:
    testq   %rax, %rax
    je      .Lelse138
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_map_var_tok
    movq    %rax, -616(%rbp)
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse150
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_add
    movq    %rax, -568(%rbp)
    jmp     .Lendif151
.Lelse150:
.Lendif151:
    jmp     .Lendif139
.Lelse138:
.Lendif139:
.Lendif129:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop126
.Lwend127:
    incq    -600(%rbp)
    jmp     .Lmaptop124
.Lmapend125:
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_sort_decls
    leaq    aicstr_6(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -448(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_7(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -552(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, -288(%rbp)
.Lmaptop152:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend153
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -632(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse154
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, -424(%rbp)
    jmp     .Lendif155
.Lelse154:
    leaq    aicstr_8(%rip), %rax
    movq    %rax, -424(%rbp)
.Lendif155:
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -288(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -424(%rbp), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_10(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_11(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    incq    -288(%rbp)
    jmp     .Lmaptop152
.Lmapend153:
    leaq    aicstr_12(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -568(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $280, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok156
    jmp     .Lruntimeerror
.Lallocok156:
    movq    %rax, -472(%rbp)
    movq    $0, %rax
    movq    %rax, -608(%rbp)
    movq    $0, %rax
    movq    %rax, -592(%rbp)
    movq    $0, %rax
    movq    %rax, -208(%rbp)
    movq    $0, %rax
    movq    %rax, -496(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop157:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend158
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -608(%rbp)
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -592(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    -592(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_stmt
    movq    %rax, -208(%rbp)
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -496(%rbp)
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    pushq   %rax
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    incq    -600(%rbp)
    jmp     .Lmaptop157
.Lmapend158:
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_14(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_15(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_16(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_17(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_18(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_19(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_20(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_21(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_22(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_23(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_24(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_25(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_26(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_27(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_28(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_29(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_30(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_31(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_32(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_33(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_34(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $22, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_35(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_36(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_37(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_38(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_39(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $27, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_40(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $280, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok159
    jmp     .Lruntimeerror
.Lallocok159:
    movq    %rax, -480(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop160:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend161
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -608(%rbp)
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -592(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    -592(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    incq    -600(%rbp)
    jmp     .Lmaptop160
.Lmapend161:
    movq    $0, -288(%rbp)
.Lmaptop162:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend163
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -776(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -272(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -776(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -728(%rbp)
    movq    -728(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
.Lwtop164:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend165
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop164
.Lwend165:
    incq    -288(%rbp)
    jmp     .Lmaptop162
.Lmapend163:
    leaq    aicstr_41(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_42(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_43(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_44(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_45(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_46(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_47(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_48(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_49(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_50(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_51(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_52(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_53(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_54(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_55(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok166
    jmp     .Lruntimeerror
.Lallocok166:
    movq    %rax, -680(%rbp)
    movq    $0, %rax
    movq    %rax, -952(%rbp)
    movq    $0, %rax
    movq    %rax, -960(%rbp)
    movq    $0, %rax
    movq    %rax, -968(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop167:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend168
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -608(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_collect_reads
    movq    %rax, -648(%rbp)
    movq    $0, -832(%rbp)
.Lmaptop169:
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    -648(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend170
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -864(%rbp)
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -848(%rbp)
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -952(%rbp)
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -864(%rbp), %rax
    pushq   %rax
    movq    -848(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse171
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -960(%rbp)
    jmp     .Lendif172
.Lelse171:
    movq    -968(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -968(%rbp)
    leaq    aicstr_56(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -864(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_57(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -848(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif172:
    incq    -832(%rbp)
    jmp     .Lmaptop169
.Lmapend170:
    incq    -600(%rbp)
    jmp     .Lmaptop167
.Lmapend168:
    leaq    aicstr_58(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_59(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -952(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_60(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -960(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_61(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -968(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    movq    %rax, -392(%rbp)
    movq    $0, %rax
    movq    %rax, -384(%rbp)
    movq    $0, %rax
    movq    %rax, -400(%rbp)
    movq    $0, -288(%rbp)
.Lmaptop173:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend174
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -784(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -280(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -784(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -736(%rbp)
    movq    -736(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -232(%rbp)
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -248(%rbp)
.Lwtop175:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend176
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_collect_reads
    movq    %rax, -656(%rbp)
    movq    $0, -840(%rbp)
.Lmaptop177:
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -656(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend178
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -872(%rbp)
    movq    -680(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -856(%rbp)
    movq    -392(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -392(%rbp)
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    -872(%rbp), %rax
    pushq   %rax
    movq    -856(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse179
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -384(%rbp)
    jmp     .Lendif180
.Lelse179:
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -400(%rbp)
    leaq    aicstr_62(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -288(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_63(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -872(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_57(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -856(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif180:
    incq    -840(%rbp)
    jmp     .Lmaptop177
.Lmapend178:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop175
.Lwend176:
    incq    -288(%rbp)
    jmp     .Lmaptop173
.Lmapend174:
    leaq    aicstr_64(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_65(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -392(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_60(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -384(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_61(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -400(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok181
    jmp     .Lruntimeerror
.Lallocok181:
    movq    %rax, -128(%rbp)
    leaq    aicstr_66(%rip), %rax
    movq    %rax, %rdi
    leaq    aicstr_67(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok182
    jmp     .Lruntimeerror
.Lopenok182:
    movq    %rax, -80(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok183
    jmp     .Lruntimeerror
.Lallocok183:
    movq    %rax, -184(%rbp)
    movq    $200, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok184
    jmp     .Lruntimeerror
.Lallocok184:
    movq    %rax, -200(%rbp)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    -456(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    leaq    aicstr_68(%rip), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    pushq   %rax
    movq    -408(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    $-1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    pushq   %rax
    movq    -816(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    pushq   %rax
    movq    -824(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    movq    -312(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    pushq   %rax
    movq    -320(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    pushq   %rax
    movq    -336(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    pushq   %rax
    movq    -328(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $22, %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    $0, -136(%rbp)
.Lmaptop185:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend186
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -144(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    incq    -136(%rbp)
    jmp     .Lmaptop185
.Lmapend186:
    movq    $0, -120(%rbp)
.Lmaptop187:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend188
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -192(%rbp)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -176(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -112(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
.Lwtop189:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend190
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lwtop189
.Lwend190:
    incq    -120(%rbp)
    jmp     .Lmaptop187
.Lmapend188:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    $-1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_frame_size_for
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_main_prologue
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_zero_slots
    movq    $0, -136(%rbp)
.Lmaptop191:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend192
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -144(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    incq    -136(%rbp)
    jmp     .Lmaptop191
.Lmapend192:
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_main_epilogue
    movq    -448(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse193
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif194
.Lelse193:
.Lendif194:
    movq    $0, -120(%rbp)
.Lmaptop195:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend196
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -192(%rbp)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_frame_size_for
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_function_prologue
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse197
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif198
.Lelse197:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_arg_copies
.Lendif198:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse199
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif200
.Lelse199:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_zero_slots_from
.Lendif200:
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -176(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -112(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
.Lwtop201:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend202
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lwtop201
.Lwend202:
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_function_epilogue
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse203
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif204
.Lelse203:
.Lendif204:
    incq    -120(%rbp)
    jmp     .Lmaptop195
.Lmapend196:
    movq    -80(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -672(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_67(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok205
    jmp     .Lruntimeerror
.Lopenok205:
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_prefix
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_str_rodata
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse206
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_divzero
    jmp     .Lendif207
.Lelse206:
.Lendif207:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort210
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend211
.Lscshort210:
    movq    $0, %rax
.Lscend211:
    testq   %rax, %rax
    je      .Lelse208
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif209
.Lelse208:
.Lendif209:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse212
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_runtime
    jmp     .Lendif213
.Lelse212:
.Lendif213:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort216
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend217
.Lscshort216:
    movq    $0, %rax
.Lscend217:
    testq   %rax, %rax
    je      .Lelse214
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif215
.Lelse214:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_70(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif215:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_71(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    leaq    aicstr_66(%rip), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_copy_file_to
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse218
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_divzero_handler
    jmp     .Lendif219
.Lelse218:
.Lendif219:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse220
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_runtime_handler
    jmp     .Lendif221
.Lelse220:
.Lendif221:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    jne      .Lscshort224
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend225
.Lscshort224:
    movq    $1, %rax
.Lscend225:
    testq   %rax, %rax
    je      .Lelse222
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif223
.Lelse222:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_70(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif223:
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_note_section
    movq    -152(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    $0, %rax
.Lmain_ret:
    leave
    ret

aicfn_is_space:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $32, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort226
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort228
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort230
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend231
.Lscshort230:
    movq    $1, %rax
.Lscend231:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend229
.Lscshort228:
    movq    $1, %rax
.Lscend229:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend227
.Lscshort226:
    movq    $1, %rax
.Lscend227:
    jmp     .Lret_is_space
    movq    $0, %rax
.Lret_is_space:
    leave
    ret

aicfn_is_atom_char:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_is_space
    testq   %rax, %rax
    jne      .Lscshort232
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort234
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort236
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend237
.Lscshort236:
    movq    $1, %rax
.Lscend237:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend235
.Lscshort234:
    movq    $1, %rax
.Lscend235:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend233
.Lscshort232:
    movq    $1, %rax
.Lscend233:
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    jmp     .Lret_is_atom_char
    movq    $0, %rax
.Lret_is_atom_char:
    leave
    ret

aicfn_write_token:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)

    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    -16(%rbp), %rax
    jmp     .Lret_write_token
    movq    $0, %rax
.Lret_write_token:
    leave
    ret

aicfn_is_section:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort238
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort242
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend243
.Lscshort242:
    movq    $0, %rax
.Lscend243:
    testq   %rax, %rax
    jne      .Lscshort240
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort244
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $194, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort246
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $167, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend247
.Lscshort246:
    movq    $0, %rax
.Lscend247:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend245
.Lscshort244:
    movq    $0, %rax
.Lscend245:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend241
.Lscshort240:
    movq    $1, %rax
.Lscend241:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend239
.Lscshort238:
    movq    $0, %rax
.Lscend239:
    jmp     .Lret_is_section
    movq    $0, %rax
.Lret_is_section:
    leave
    ret

aicfn_is_record_def:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort248
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort250
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort252
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend253
.Lscshort252:
    movq    $0, %rax
.Lscend253:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend251
.Lscshort250:
    movq    $0, %rax
.Lscend251:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend249
.Lscshort248:
    movq    $0, %rax
.Lscend249:
    jmp     .Lret_is_record_def
    movq    $0, %rax
.Lret_is_record_def:
    leave
    ret

aicfn_slice_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    %rax, %rdi
    incq    %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok254
    jmp     .Lruntimeerror
.Lallocok254:
    popq    %rcx
    popq    %rbx
    popq    %rsi
    addq    %rbx, %rsi
    movq    %rax, %rdi
    pushq   %rax
    rep movsb
    popq    %rax
    jmp     .Lret_slice_str
    movq    $0, %rax
.Lret_slice_str:
    leave
    ret

aicfn_streq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $1, %rax
    movq    %rax, -56(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse255
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif256
.Lelse255:
.Lendif256:
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop257:
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort259
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend260
.Lscshort259:
    movq    $0, %rax
.Lscend260:
    testq   %rax, %rax
    je      .Lwend258
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse261
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif262
.Lelse261:
.Lendif262:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop257
.Lwend258:
    movq    -56(%rbp), %rax
    jmp     .Lret_streq
    movq    $0, %rax
.Lret_streq:
    leave
    ret

aicfn_decl_add:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop263:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort265
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend266
.Lscshort265:
    movq    $0, %rax
.Lscend266:
    testq   %rax, %rax
    je      .Lwend264
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse267
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif268
.Lelse267:
.Lendif268:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop263
.Lwend264:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse269
    jmp     .Lendif270
.Lelse269:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
.Lendif270:
    movq    -24(%rbp), %rax
    jmp     .Lret_decl_add
    movq    $0, %rax
.Lret_decl_add:
    leave
    ret

aicfn_classify_op1:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse271
    movq    $1, %rax
    jmp     .Lternend272
.Lternelse271:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse273
    movq    $2, %rax
    jmp     .Lternend274
.Lternelse273:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $63, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse275
    movq    $3, %rax
    jmp     .Lternend276
.Lternelse275:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $87, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse277
    movq    $4, %rax
    jmp     .Lternend278
.Lternelse277:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $68, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse279
    movq    $5, %rax
    jmp     .Lternend280
.Lternelse279:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse281
    movq    $6, %rax
    jmp     .Lternend282
.Lternelse281:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse283
    movq    $7, %rax
    jmp     .Lternend284
.Lternelse283:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse285
    movq    $22, %rax
    jmp     .Lternend286
.Lternelse285:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $72, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse287
    movq    $13, %rax
    jmp     .Lternend288
.Lternelse287:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $76, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse289
    movq    $14, %rax
    jmp     .Lternend290
.Lternelse289:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $78, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse291
    movq    $15, %rax
    jmp     .Lternend292
.Lternelse291:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $86, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse293
    movq    $16, %rax
    jmp     .Lternend294
.Lternelse293:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $79, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse295
    movq    $17, %rax
    jmp     .Lternend296
.Lternelse295:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $90, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse297
    movq    $18, %rax
    jmp     .Lternend298
.Lternelse297:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $82, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse299
    movq    $19, %rax
    jmp     .Lternend300
.Lternelse299:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $75, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse301
    movq    $20, %rax
    jmp     .Lternend302
.Lternelse301:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $88, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse303
    movq    $21, %rax
    jmp     .Lternend304
.Lternelse303:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $65, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse305
    movq    $23, %rax
    jmp     .Lternend306
.Lternelse305:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $73, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse307
    movq    $24, %rax
    jmp     .Lternend308
.Lternelse307:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $70, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse309
    movq    $25, %rax
    jmp     .Lternend310
.Lternelse309:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $84, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse311
    movq    $26, %rax
    jmp     .Lternend312
.Lternelse311:
    movq    $-2, %rax
.Lternend312:
.Lternend310:
.Lternend308:
.Lternend306:
.Lternend304:
.Lternend302:
.Lternend300:
.Lternend298:
.Lternend296:
.Lternend294:
.Lternend292:
.Lternend290:
.Lternend288:
.Lternend286:
.Lternend284:
.Lternend282:
.Lternend280:
.Lternend278:
.Lternend276:
.Lternend274:
.Lternend272:
    jmp     .Lret_classify_op1
    movq    $0, %rax
.Lret_classify_op1:
    leave
    ret

aicfn_classify_op2:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort315
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend316
.Lscshort315:
    movq    $0, %rax
.Lscend316:
    testq   %rax, %rax
    je      .Lternelse313
    movq    $8, %rax
    jmp     .Lternend314
.Lternelse313:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort319
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend320
.Lscshort319:
    movq    $0, %rax
.Lscend320:
    testq   %rax, %rax
    je      .Lternelse317
    movq    $9, %rax
    jmp     .Lternend318
.Lternelse317:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $194, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort323
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $167, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend324
.Lscshort323:
    movq    $0, %rax
.Lscend324:
    testq   %rax, %rax
    je      .Lternelse321
    movq    $22, %rax
    jmp     .Lternend322
.Lternelse321:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort327
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend328
.Lscshort327:
    movq    $0, %rax
.Lscend328:
    testq   %rax, %rax
    je      .Lternelse325
    movq    $27, %rax
    jmp     .Lternend326
.Lternelse325:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort331
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend332
.Lscshort331:
    movq    $0, %rax
.Lscend332:
    testq   %rax, %rax
    je      .Lternelse329
    movq    $28, %rax
    jmp     .Lternend330
.Lternelse329:
    movq    $-2, %rax
.Lternend330:
.Lternend326:
.Lternend322:
.Lternend318:
.Lternend314:
    jmp     .Lret_classify_op2
    movq    $0, %rax
.Lret_classify_op2:
    leave
    ret

aicfn_classify_op3:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort335
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort337
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend338
.Lscshort337:
    movq    $0, %rax
.Lscend338:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend336
.Lscshort335:
    movq    $0, %rax
.Lscend336:
    testq   %rax, %rax
    je      .Lternelse333
    movq    $10, %rax
    jmp     .Lternend334
.Lternelse333:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort341
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort343
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend344
.Lscshort343:
    movq    $0, %rax
.Lscend344:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend342
.Lscshort341:
    movq    $0, %rax
.Lscend342:
    testq   %rax, %rax
    je      .Lternelse339
    movq    $11, %rax
    jmp     .Lternend340
.Lternelse339:
    movq    $-2, %rax
.Lternend340:
.Lternend334:
    jmp     .Lret_classify_op3
    movq    $0, %rax
.Lret_classify_op3:
    leave
    ret

aicfn_classify_op4:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort347
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort349
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort351
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend352
.Lscshort351:
    movq    $0, %rax
.Lscend352:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend350
.Lscshort349:
    movq    $0, %rax
.Lscend350:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend348
.Lscshort347:
    movq    $0, %rax
.Lscend348:
    testq   %rax, %rax
    je      .Lternelse345
    movq    $12, %rax
    jmp     .Lternend346
.Lternelse345:
    movq    $-2, %rax
.Lternend346:
    jmp     .Lret_classify_op4
    movq    $0, %rax
.Lret_classify_op4:
    leave
    ret

aicfn_classify_record_op:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -40(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort355
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend356
.Lscshort355:
    movq    $1, %rax
.Lscend356:
    testq   %rax, %rax
    je      .Lelse353
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif354
.Lelse353:
.Lendif354:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse357
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif358
.Lelse357:
.Lendif358:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse359
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif360
.Lelse359:
.Lendif360:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -56(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort363
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend364
.Lscshort363:
    movq    $0, %rax
.Lscend364:
    testq   %rax, %rax
    je      .Lelse361
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif362
.Lelse361:
.Lendif362:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort367
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend368
.Lscshort367:
    movq    $0, %rax
.Lscend368:
    testq   %rax, %rax
    je      .Lelse365
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif366
.Lelse365:
.Lendif366:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse369
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif370
.Lelse369:
.Lendif370:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -64(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort373
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort375
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend376
.Lscshort375:
    movq    $0, %rax
.Lscend376:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend374
.Lscshort373:
    movq    $0, %rax
.Lscend374:
    testq   %rax, %rax
    je      .Lelse371
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif372
.Lelse371:
.Lendif372:
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    movq    $0, %rax
.Lret_classify_record_op:
    leave
    ret

aicfn_record_op_prefix_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse377
    movq    $3, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif378
.Lelse377:
.Lendif378:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse379
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif380
.Lelse379:
.Lendif380:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse381
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse383
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif384
.Lelse383:
.Lendif384:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse385
    movq    $5, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif386
.Lelse385:
.Lendif386:
    jmp     .Lendif382
.Lelse381:
.Lendif382:
    movq    $0, %rax
    jmp     .Lret_record_op_prefix_len
    movq    $0, %rax
.Lret_record_op_prefix_len:
    leave
    ret

aicfn_is_record_symbol:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop387:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend388
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort391
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend392
.Lscshort391:
    movq    $1, %rax
.Lscend392:
    testq   %rax, %rax
    je      .Lelse389
    movq    $1, %rax
    jmp     .Lret_is_record_symbol
    jmp     .Lendif390
.Lelse389:
.Lendif390:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop387
.Lwend388:
    movq    $0, %rax
    jmp     .Lret_is_record_symbol
    movq    $0, %rax
.Lret_is_record_symbol:
    leave
    ret

aicfn_classify_op_only:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $-2, %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse393
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif394
.Lelse393:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -32(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse395
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif396
.Lelse395:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse397
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -64(%rbp)
    jmp     .Lendif398
.Lelse397:
.Lendif398:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse399
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -64(%rbp)
    jmp     .Lendif400
.Lelse399:
.Lendif400:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse401
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -64(%rbp)
    jmp     .Lendif402
.Lelse401:
.Lendif402:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse403
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -64(%rbp)
    jmp     .Lendif404
.Lelse403:
.Lendif404:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort407
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend408
.Lscshort407:
    movq    $0, %rax
.Lscend408:
    testq   %rax, %rax
    je      .Lelse405
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -64(%rbp)
    jmp     .Lendif406
.Lelse405:
.Lendif406:
.Lendif396:
.Lendif394:
    movq    -64(%rbp), %rax
    jmp     .Lret_classify_op_only
    movq    $0, %rax
.Lret_classify_op_only:
    leave
    ret

aicfn_next_child_end:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse409
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lternend410
.Lternelse409:
    movq    -24(%rbp), %rax
.Lternend410:
    jmp     .Lret_next_child_end
    movq    $0, %rax
.Lret_next_child_end:
    leave
    ret

aicfn_recurse_stmt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op_only
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse411
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop413:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend414
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop413
.Lwend414:
    jmp     .Lendif412
.Lelse411:
.Lendif412:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse415
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -72(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort417
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend418
.Lscshort417:
    movq    $0, %rax
.Lscend418:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse419
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend420
.Lternelse419:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend420:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, -120(%rbp)
.Lwtop421:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend422
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop421
.Lwend422:
    jmp     .Lendif416
.Lelse415:
.Lendif416:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse423
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop425:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend426
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop425
.Lwend426:
    jmp     .Lendif424
.Lelse423:
.Lendif424:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse427
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse429
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse431
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    jmp     .Lendif432
.Lelse431:
.Lendif432:
    jmp     .Lendif430
.Lelse429:
.Lendif430:
    jmp     .Lendif428
.Lelse427:
.Lendif428:
    movq    -96(%rbp), %rax
    jmp     .Lret_recurse_stmt
    movq    $0, %rax
.Lret_recurse_stmt:
    leave
    ret

aicfn_is_numeric_atom:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse433
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lternend434
.Lternelse433:
    movq    $0, %rax
.Lternend434:
    movq    %rax, -40(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort437
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $57, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend438
.Lscshort437:
    movq    $0, %rax
.Lscend438:
    testq   %rax, %rax
    jne      .Lscshort435
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort439
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort441
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort443
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $57, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend444
.Lscshort443:
    movq    $0, %rax
.Lscend444:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend442
.Lscshort441:
    movq    $0, %rax
.Lscend442:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend440
.Lscshort439:
    movq    $0, %rax
.Lscend440:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend436
.Lscshort435:
    movq    $1, %rax
.Lscend436:
    jmp     .Lret_is_numeric_atom
    movq    $0, %rax
.Lret_is_numeric_atom:
    leave
    ret

aicfn_decl_contains:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop445:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort447
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend448
.Lscshort447:
    movq    $0, %rax
.Lscend448:
    testq   %rax, %rax
    je      .Lwend446
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse449
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif450
.Lelse449:
.Lendif450:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop445
.Lwend446:
    movq    -48(%rbp), %rax
    jmp     .Lret_decl_contains
    movq    $0, %rax
.Lret_decl_contains:
    leave
    ret

aicfn_collect_reads:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $192, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -184(%rbp)
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse451
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort453
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort455
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort457
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend458
.Lscshort457:
    movq    $0, %rax
.Lscend458:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend456
.Lscshort455:
    movq    $0, %rax
.Lscend456:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend454
.Lscshort453:
    movq    $0, %rax
.Lscend454:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse459
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif460
.Lelse459:
.Lendif460:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort461
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort463
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend464
.Lscshort463:
    movq    $0, %rax
.Lscend464:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend462
.Lscshort461:
    movq    $0, %rax
.Lscend462:
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort465
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort467
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort469
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend470
.Lscshort469:
    movq    $0, %rax
.Lscend470:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend468
.Lscshort467:
    movq    $0, %rax
.Lscend468:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend466
.Lscshort465:
    movq    $0, %rax
.Lscend466:
    movq    %rax, -136(%rbp)
    movq    $-1, %rax
    movq    %rax, -176(%rbp)
    movq    -136(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse471
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort473
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend474
.Lscshort473:
    movq    $0, %rax
.Lscend474:
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse475
    movq    -168(%rbp), %rax
    jmp     .Lternend476
.Lternelse475:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend476:
    movq    %rax, -176(%rbp)
    jmp     .Lendif472
.Lelse471:
.Lendif472:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort477
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort479
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend480
.Lscshort479:
    movq    $0, %rax
.Lscend480:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend478
.Lscshort477:
    movq    $0, %rax
.Lscend478:
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse481
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    jmp     .Lendif482
.Lelse481:
.Lendif482:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    movq    $1, %rax
    movq    %rax, -96(%rbp)
.Lwtop483:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend484
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -72(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort489
    movq    -96(%rbp), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend490
.Lscshort489:
    movq    $0, %rax
.Lscend490:
    testq   %rax, %rax
    jne      .Lscshort487
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend488
.Lscshort487:
    movq    $1, %rax
.Lscend488:
    testq   %rax, %rax
    je      .Lelse485
    jmp     .Lendif486
.Lelse485:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_collect_reads
    movq    %rax, -48(%rbp)
.Lendif486:
    movq    $0, %rax
    movq    %rax, -96(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lwtop483
.Lwend484:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif452
.Lelse451:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse491
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_numeric_atom
    testq   %rax, %rax
    jne      .Lscshort495
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_record_symbol
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend496
.Lscshort495:
    movq    $1, %rax
.Lscend496:
    testq   %rax, %rax
    je      .Lelse493
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif494
.Lelse493:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_collect_reads
.Lendif494:
    jmp     .Lendif492
.Lelse491:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
.Lendif492:
.Lendif452:
    movq    $0, %rax
.Lret_collect_reads:
    leave
    ret

aicfn_classify_stmt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, %rax
    movq    %rax, -104(%rbp)
    movq    $0, %rax
    movq    %rax, -88(%rbp)
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
    movq    $-2, %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse497
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif498
.Lelse497:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse499
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif500
.Lelse499:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse501
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -112(%rbp)
    jmp     .Lendif502
.Lelse501:
.Lendif502:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse503
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -112(%rbp)
    jmp     .Lendif504
.Lelse503:
.Lendif504:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse505
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -112(%rbp)
    jmp     .Lendif506
.Lelse505:
.Lendif506:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse507
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -112(%rbp)
    jmp     .Lendif508
.Lelse507:
.Lendif508:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort511
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend512
.Lscshort511:
    movq    $0, %rax
.Lscend512:
    testq   %rax, %rax
    je      .Lelse509
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -112(%rbp)
    jmp     .Lendif510
.Lelse509:
.Lendif510:
.Lendif500:
.Lendif498:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse513
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
.Lwtop515:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort517
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend518
.Lscshort517:
    movq    $0, %rax
.Lscend518:
    testq   %rax, %rax
    je      .Lwend516
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -96(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse519
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif520
.Lelse519:
.Lendif520:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop515
.Lwend516:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse521
    movq    $0, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif522
.Lelse521:
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
.Lendif522:
    jmp     .Lendif514
.Lelse513:
.Lendif514:
    movq    -112(%rbp), %rax
    jmp     .Lret_classify_stmt
    movq    $0, %rax
.Lret_classify_stmt:
    leave
    ret

aicfn_decl_index:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    movq    $-1, %rax
    movq    %rax, -56(%rbp)
.Lwtop523:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort525
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend526
.Lscshort525:
    movq    $0, %rax
.Lscend526:
    testq   %rax, %rax
    je      .Lwend524
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse527
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif528
.Lelse527:
.Lendif528:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop523
.Lwend524:
    movq    -56(%rbp), %rax
    jmp     .Lret_decl_index
    movq    $0, %rax
.Lret_decl_index:
    leave
    ret

aicfn_strlt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse529
    movq    -24(%rbp), %rax
    jmp     .Lternend530
.Lternelse529:
    movq    -40(%rbp), %rax
.Lternend530:
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -64(%rbp)
    movq    $-1, %rax
    movq    %rax, -80(%rbp)
.Lwtop531:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort533
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend534
.Lscshort533:
    movq    $0, %rax
.Lscend534:
    testq   %rax, %rax
    je      .Lwend532
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -56(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse535
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif536
.Lelse535:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse537
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif538
.Lelse537:
.Lendif538:
.Lendif536:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lwtop531
.Lwend532:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse539
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse541
    movq    $1, %rax
    jmp     .Lternend542
.Lternelse541:
    movq    $0, %rax
.Lternend542:
    movq    %rax, -80(%rbp)
    jmp     .Lendif540
.Lelse539:
.Lendif540:
    movq    -80(%rbp), %rax
    jmp     .Lret_strlt
    movq    $0, %rax
.Lret_strlt:
    leave
    ret

aicfn_sort_decls:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
.Lwtop543:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend544
    movq    -40(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
.Lwtop545:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend546
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_strlt
    testq   %rax, %rax
    je      .Lelse547
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif548
.Lelse547:
.Lendif548:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop545
.Lwend546:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse549
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif550
.Lelse549:
.Lendif550:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop543
.Lwend544:
    movq    $0, %rax
    jmp     .Lret_sort_decls
    movq    $0, %rax
.Lret_sort_decls:
    leave
    ret

aicfn_count_params:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop551:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend552
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop551
.Lwend552:
    movq    -32(%rbp), %rax
    jmp     .Lret_count_params
    movq    $0, %rax
.Lret_count_params:
    leave
    ret

aicfn_argreg_name:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse553
    leaq    aicstr_72(%rip), %rax
    jmp     .Lternend554
.Lternelse553:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse555
    leaq    aicstr_73(%rip), %rax
    jmp     .Lternend556
.Lternelse555:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse557
    leaq    aicstr_74(%rip), %rax
    jmp     .Lternend558
.Lternelse557:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse559
    leaq    aicstr_75(%rip), %rax
    jmp     .Lternend560
.Lternelse559:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse561
    leaq    aicstr_76(%rip), %rax
    jmp     .Lternend562
.Lternelse561:
    leaq    aicstr_77(%rip), %rax
.Lternend562:
.Lternend560:
.Lternend558:
.Lternend556:
.Lternend554:
    jmp     .Lret_argreg_name
    movq    $0, %rax
.Lret_argreg_name:
    leave
    ret

aicfn_binop_code1:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $43, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse563
    movq    $1, %rax
    jmp     .Lternend564
.Lternelse563:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse565
    movq    $2, %rax
    jmp     .Lternend566
.Lternelse565:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $42, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse567
    movq    $3, %rax
    jmp     .Lternend568
.Lternelse567:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse569
    movq    $4, %rax
    jmp     .Lternend570
.Lternelse569:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $37, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse571
    movq    $5, %rax
    jmp     .Lternend572
.Lternelse571:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse573
    movq    $6, %rax
    jmp     .Lternend574
.Lternelse573:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse575
    movq    $7, %rax
    jmp     .Lternend576
.Lternelse575:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse577
    movq    $8, %rax
    jmp     .Lternend578
.Lternelse577:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse579
    movq    $9, %rax
    jmp     .Lternend580
.Lternelse579:
    movq    $-1, %rax
.Lternend580:
.Lternend578:
.Lternend576:
.Lternend574:
.Lternend572:
.Lternend570:
.Lternend568:
.Lternend566:
.Lternend564:
    jmp     .Lret_binop_code1
    movq    $0, %rax
.Lret_binop_code1:
    leave
    ret

aicfn_binop_code2:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort583
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend584
.Lscshort583:
    movq    $0, %rax
.Lscend584:
    testq   %rax, %rax
    je      .Lternelse581
    movq    $10, %rax
    jmp     .Lternend582
.Lternelse581:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort587
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend588
.Lscshort587:
    movq    $0, %rax
.Lscend588:
    testq   %rax, %rax
    je      .Lternelse585
    movq    $11, %rax
    jmp     .Lternend586
.Lternelse585:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort591
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend592
.Lscshort591:
    movq    $0, %rax
.Lscend592:
    testq   %rax, %rax
    je      .Lternelse589
    movq    $12, %rax
    jmp     .Lternend590
.Lternelse589:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort595
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend596
.Lscshort595:
    movq    $0, %rax
.Lscend596:
    testq   %rax, %rax
    je      .Lternelse593
    movq    $13, %rax
    jmp     .Lternend594
.Lternelse593:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort599
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend600
.Lscshort599:
    movq    $0, %rax
.Lscend600:
    testq   %rax, %rax
    je      .Lternelse597
    movq    $14, %rax
    jmp     .Lternend598
.Lternelse597:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort603
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend604
.Lscshort603:
    movq    $0, %rax
.Lscend604:
    testq   %rax, %rax
    je      .Lternelse601
    movq    $15, %rax
    jmp     .Lternend602
.Lternelse601:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort607
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend608
.Lscshort607:
    movq    $0, %rax
.Lscend608:
    testq   %rax, %rax
    je      .Lternelse605
    movq    $16, %rax
    jmp     .Lternend606
.Lternelse605:
    movq    $-1, %rax
.Lternend606:
.Lternend602:
.Lternend598:
.Lternend594:
.Lternend590:
.Lternend586:
.Lternend582:
    jmp     .Lret_binop_code2
    movq    $0, %rax
.Lret_binop_code2:
    leave
    ret

aicfn_binop_classify:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    $-1, %rax
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse609
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_binop_code1
    movq    %rax, -48(%rbp)
    jmp     .Lendif610
.Lelse609:
.Lendif610:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse611
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -40(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_binop_code2
    movq    %rax, -48(%rbp)
    jmp     .Lendif612
.Lelse611:
.Lendif612:
    movq    -48(%rbp), %rax
    jmp     .Lret_binop_classify
    movq    $0, %rax
.Lret_binop_classify:
    leave
    ret

aicfn_can_fold_binop:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse613
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif614
.Lelse613:
.Lendif614:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse615
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif616
.Lelse615:
.Lendif616:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse617
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort619
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend620
.Lscshort619:
    movq    $0, %rax
.Lscend620:
    jmp     .Lret_can_fold_binop
    jmp     .Lendif618
.Lelse617:
.Lendif618:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse621
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort623
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend624
.Lscshort623:
    movq    $0, %rax
.Lscend624:
    jmp     .Lret_can_fold_binop
    jmp     .Lendif622
.Lelse621:
.Lendif622:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort629
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend630
.Lscshort629:
    movq    $0, %rax
.Lscend630:
    testq   %rax, %rax
    jne      .Lscshort627
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort631
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort633
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend634
.Lscshort633:
    movq    $1, %rax
.Lscend634:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend632
.Lscshort631:
    movq    $1, %rax
.Lscend632:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend628
.Lscshort627:
    movq    $1, %rax
.Lscend628:
    testq   %rax, %rax
    je      .Lelse625
    movq    $1, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif626
.Lelse625:
.Lendif626:
    movq    $0, %rax
    jmp     .Lret_can_fold_binop
    movq    $0, %rax
.Lret_can_fold_binop:
    leave
    ret

aicfn_fold_binop:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse635
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif636
.Lelse635:
.Lendif636:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse637
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif638
.Lelse637:
.Lendif638:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse639
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif640
.Lelse639:
.Lendif640:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse641
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok643
    jmp     .Ldivzero
.Ldivok643:
    cqto
    idivq   %rbx
    jmp     .Lret_fold_binop
    jmp     .Lendif642
.Lelse641:
.Lendif642:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse644
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok646
    jmp     .Ldivzero
.Ldivok646:
    cqto
    idivq   %rbx
    movq    %rdx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif645
.Lelse644:
.Lendif645:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse647
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif648
.Lelse647:
.Lendif648:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse649
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    orq     %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif650
.Lelse649:
.Lendif650:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse651
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    xorq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif652
.Lelse651:
.Lendif652:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse653
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    %rbx, %rcx
    shlq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif654
.Lelse653:
.Lendif654:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse655
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    %rbx, %rcx
    sarq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif656
.Lelse655:
.Lendif656:
    movq    $0, %rax
    jmp     .Lret_fold_binop
    movq    $0, %rax
.Lret_fold_binop:
    leave
    ret

aicfn_emit_byte_op:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse657
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_79(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_80(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_81(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif658
.Lelse657:
.Lendif658:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse659
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_83(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_84(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif660
.Lelse659:
.Lendif660:
    movq    $0, %rax
    jmp     .Lret_emit_byte_op
    movq    $0, %rax
.Lret_emit_byte_op:
    leave
    ret

aicfn_emit_word_op:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort663
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend664
.Lscshort663:
    movq    $1, %rax
.Lscend664:
    testq   %rax, %rax
    je      .Lelse661
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_79(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_80(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_85(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif662
.Lelse661:
.Lendif662:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort667
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend668
.Lscshort667:
    movq    $1, %rax
.Lscend668:
    testq   %rax, %rax
    je      .Lelse665
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_83(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_86(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif666
.Lelse665:
.Lendif666:
    movq    $0, %rax
    jmp     .Lret_emit_word_op
    movq    $0, %rax
.Lret_emit_word_op:
    leave
    ret

aicfn_emit_call:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -136(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -96(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse669
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lendif670
.Lelse669:
.Lendif670:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
.Lwtop671:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend672
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    jmp     .Lwtop671
.Lwend672:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -88(%rbp)
.Lwtop673:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend674
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_87(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_argreg_name
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -88(%rbp)
    jmp     .Lwtop673
.Lwend674:
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_88(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_call
    movq    $0, %rax
.Lret_emit_call:
    leave
    ret

aicfn_new_label_num:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    jmp     .Lret_new_label_num
    movq    $0, %rax
.Lret_new_label_num:
    leave
    ret

aicfn_resolve_func:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
.Lwtop675:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort677
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend678
.Lscshort677:
    movq    $0, %rax
.Lscend678:
    testq   %rax, %rax
    je      .Lwend676
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse679
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif680
.Lelse679:
.Lendif680:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse681
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif682
.Lelse681:
.Lendif682:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop675
.Lwend676:
    movq    -64(%rbp), %rax
    jmp     .Lret_resolve_func
    movq    $0, %rax
.Lret_resolve_func:
    leave
    ret

aicfn_streq_ptr:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -32(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse683
    movq    $0, %rax
    jmp     .Lret_streq_ptr
    jmp     .Lendif684
.Lelse683:
.Lendif684:
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop685:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort687
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend688
.Lscshort687:
    movq    $0, %rax
.Lscend688:
    testq   %rax, %rax
    je      .Lwend686
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse689
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif690
.Lelse689:
.Lendif690:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop685
.Lwend686:
    movq    -48(%rbp), %rax
    jmp     .Lret_streq_ptr
    movq    $0, %rax
.Lret_streq_ptr:
    leave
    ret

aicfn_string_label_num:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    movq    $-1, %rax
    movq    %rax, -40(%rbp)
.Lwtop691:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort693
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend694
.Lscshort693:
    movq    $0, %rax
.Lscend694:
    testq   %rax, %rax
    je      .Lwend692
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -32(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_streq_ptr
    testq   %rax, %rax
    je      .Lelse695
    movq    -48(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif696
.Lelse695:
.Lendif696:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop691
.Lwend692:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse697
    movq    -40(%rbp), %rax
    jmp     .Lret_string_label_num
    jmp     .Lendif698
.Lelse697:
.Lendif698:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    jmp     .Lret_string_label_num
    movq    $0, %rax
.Lret_string_label_num:
    leave
    ret

aicfn_fopen_mode_value:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -40(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $114, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse699
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif700
.Lelse699:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse701
    leaq    aicstr_67(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif702
.Lelse701:
    leaq    aicstr_89(%rip), %rax
    jmp     .Lret_fopen_mode_value
.Lendif702:
.Lendif700:
    movq    $0, %rax
.Lret_fopen_mode_value:
    leave
    ret

aicfn_static_type:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $272, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    $0, -256(%rbp)
    movq    $0, -264(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -248(%rbp)
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse703
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif704
.Lelse703:
.Lendif704:
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse705
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_numeric_atom
    testq   %rax, %rax
    je      .Lelse707
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif708
.Lelse707:
.Lendif708:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_record_symbol
    testq   %rax, %rax
    je      .Lelse709
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif710
.Lelse709:
.Lendif710:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -184(%rbp)
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse711
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif712
.Lelse711:
.Lendif712:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -264(%rbp)
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_static_type
    jmp     .Lendif706
.Lelse705:
.Lendif706:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -176(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    $-2, %rax
    movq    %rax, -208(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse713
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -208(%rbp)
    jmp     .Lendif714
.Lelse713:
.Lendif714:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse715
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -208(%rbp)
    jmp     .Lendif716
.Lelse715:
.Lendif716:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse717
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -208(%rbp)
    jmp     .Lendif718
.Lelse717:
.Lendif718:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse719
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -208(%rbp)
    jmp     .Lendif720
.Lelse719:
.Lendif720:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort723
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend724
.Lscshort723:
    movq    $0, %rax
.Lscend724:
    testq   %rax, %rax
    je      .Lelse721
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -208(%rbp)
    jmp     .Lendif722
.Lelse721:
.Lendif722:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse725
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort727
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend728
.Lscshort727:
    movq    $0, %rax
.Lscend728:
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse729
    movq    $1, %rax
    jmp     .Lternend730
.Lternelse729:
    movq    $0, %rax
.Lternend730:
    jmp     .Lret_static_type
    jmp     .Lendif726
.Lelse725:
.Lendif726:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort735
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend736
.Lscshort735:
    movq    $1, %rax
.Lscend736:
    testq   %rax, %rax
    jne      .Lscshort733
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort737
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort739
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend740
.Lscshort739:
    movq    $1, %rax
.Lscend740:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend738
.Lscshort737:
    movq    $1, %rax
.Lscend738:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend734
.Lscshort733:
    movq    $1, %rax
.Lscend734:
    testq   %rax, %rax
    je      .Lelse731
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif732
.Lelse731:
.Lendif732:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort743
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend744
.Lscshort743:
    movq    $0, %rax
.Lscend744:
    testq   %rax, %rax
    je      .Lelse741
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -216(%rbp)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse745
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse747
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse749
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse751
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif752
.Lelse751:
.Lendif752:
    jmp     .Lendif750
.Lelse749:
.Lendif750:
    jmp     .Lendif748
.Lelse747:
.Lendif748:
    jmp     .Lendif746
.Lelse745:
.Lendif746:
    jmp     .Lendif742
.Lelse741:
.Lendif742:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse753
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif754
.Lelse753:
.Lendif754:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort757
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend758
.Lscshort757:
    movq    $0, %rax
.Lscend758:
    testq   %rax, %rax
    je      .Lelse755
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse759
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif760
.Lelse759:
.Lendif760:
    jmp     .Lendif756
.Lelse755:
.Lendif756:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort763
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend764
.Lscshort763:
    movq    $0, %rax
.Lscend764:
    testq   %rax, %rax
    je      .Lelse761
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -224(%rbp)
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse765
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -240(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -232(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse767
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif768
.Lelse767:
.Lendif768:
    jmp     .Lendif766
.Lelse765:
.Lendif766:
    jmp     .Lendif762
.Lelse761:
.Lendif762:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse769
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -256(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_static_type
    jmp     .Lret_static_type
    jmp     .Lendif770
.Lelse769:
.Lendif770:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_func
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse771
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_static_type
    jmp     .Lendif772
.Lelse771:
.Lendif772:
    movq    $0, %rax
    jmp     .Lret_static_type
    movq    $0, %rax
.Lret_static_type:
    leave
    ret

aicfn_emit_libc_op:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse773
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_90(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_91(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_92(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok775
    jmp     .Lruntimeerror
.Lallocok775:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -96(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_94(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_96(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif774
.Lelse773:
.Lendif774:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse776
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_99(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif777
.Lelse776:
.Lendif777:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse778
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_100(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_101(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_102(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok780
    jmp     .Lruntimeerror
.Lallocok780:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -96(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_94(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_96(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_103(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_104(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_105(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_106(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_107(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_108(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_109(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif779
.Lelse778:
.Lendif779:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse781
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_110(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_111(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_112(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif782
.Lelse781:
.Lendif782:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse783
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_fopen_mode_value
    movq    %rax, -104(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_string_label_num
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok785
    jmp     .Lruntimeerror
.Lallocok785:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -120(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_113(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -120(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_114(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_115(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok786
    jmp     .Lruntimeerror
.Lallocok786:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -96(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_116(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_117(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif784
.Lelse783:
.Lendif784:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse787
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_100(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_118(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_119(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_103(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_118(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_120(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_121(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_122(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_118(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_119(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_123(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_118(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_124(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_125(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_122(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_126(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif788
.Lelse787:
.Lendif788:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse789
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_100(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_103(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_127(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_102(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok791
    jmp     .Lruntimeerror
.Lallocok791:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -96(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_94(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_96(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_123(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_128(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_91(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_129(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_130(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_131(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_132(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_126(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif790
.Lelse789:
.Lendif790:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse792
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_100(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_103(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_104(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_99(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_123(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_104(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_91(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_133(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_130(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_134(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif793
.Lelse792:
.Lendif793:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse794
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_135(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif795
.Lelse794:
.Lendif795:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse796
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_136(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif797
.Lelse796:
.Lendif797:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse798
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_137(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif799
.Lelse798:
.Lendif799:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse800
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_138(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif801
.Lelse800:
.Lendif801:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse802
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_139(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif803
.Lelse802:
.Lendif803:
    movq    $0, %rax
    jmp     .Lret_emit_libc_op
    movq    $0, %rax
.Lret_emit_libc_op:
    leave
    ret

aicfn_resolve_record_by_name:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
.Lwtop804:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort806
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend807
.Lscshort806:
    movq    $0, %rax
.Lscend807:
    testq   %rax, %rax
    je      .Lwend805
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort810
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend811
.Lscshort810:
    movq    $0, %rax
.Lscend811:
    testq   %rax, %rax
    je      .Lelse808
    movq    -40(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif809
.Lelse808:
.Lendif809:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop804
.Lwend805:
    movq    -64(%rbp), %rax
    jmp     .Lret_resolve_record_by_name
    movq    $0, %rax
.Lret_resolve_record_by_name:
    leave
    ret

aicfn_resolve_record_field:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $176, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -128(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -136(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $22, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -112(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
.Lwtop812:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort814
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend815
.Lscshort814:
    movq    $0, %rax
.Lscend815:
    testq   %rax, %rax
    je      .Lwend813
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -152(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort818
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend819
.Lscshort818:
    movq    $0, %rax
.Lscend819:
    testq   %rax, %rax
    je      .Lelse816
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    $1, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lendif817
.Lelse816:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse820
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort824
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend825
.Lscshort824:
    movq    $1, %rax
.Lscend825:
    testq   %rax, %rax
    je      .Lelse822
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lscshort828
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend829
.Lscshort828:
    movq    $0, %rax
.Lscend829:
    testq   %rax, %rax
    je      .Lelse826
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    $1, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lendif827
.Lelse826:
.Lendif827:
    jmp     .Lendif823
.Lelse822:
.Lendif823:
    jmp     .Lendif821
.Lelse820:
.Lendif821:
.Lendif817:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lwtop812
.Lwend813:
    movq    -96(%rbp), %rax
    jmp     .Lret_resolve_record_field
    movq    $0, %rax
.Lret_resolve_record_field:
    leave
    ret

aicfn_resolve_record_const:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -88(%rbp)
.Lwtop830:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort832
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend833
.Lscshort832:
    movq    $0, %rax
.Lscend833:
    testq   %rax, %rax
    je      .Lwend831
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse834
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort838
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend839
.Lscshort838:
    movq    $1, %rax
.Lscend839:
    testq   %rax, %rax
    je      .Lelse836
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse840
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $115, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort844
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $105, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort846
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $122, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort848
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $101, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend849
.Lscshort848:
    movq    $0, %rax
.Lscend849:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend847
.Lscshort846:
    movq    $0, %rax
.Lscend847:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend845
.Lscshort844:
    movq    $0, %rax
.Lscend845:
    testq   %rax, %rax
    je      .Lelse842
    movq    -104(%rbp), %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif843
.Lelse842:
.Lendif843:
    jmp     .Lendif841
.Lelse840:
.Lendif841:
    jmp     .Lendif837
.Lelse836:
.Lendif837:
    jmp     .Lendif835
.Lelse834:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse850
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort854
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $46, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend855
.Lscshort854:
    movq    $1, %rax
.Lscend855:
    testq   %rax, %rax
    je      .Lelse852
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_streq
    testq   %rax, %rax
    je      .Lelse856
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $98, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort860
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $121, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort862
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort864
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $101, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort866
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $115, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend867
.Lscshort866:
    movq    $0, %rax
.Lscend867:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend865
.Lscshort864:
    movq    $0, %rax
.Lscend865:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend863
.Lscshort862:
    movq    $0, %rax
.Lscend863:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend861
.Lscshort860:
    movq    $0, %rax
.Lscend861:
    testq   %rax, %rax
    je      .Lelse858
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif859
.Lelse858:
.Lendif859:
    jmp     .Lendif857
.Lelse856:
.Lendif857:
    jmp     .Lendif853
.Lelse852:
.Lendif853:
    jmp     .Lendif851
.Lelse850:
.Lendif851:
.Lendif835:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop830
.Lwend831:
    movq    -88(%rbp), %rax
    jmp     .Lret_resolve_record_const
    movq    $0, %rax
.Lret_resolve_record_const:
    leave
    ret

aicfn_get_int_constant:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse868
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -40(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_numeric_atom
    testq   %rax, %rax
    je      .Lelse870
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    aic_strtol
    jmp     .Lret_get_int_constant
    jmp     .Lendif871
.Lelse870:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_const
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse872
    movq    -56(%rbp), %rax
    jmp     .Lret_get_int_constant
    jmp     .Lendif873
.Lelse872:
.Lendif873:
.Lendif871:
    jmp     .Lendif869
.Lelse868:
.Lendif869:
    movq    $-999999999, %rax
    jmp     .Lret_get_int_constant
    movq    $0, %rax
.Lret_get_int_constant:
    leave
    ret

aicfn_emit_slice:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -72(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_140(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_91(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_92(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok874
    jmp     .Lruntimeerror
.Lallocok874:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_94(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_96(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_83(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_141(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_142(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_98(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_143(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_80(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_slice
    movq    $0, %rax
.Lret_emit_slice:
    leave
    ret

aicfn_emit_record_construct:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $176, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -144(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort877
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend878
.Lscshort877:
    movq    $0, %rax
.Lscend878:
    testq   %rax, %rax
    je      .Lternelse875
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend876
.Lternelse875:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend876:
    movq    %rax, -152(%rbp)
.Lwtop879:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend880
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lwtop879
.Lwend880:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok881
    jmp     .Lruntimeerror
.Lallocok881:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -56(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_144(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -56(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_145(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_91(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_92(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok882
    jmp     .Lruntimeerror
.Lallocok882:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -136(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_94(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -136(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_95(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_96(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -136(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop883:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend884
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok885
    jmp     .Lruntimeerror
.Lallocok885:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -80(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_146(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -80(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_147(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop883
.Lwend884:
    movq    $0, %rax
    jmp     .Lret_emit_record_construct
    movq    $0, %rax
.Lret_emit_record_construct:
    leave
    ret

aicfn_emit_record_get:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $208, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_record_op_prefix_len
    movq    %rax, -152(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -192(%rbp)
    movq    $16, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok886
    jmp     .Lruntimeerror
.Lallocok886:
    movq    %rax, -80(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_field
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse887
    leaq    aicstr_148(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_get
    jmp     .Lendif888
.Lelse887:
.Lendif888:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -184(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse889
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok891
    jmp     .Lruntimeerror
.Lallocok891:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -64(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -64(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_150(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif890
.Lelse889:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse892
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok894
    jmp     .Lruntimeerror
.Lallocok894:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -64(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_150(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif893
.Lelse892:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse895
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok897
    jmp     .Lruntimeerror
.Lallocok897:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -176(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_151(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -176(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok898
    jmp     .Lruntimeerror
.Lallocok898:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -64(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -64(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_153(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif896
.Lelse895:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok899
    jmp     .Lruntimeerror
.Lallocok899:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -64(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -64(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_154(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif896:
.Lendif893:
.Lendif890:
    movq    $0, %rax
    jmp     .Lret_emit_record_get
    movq    $0, %rax
.Lret_emit_record_get:
    leave
    ret

aicfn_emit_record_set:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $304, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    $0, -256(%rbp)
    movq    $0, -264(%rbp)
    movq    $0, -272(%rbp)
    movq    $0, -280(%rbp)
    movq    $0, -288(%rbp)
    movq    $0, -296(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -128(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -136(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_record_op_prefix_len
    movq    %rax, -200(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -280(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -272(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    movq    %rax, -216(%rbp)
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse900
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -232(%rbp)
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -224(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    movq    $128, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok902
    jmp     .Lruntimeerror
.Lallocok902:
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop903:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend904
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    jmp     .Lwtop903
.Lwend904:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse905
    movq    $2, %rax
    movq    %rax, -296(%rbp)
.Lwtop907:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend908
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -296(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -296(%rbp)
    jmp     .Lwtop907
.Lwend908:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse909
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -240(%rbp)
    movq    -240(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok911
    jmp     .Lruntimeerror
.Lallocok911:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -248(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_151(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -248(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif910
.Lelse909:
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_155(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif910:
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_156(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -256(%rbp)
.Lwtop912:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend913
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok914
    jmp     .Lruntimeerror
.Lallocok914:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_146(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_147(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -256(%rbp)
    jmp     .Lwtop912
.Lwend913:
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif906
.Lelse905:
.Lendif906:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse915
    movq    $1, %rax
    movq    %rax, -296(%rbp)
.Lwtop917:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend918
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -296(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -296(%rbp)
    jmp     .Lwtop917
.Lwend918:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -256(%rbp)
.Lwtop919:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend920
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok921
    jmp     .Lruntimeerror
.Lallocok921:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_146(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_147(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -256(%rbp)
    jmp     .Lwtop919
.Lwend920:
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif916
.Lelse915:
.Lendif916:
    leaq    aicstr_157(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif901
.Lelse900:
.Lendif901:
    movq    $16, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok922
    jmp     .Lruntimeerror
.Lallocok922:
    movq    %rax, -120(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_field
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse923
    leaq    aicstr_148(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif924
.Lelse923:
.Lendif924:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -264(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -208(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse925
    movq    -48(%rbp), %rax
    movq    %rax, -288(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok927
    jmp     .Lruntimeerror
.Lallocok927:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_158(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_159(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif926
.Lelse925:
    movq    -48(%rbp), %rax
    movq    %rax, -152(%rbp)
    movq    -64(%rbp), %rax
    movq    %rax, -288(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse928
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok930
    jmp     .Lruntimeerror
.Lallocok930:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_158(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_159(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif929
.Lelse928:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse931
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -240(%rbp)
    movq    -240(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok933
    jmp     .Lruntimeerror
.Lallocok933:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -248(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_151(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -248(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif932
.Lelse931:
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_155(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif932:
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_83(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_82(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok934
    jmp     .Lruntimeerror
.Lallocok934:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_158(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_160(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif929:
.Lendif926:
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    movq    $0, %rax
.Lret_emit_record_set:
    leave
    ret

aicfn_get_map_var_tok:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $96, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort935
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend936
.Lscshort935:
    movq    $0, %rax
.Lscend936:
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse937
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif938
.Lelse937:
.Lendif938:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort939
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend940
.Lscshort939:
    movq    $0, %rax
.Lscend940:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse941
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif942
.Lelse941:
.Lendif942:
    movq    $-1, %rax
    jmp     .Lret_get_map_var_tok
    movq    $0, %rax
.Lret_get_map_var_tok:
    leave
    ret

aicfn_emit_map:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $256, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort943
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend944
.Lscshort943:
    movq    $0, %rax
.Lscend944:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse945
    movq    $0, %rax
    jmp     .Lternend946
.Lternelse945:
    movq    $1, %rax
.Lternend946:
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse947
    movq    -176(%rbp), %rax
    jmp     .Lternend948
.Lternelse947:
    movq    $0, %rax
.Lternend948:
    movq    %rax, -192(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse949
    movq    -184(%rbp), %rax
    jmp     .Lternend950
.Lternelse949:
    movq    -176(%rbp), %rax
.Lternend950:
    movq    %rax, -152(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse951
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    jmp     .Lternend952
.Lternelse951:
    movq    $0, %rax
.Lternend952:
    movq    %rax, -64(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse953
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend954
.Lternelse953:
    movq    -184(%rbp), %rax
.Lternend954:
    movq    %rax, -200(%rbp)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -208(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -248(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -224(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -216(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -232(%rbp)
    movq    -232(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok955
    jmp     .Lruntimeerror
.Lallocok955:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -240(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse956
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_158(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -240(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif957
.Lelse956:
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_162(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -240(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif957:
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok958
    jmp     .Lruntimeerror
.Lallocok958:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok959
    jmp     .Lruntimeerror
.Lallocok959:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -144(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_163(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -128(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -240(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_164(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_79(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_80(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_166(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -144(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -48(%rbp), %rax
    movq    %rax, -168(%rbp)
.Lwtop960:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend961
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lwtop960
.Lwend961:
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_167(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -240(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_168(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -128(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_169(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    -144(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_map
    movq    $0, %rax
.Lret_emit_map:
    leave
    ret

aicfn_emit_print:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse962
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_170(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_107(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_171(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif963
.Lelse962:
    movq    -56(%rbp), %rax
    movq    %rax, -104(%rbp)
.Lwtop964:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend965
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_static_type
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse966
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse968
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_172(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif969
.Lelse968:
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_173(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif969:
    jmp     .Lendif967
.Lelse966:
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse970
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_174(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif971
.Lelse970:
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_175(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif971:
.Lendif967:
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_176(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_107(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_171(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -88(%rbp), %rax
    movq    %rax, -104(%rbp)
    jmp     .Lwtop964
.Lwend965:
.Lendif963:
    movq    $0, %rax
    jmp     .Lret_emit_print
    movq    $0, %rax
.Lret_emit_print:
    leave
    ret

aicfn_emit_shortcircuit:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok972
    jmp     .Lruntimeerror
.Lallocok972:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok973
    jmp     .Lruntimeerror
.Lallocok973:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse974
    movq    $0, %rax
    jmp     .Lternend975
.Lternelse974:
    movq    $1, %rax
.Lternend975:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok976
    jmp     .Lruntimeerror
.Lallocok976:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse977
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_177(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif978
.Lelse977:
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_178(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif978:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_179(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_181(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_182(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_144(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -64(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_183(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_shortcircuit
    movq    $0, %rax
.Lret_emit_shortcircuit:
    leave
    ret

aicfn_emit_ternary:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok979
    jmp     .Lruntimeerror
.Lallocok979:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok980
    jmp     .Lruntimeerror
.Lallocok980:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_184(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_185(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_186(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_187(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_ternary
    movq    $0, %rax
.Lret_emit_ternary:
    leave
    ret

aicfn_emit_binop_tail:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse981
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_156(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif982
.Lelse981:
.Lendif982:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse983
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_188(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif984
.Lelse983:
.Lendif984:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse985
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_189(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif986
.Lelse985:
.Lendif986:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort989
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend990
.Lscshort989:
    movq    $1, %rax
.Lscend990:
    testq   %rax, %rax
    je      .Lelse987
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok991
    jmp     .Lruntimeerror
.Lallocok991:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -40(%rbp)
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_190(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_191(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_192(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_193(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_194(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_195(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse992
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_196(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif993
.Lelse992:
.Lendif993:
    jmp     .Lendif988
.Lelse987:
.Lendif988:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse994
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_197(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif995
.Lelse994:
.Lendif995:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse996
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_198(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif997
.Lelse996:
.Lendif997:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse998
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_199(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif999
.Lelse998:
.Lendif999:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1000
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_200(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_201(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1001
.Lelse1000:
.Lendif1001:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1002
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_200(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_202(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1003
.Lelse1002:
.Lendif1003:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1004
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_203(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1005
.Lelse1004:
.Lendif1005:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1006
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_204(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1007
.Lelse1006:
.Lendif1007:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1008
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_205(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1009
.Lelse1008:
.Lendif1009:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1010
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_206(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1011
.Lelse1010:
.Lendif1011:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1012
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_207(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1013
.Lelse1012:
.Lendif1013:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1014
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_165(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_208(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_180(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1015
.Lelse1014:
.Lendif1015:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1018
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1019
.Lscshort1018:
    movq    $1, %rax
.Lscend1019:
    testq   %rax, %rax
    je      .Lelse1016
    leaq    aicstr_209(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif1017
.Lelse1016:
.Lendif1017:
    movq    $0, %rax
    jmp     .Lret_emit_binop_tail
    movq    $0, %rax
.Lret_emit_binop_tail:
    leave
    ret

aicfn_emit_expr:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $448, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    $0, -256(%rbp)
    movq    $0, -264(%rbp)
    movq    $0, -272(%rbp)
    movq    $0, -280(%rbp)
    movq    $0, -288(%rbp)
    movq    $0, -296(%rbp)
    movq    $0, -304(%rbp)
    movq    $0, -312(%rbp)
    movq    $0, -320(%rbp)
    movq    $0, -328(%rbp)
    movq    $0, -336(%rbp)
    movq    $0, -344(%rbp)
    movq    $0, -352(%rbp)
    movq    $0, -360(%rbp)
    movq    $0, -368(%rbp)
    movq    $0, -376(%rbp)
    movq    $0, -384(%rbp)
    movq    $0, -392(%rbp)
    movq    $0, -400(%rbp)
    movq    $0, -408(%rbp)
    movq    $0, -416(%rbp)
    movq    $0, -424(%rbp)
    movq    $0, -432(%rbp)
    movq    $0, -440(%rbp)
    movq    $0, -448(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -152(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -416(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1020
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -376(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -224(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, -384(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -384(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_string_label_num
    movq    %rax, -232(%rbp)
    movq    -232(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1022
    jmp     .Lruntimeerror
.Lallocok1022:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -240(%rbp)
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_113(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    movq    -240(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_210(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1021
.Lelse1020:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1023
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_numeric_atom
    testq   %rax, %rax
    je      .Lelse1025
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    aic_strtol
    movq    %rax, -424(%rbp)
    movq    -424(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1027
    jmp     .Lruntimeerror
.Lallocok1027:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -448(%rbp)
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_144(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    movq    -448(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1026
.Lelse1025:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_const
    movq    %rax, -280(%rbp)
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1028
    movq    -280(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1030
    jmp     .Lruntimeerror
.Lallocok1030:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -288(%rbp)
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_144(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    movq    -288(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1029
.Lelse1028:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -176(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -248(%rbp)
    movq    -248(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1031
    jmp     .Lruntimeerror
.Lallocok1031:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -256(%rbp)
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    movq    -256(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_164(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif1029:
.Lendif1026:
    jmp     .Lendif1024
.Lelse1023:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -264(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -160(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -64(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse1032
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lternend1033
.Lternelse1032:
    movq    $0, %rax
.Lternend1033:
    movq    %rax, -72(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1034
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1036
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1037
.Lscshort1036:
    movq    $0, %rax
.Lscend1037:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1035
.Lscshort1034:
    movq    $0, %rax
.Lscend1035:
    movq    %rax, -184(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1038
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1040
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1041
.Lscshort1040:
    movq    $0, %rax
.Lscend1041:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1039
.Lscshort1038:
    movq    $0, %rax
.Lscend1039:
    movq    %rax, -192(%rbp)
    movq    $-2, %rax
    movq    %rax, -272(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1042
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -272(%rbp)
    jmp     .Lendif1043
.Lelse1042:
.Lendif1043:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1044
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -272(%rbp)
    jmp     .Lendif1045
.Lelse1044:
.Lendif1045:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1046
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -272(%rbp)
    jmp     .Lendif1047
.Lelse1046:
.Lendif1047:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1048
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -272(%rbp)
    jmp     .Lendif1049
.Lelse1048:
.Lendif1049:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1052
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1053
.Lscshort1052:
    movq    $0, %rax
.Lscend1053:
    testq   %rax, %rax
    je      .Lelse1050
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -272(%rbp)
    jmp     .Lendif1051
.Lelse1050:
.Lendif1051:
    movq    $0, %rax
    movq    %rax, -200(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1056
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1057
.Lscshort1056:
    movq    $0, %rax
.Lscend1057:
    testq   %rax, %rax
    je      .Lelse1054
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -344(%rbp)
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -320(%rbp)
    movq    -320(%rbp), %rax
    pushq   %rax
    movq    -344(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1058
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -320(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -352(%rbp)
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -328(%rbp)
    movq    -328(%rbp), %rax
    pushq   %rax
    movq    -344(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1060
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -328(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -360(%rbp)
    movq    -360(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -336(%rbp)
    movq    -336(%rbp), %rax
    pushq   %rax
    movq    -344(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1062
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -336(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -368(%rbp)
    movq    -368(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -344(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1064
    movq    $1, %rax
    movq    %rax, -200(%rbp)
    jmp     .Lendif1065
.Lelse1064:
.Lendif1065:
    jmp     .Lendif1063
.Lelse1062:
.Lendif1063:
    jmp     .Lendif1061
.Lelse1060:
.Lendif1061:
    jmp     .Lendif1059
.Lelse1058:
.Lendif1059:
    jmp     .Lendif1055
.Lelse1054:
.Lendif1055:
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1066
    movq    -88(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1067
.Lelse1066:
.Lendif1067:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1070
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1072
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1073
.Lscshort1072:
    movq    $0, %rax
.Lscend1073:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1071
.Lscshort1070:
    movq    $0, %rax
.Lscend1071:
    testq   %rax, %rax
    je      .Lelse1068
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1074
    movq    -96(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1075
.Lelse1074:
.Lendif1075:
    jmp     .Lendif1069
.Lelse1068:
.Lendif1069:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1078
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1080
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $35, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1081
.Lscshort1080:
    movq    $0, %rax
.Lscend1081:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1079
.Lscshort1078:
    movq    $0, %rax
.Lscend1079:
    testq   %rax, %rax
    je      .Lelse1076
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -392(%rbp)
    movq    -392(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1082
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -392(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -408(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -392(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -400(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_by_name
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1084
    movq    -104(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1085
.Lelse1084:
.Lendif1085:
    jmp     .Lendif1083
.Lelse1082:
.Lendif1083:
    jmp     .Lendif1077
.Lelse1076:
.Lendif1077:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1086
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_record_get
    jmp     .Lendif1087
.Lelse1086:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $30, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1088
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_record_set
    jmp     .Lendif1089
.Lelse1088:
    movq    -200(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1090
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_slice
    jmp     .Lendif1091
.Lelse1090:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1092
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_record_construct
    jmp     .Lendif1093
.Lelse1092:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1094
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_ternary
    jmp     .Lendif1095
.Lelse1094:
    movq    -184(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1096
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_shortcircuit
    jmp     .Lendif1097
.Lelse1096:
    movq    -192(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1098
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_shortcircuit
    jmp     .Lendif1099
.Lelse1098:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1102
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1103
.Lscshort1102:
    movq    $1, %rax
.Lscend1103:
    testq   %rax, %rax
    je      .Lelse1100
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_byte_op
    jmp     .Lendif1101
.Lelse1100:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1108
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1109
.Lscshort1108:
    movq    $1, %rax
.Lscend1109:
    testq   %rax, %rax
    jne      .Lscshort1106
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1110
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1111
.Lscshort1110:
    movq    $1, %rax
.Lscend1111:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1107
.Lscshort1106:
    movq    $1, %rax
.Lscend1107:
    testq   %rax, %rax
    je      .Lelse1104
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_word_op
    jmp     .Lendif1105
.Lelse1104:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1114
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1115
.Lscshort1114:
    movq    $0, %rax
.Lscend1115:
    testq   %rax, %rax
    je      .Lelse1112
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_libc_op
    jmp     .Lendif1113
.Lelse1112:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_binop_classify
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1116
    movq    -264(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -216(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -208(%rbp)
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -312(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -432(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -440(%rbp)
    movq    $0, %rax
    movq    %rax, -136(%rbp)
    movq    -432(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1120
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1121
.Lscshort1120:
    movq    $0, %rax
.Lscend1121:
    testq   %rax, %rax
    je      .Lelse1118
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -440(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_can_fold_binop
    testq   %rax, %rax
    je      .Lelse1122
    movq    $1, %rax
    movq    %rax, -136(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -432(%rbp), %rax
    pushq   %rax
    movq    -440(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_fold_binop
    movq    %rax, -296(%rbp)
    movq    -296(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1124
    jmp     .Lruntimeerror
.Lallocok1124:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -304(%rbp)
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_144(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    movq    -304(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_152(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1123
.Lelse1122:
.Lendif1123:
    jmp     .Lendif1119
.Lelse1118:
.Lendif1119:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1125
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_78(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_79(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_80(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_binop_tail
    jmp     .Lendif1126
.Lelse1125:
.Lendif1126:
    jmp     .Lendif1117
.Lelse1116:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_func
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1127
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_call
    jmp     .Lendif1128
.Lelse1127:
    leaq    aicstr_211(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1128:
.Lendif1117:
.Lendif1113:
.Lendif1105:
.Lendif1101:
.Lendif1099:
.Lendif1097:
.Lendif1095:
.Lendif1093:
.Lendif1091:
.Lendif1089:
.Lendif1087:
.Lendif1024:
.Lendif1021:
    movq    $0, %rax
.Lret_emit_expr:
    leave
    ret

aicfn_emit_assign:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -80(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1129
    jmp     .Lruntimeerror
.Lallocok1129:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_158(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -120(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_assign
    movq    $0, %rax
.Lret_emit_assign:
    leave
    ret

aicfn_emit_return:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $96, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1130
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1132
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif1133
.Lelse1132:
.Lendif1133:
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_212(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1131
.Lelse1130:
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_213(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif1131:
    movq    $0, %rax
    jmp     .Lret_emit_return
    movq    $0, %rax
.Lret_emit_return:
    leave
    ret

aicfn_emit_do:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -48(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
.Lwtop1134:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1135
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lwtop1134
.Lwend1135:
    movq    $0, %rax
    jmp     .Lret_emit_do
    movq    $0, %rax
.Lret_emit_do:
    leave
    ret

aicfn_emit_while:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1136
    jmp     .Lruntimeerror
.Lallocok1136:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1137
    jmp     .Lruntimeerror
.Lallocok1137:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -104(%rbp)
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_214(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_215(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop1138:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1139
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop1138
.Lwend1139:
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_216(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -88(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_217(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    movq    -104(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_while
    movq    $0, %rax
.Lret_emit_while:
    leave
    ret

aicfn_emit_if:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -128(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1140
    jmp     .Lruntimeerror
.Lallocok1140:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -96(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_new_label_num
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1141
    jmp     .Lruntimeerror
.Lallocok1141:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_93(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_218(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_219(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -112(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_220(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -96(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1142
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_stmt
    jmp     .Lendif1143
.Lelse1142:
.Lendif1143:
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_221(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    -112(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_if
    movq    $0, %rax
.Lret_emit_if:
    leave
    ret

aicfn_emit_stmt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $96, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1144
    jmp     .Lendif1145
.Lelse1144:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    $-2, %rax
    movq    %rax, -80(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1146
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -80(%rbp)
    jmp     .Lendif1147
.Lelse1146:
.Lendif1147:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1148
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -80(%rbp)
    jmp     .Lendif1149
.Lelse1148:
.Lendif1149:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1150
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -80(%rbp)
    jmp     .Lendif1151
.Lelse1150:
.Lendif1151:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1152
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -80(%rbp)
    jmp     .Lendif1153
.Lelse1152:
.Lendif1153:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1156
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1157
.Lscshort1156:
    movq    $0, %rax
.Lscend1157:
    testq   %rax, %rax
    je      .Lelse1154
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -80(%rbp)
    jmp     .Lendif1155
.Lelse1154:
.Lendif1155:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $27, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1158
    jmp     .Lendif1159
.Lelse1158:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1160
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_map
    jmp     .Lendif1161
.Lelse1160:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1164
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $30, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1165
.Lscshort1164:
    movq    $1, %rax
.Lscend1165:
    testq   %rax, %rax
    je      .Lelse1162
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    jmp     .Lendif1163
.Lelse1162:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1166
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_assign
    jmp     .Lendif1167
.Lelse1166:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1168
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_return
    jmp     .Lendif1169
.Lelse1168:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1170
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_if
    jmp     .Lendif1171
.Lelse1170:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1172
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_while
    jmp     .Lendif1173
.Lelse1172:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1174
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_do
    jmp     .Lendif1175
.Lelse1174:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1176
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_print
    jmp     .Lendif1177
.Lelse1176:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1180
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1181
.Lscshort1180:
    movq    $0, %rax
.Lscend1181:
    testq   %rax, %rax
    je      .Lelse1178
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_expr
    jmp     .Lendif1179
.Lelse1178:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_func
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1182
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_call
    jmp     .Lendif1183
.Lelse1182:
    leaq    aicstr_222(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1183:
.Lendif1179:
.Lendif1177:
.Lendif1175:
.Lendif1173:
.Lendif1171:
.Lendif1169:
.Lendif1167:
.Lendif1163:
.Lendif1161:
.Lendif1159:
.Lendif1145:
    movq    $0, %rax
    jmp     .Lret_emit_stmt
    movq    $0, %rax
.Lret_emit_stmt:
    leave
    ret

aicfn_frame_size_for:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok1184
    jmp     .Ldivzero
.Ldivok1184:
    cqto
    idivq   %rbx
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1185
    movq    $16, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif1186
.Lelse1185:
.Lendif1186:
    movq    -24(%rbp), %rax
    jmp     .Lret_frame_size_for
    movq    $0, %rax
.Lret_frame_size_for:
    leave
    ret

aicfn_emit_zero_slot:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1187
    jmp     .Lruntimeerror
.Lallocok1187:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_162(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -32(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_zero_slot
    movq    $0, %rax
.Lret_emit_zero_slot:
    leave
    ret

aicfn_emit_zero_slots:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop1188:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1189
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_zero_slot
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop1188
.Lwend1189:
    movq    $0, %rax
    jmp     .Lret_emit_zero_slots
    movq    $0, %rax
.Lret_emit_zero_slots:
    leave
    ret

aicfn_emit_zero_slots_from:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, -32(%rbp)
.Lwtop1190:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1191
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_zero_slot
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop1190
.Lwend1191:
    movq    $0, %rax
    jmp     .Lret_emit_zero_slots_from
    movq    $0, %rax
.Lret_emit_zero_slots_from:
    leave
    ret

aicfn_emit_main_prologue:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1192
    jmp     .Lruntimeerror
.Lallocok1192:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_223(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_224(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_225(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_226(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_227(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_228(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_main_prologue
    movq    $0, %rax
.Lret_emit_main_prologue:
    leave
    ret

aicfn_emit_main_epilogue:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_229(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_230(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_231(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_232(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_main_epilogue
    movq    $0, %rax
.Lret_emit_main_epilogue:
    leave
    ret

aicfn_emit_function_prologue:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1193
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif1194
.Lelse1193:
.Lendif1194:
    movq    -48(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1195
    jmp     .Lruntimeerror
.Lallocok1195:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_233(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_225(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_226(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_227(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    movq    -56(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_228(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_function_prologue
    movq    $0, %rax
.Lret_emit_function_prologue:
    leave
    ret

aicfn_emit_arg_copies:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop1196:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1197
    movq    $-8, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1198
    jmp     .Lruntimeerror
.Lallocok1198:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_149(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_argreg_name
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_234(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_161(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop1196
.Lwend1197:
    movq    $0, %rax
    jmp     .Lret_emit_arg_copies
    movq    $0, %rax
.Lret_emit_arg_copies:
    leave
    ret

aicfn_emit_function_epilogue:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1199
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif1200
.Lelse1199:
.Lendif1200:
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_229(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_235(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_231(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_232(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_function_epilogue
    movq    $0, %rax
.Lret_emit_function_epilogue:
    leave
    ret

aicfn_dq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $1, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok1201
    jmp     .Lruntimeerror
.Lallocok1201:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $34, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -8(%rbp), %rax
    jmp     .Lret_dq
    movq    $0, %rax
.Lret_dq:
    leave
    ret

aicfn_emit_rodata_prefix:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    call    aicfn_dq
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_236(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_237(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_239(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_240(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_241(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_242(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_243(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_244(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_245(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_246(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_247(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_248(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_249(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_rodata_prefix
    movq    $0, %rax
.Lret_emit_rodata_prefix:
    leave
    ret

aicfn_emit_str_rodata:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    call    aicfn_dq
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop1202:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1203
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -32(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1204
    jmp     .Lruntimeerror
.Lallocok1204:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -40(%rbp)
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_250(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_97(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -48(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -56(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    movq    -48(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop1202
.Lwend1203:
    movq    $0, %rax
    jmp     .Lret_emit_str_rodata
    movq    $0, %rax
.Lret_emit_str_rodata:
    leave
    ret

aicfn_emit_rodata_divzero:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    call    aicfn_dq
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_251(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_252(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_253(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_254(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_rodata_divzero
    movq    $0, %rax
.Lret_emit_rodata_divzero:
    leave
    ret

aicfn_emit_rodata_runtime:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    call    aicfn_dq
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_255(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_238(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_256(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    -16(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_69(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_257(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_258(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_rodata_runtime
    movq    $0, %rax
.Lret_emit_rodata_runtime:
    leave
    ret

aicfn_emit_divzero_handler:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_259(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_260(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_261(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_262(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_divzero_handler
    movq    $0, %rax
.Lret_emit_divzero_handler:
    leave
    ret

aicfn_emit_runtime_handler:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_263(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_264(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_261(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -8(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_262(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    $0, %rax
    jmp     .Lret_emit_runtime_handler
    movq    $0, %rax
.Lret_emit_runtime_handler:
    leave
    ret

aicfn_copy_file_to:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok1205
    jmp     .Lruntimeerror
.Lopenok1205:
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    movq    %rax, %r12
    movq    %r12, %rdi
    call    aic_ftell
    movq    %rax, %r13
    movq    %r12, %rdi
    movq    $0, %rsi
    movq    $2, %rdx
    call    aic_fseek
    movq    %r12, %rdi
    call    aic_ftell
    movq    %rax, %r14
    movq    %r12, %rdi
    movq    %r13, %rsi
    movq    $0, %rdx
    call    aic_fseek
    movq    %r14, %rax
    movq    %rax, -40(%rbp)
    movq    -32(%rbp), %rax
    movq    %rax, %r12
    movq    -40(%rbp), %rax
    movq    %rax, %r13
    leaq    1(%r13), %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1206
    jmp     .Lruntimeerror
.Lallocok1206:
    movq    %rax, %r14
    movq    %r14, %rdi
    movq    $1, %rsi
    movq    %r13, %rdx
    movq    %r12, %rcx
    call    aic_fread
    movb    $0, (%r14,%rax)
    movq    %r14, %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -32(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    $0, %rax
    jmp     .Lret_copy_file_to
    movq    $0, %rax
.Lret_copy_file_to:
    leave
    ret

aicfn_emit_note_section:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    leaq    aicstr_265(%rip), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_copy_file_to
    movq    $0, %rax
    jmp     .Lret_emit_note_section
    movq    $0, %rax
.Lret_emit_note_section:
    leave
    ret

aicfn_infer_stmt_types:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $272, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    $0, -240(%rbp)
    movq    $0, -248(%rbp)
    movq    $0, -256(%rbp)
    movq    $0, -264(%rbp)
    movq    $0, -272(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -232(%rbp)
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1207
    jmp     .Lendif1208
.Lelse1207:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    $-2, %rax
    movq    %rax, -192(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1209
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -192(%rbp)
    jmp     .Lendif1210
.Lelse1209:
.Lendif1210:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1211
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -192(%rbp)
    jmp     .Lendif1212
.Lelse1211:
.Lendif1212:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1213
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -192(%rbp)
    jmp     .Lendif1214
.Lelse1213:
.Lendif1214:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1215
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op4
    movq    %rax, -192(%rbp)
    jmp     .Lendif1216
.Lelse1215:
.Lendif1216:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1219
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1220
.Lscshort1219:
    movq    $0, %rax
.Lscend1220:
    testq   %rax, %rax
    je      .Lelse1217
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -192(%rbp)
    jmp     .Lendif1218
.Lelse1217:
.Lendif1218:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1221
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_map_var_tok
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1223
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -272(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -264(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -136(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -256(%rbp)
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif1224
.Lelse1223:
.Lendif1224:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -208(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -216(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1225
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1226
.Lscshort1225:
    movq    $0, %rax
.Lscend1226:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse1227
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend1228
.Lternelse1227:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend1228:
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    movq    %rax, -200(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
.Lwtop1229:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1230
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
    jmp     .Lwtop1229
.Lwend1230:
    jmp     .Lendif1222
.Lelse1221:
.Lendif1222:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1231
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -176(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -136(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_static_type
    movq    %rax, -224(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -256(%rbp)
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif1232
.Lelse1231:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1233
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -248(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -240(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1235
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    jmp     .Lendif1236
.Lelse1235:
.Lendif1236:
    jmp     .Lendif1234
.Lelse1233:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1237
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
.Lwtop1239:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1240
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
    jmp     .Lwtop1239
.Lwend1240:
    jmp     .Lendif1238
.Lelse1237:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1241
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
.Lwtop1243:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1244
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_infer_stmt_types
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -200(%rbp)
    jmp     .Lwtop1243
.Lwend1244:
    jmp     .Lendif1242
.Lelse1241:
.Lendif1242:
.Lendif1238:
.Lendif1234:
.Lendif1232:
.Lendif1208:
    movq    $0, %rax
    jmp     .Lret_infer_stmt_types
    movq    $0, %rax
.Lret_infer_stmt_types:
    leave
    ret


.Ldivzero:
    leaq    divzero_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error


.Lruntimeerror:
    leaq    runtimeerr_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error

    .section .rodata
aic_win_fmt_i_nl:
    .string "%lld\n"
aic_win_fmt_i_sp:
    .string "%lld "
aic_win_fmt_s_nl:
    .string "%s\n"
aic_win_fmt_s_sp:
    .string "%s "
aic_win_fmt_d:
    .string "%lld"
aic_win_fmt_err:
    .string "%s"
aic_empty_arg:
    .string ""

    .data
aic_argc:
    .quad 0
aic_argv:
    .quad 0

    .text
    .globl main
main:
    movslq  %ecx, %rax
    movq    %rax, aic_argc(%rip)
    movq    %rdx, aic_argv(%rip)
    subq    $40, %rsp
    call    aic_main
    addq    $40, %rsp
    ret

    .globl aic_arg
aic_arg:
    cmpq    $0, %rdi
    jl      .Laic_arg_empty
    cmpq    aic_argc(%rip), %rdi
    jge     .Laic_arg_empty
    movq    aic_argv(%rip), %rax
    movq    (%rax,%rdi,8), %rax
    ret
.Laic_arg_empty:
    leaq    aic_empty_arg(%rip), %rax
    ret

    .globl aic_calloc
aic_calloc:
    subq    $40, %rsp
    movq    %rdi, %rcx
    movq    %rsi, %rdx
    call    calloc
    addq    $40, %rsp
    ret

    .globl aic_malloc
aic_malloc:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    malloc
    addq    $40, %rsp
    ret

    .globl aic_strlen
aic_strlen:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    strlen
    addq    $40, %rsp
    ret

    .globl aic_strtol
aic_strtol:
    subq    $40, %rsp
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    strtoll
    addq    $40, %rsp
    ret

    .globl aic_fopen
aic_fopen:
    subq    $40, %rsp
    movq    %rdi, %rcx
    movq    %rsi, %rdx
    call    fopen
    addq    $40, %rsp
    ret

    .globl aic_ftell
aic_ftell:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    ftell
    addq    $40, %rsp
    ret

    .globl aic_fseek
aic_fseek:
    subq    $40, %rsp
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fseek
    addq    $40, %rsp
    ret

    .globl aic_fread
aic_fread:
    subq    $40, %rsp
    movq    %rcx, %r9
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fread
    addq    $40, %rsp
    ret

    .globl aic_fwrite
aic_fwrite:
    subq    $40, %rsp
    movq    %rcx, %r9
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fwrite
    addq    $40, %rsp
    ret

    .globl aic_fclose
aic_fclose:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    fclose
    addq    $40, %rsp
    ret

    .globl aic_printf
aic_printf:
    subq    $40, %rsp
    movq    %rsi, %rdx
    cmpb    $115, 1(%rdi)
    je      .Laic_printf_str
    leaq    aic_win_fmt_i_nl(%rip), %rcx
    cmpb    $32, 3(%rdi)
    jne     .Laic_printf_call
    leaq    aic_win_fmt_i_sp(%rip), %rcx
    jmp     .Laic_printf_call
.Laic_printf_str:
    leaq    aic_win_fmt_s_nl(%rip), %rcx
    cmpb    $32, 2(%rdi)
    jne     .Laic_printf_call
    leaq    aic_win_fmt_s_sp(%rip), %rcx
.Laic_printf_call:
    call    printf
    addq    $40, %rsp
    ret

    .globl aic_sprintf
aic_sprintf:
    subq    $40, %rsp
    movq    %rdx, %r8
    leaq    aic_win_fmt_d(%rip), %rdx
    movq    %rdi, %rcx
    call    sprintf
    addq    $40, %rsp
    ret

    .globl aic_input
aic_input:
    subq    $40, %rsp
    movq    %rdi, %rdx
    leaq    aic_win_fmt_err(%rip), %rcx
    call    printf
    movq    $0, %rcx
    call    fflush
    movq    $64, %rcx
    call    malloc
    movq    %rax, %rdx
    movq    %rax, 32(%rsp)
    leaq    aic_win_fmt_err(%rip), %rcx
    call    scanf
    movq    32(%rsp), %rax
    addq    $40, %rsp
    ret

    .globl aic_free
aic_free:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    free
    xorl    %eax, %eax
    addq    $40, %rsp
    ret

    .globl aic_time
aic_time:
    subq    $40, %rsp
    call    clock
    addq    $40, %rsp
    ret

    .globl aic_runtime_error
aic_runtime_error:
    subq    $40, %rsp
    movq    %rdi, %rdx
    leaq    aic_win_fmt_err(%rip), %rcx
    call    printf
    movq    $1, %rcx
    call    exit
