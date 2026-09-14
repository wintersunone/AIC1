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
    .string "    subq    $8, %rsp\n"
aicstr_90:
    .string "    addq    $"
aicstr_91:
    .string ", %rsp\n"
aicstr_92:
    .string "ab"
aicstr_93:
    .string "    leaq    1(%rax), %rdi\n"
aicstr_94:
    .string "    movq    $1, %rsi\n"
aicstr_95:
    .string "    call    aic_calloc\n"
aicstr_96:
    .string "    testq   %rax, %rax\n"
aicstr_97:
    .string "    jne     .Lallocok"
aicstr_98:
    .string "    jmp     .Lruntimeerror\n"
aicstr_99:
    .string ".Lallocok"
aicstr_100:
    .string ":\n"
aicstr_101:
    .string "    movq    %rax, %rdi\n"
aicstr_102:
    .string "    call    aic_strlen\n"
aicstr_103:
    .string "    movq    %rax, %r12\n"
aicstr_104:
    .string "    movq    $24, %rdi\n"
aicstr_105:
    .string "    call    aic_malloc\n"
aicstr_106:
    .string "    movq    %rax, %r13\n"
aicstr_107:
    .string "    movq    %r13, %rdi\n"
aicstr_108:
    .string "    leaq    fmt_d(%rip), %rsi\n"
aicstr_109:
    .string "    movq    %r12, %rdx\n"
aicstr_110:
    .string "    xorl    %eax, %eax\n"
aicstr_111:
    .string "    call    aic_sprintf\n"
aicstr_112:
    .string "    movq    %r13, %rax\n"
aicstr_113:
    .string "    xorl    %esi, %esi\n"
aicstr_114:
    .string "    movq    $10, %rdx\n"
aicstr_115:
    .string "    call    aic_strtol\n"
aicstr_116:
    .string "    leaq    aicstr_"
aicstr_117:
    .string "(%rip), %rsi\n"
aicstr_118:
    .string "    call    aic_fopen\n"
aicstr_119:
    .string "    movq    %r12, %rdi\n"
aicstr_120:
    .string "    call    aic_ftell\n"
aicstr_121:
    .string "    movq    $0, %rsi\n"
aicstr_122:
    .string "    movq    $2, %rdx\n"
aicstr_123:
    .string "    call    aic_fseek\n"
aicstr_124:
    .string "    movq    %rax, %r14\n"
aicstr_125:
    .string "    movq    %r13, %rsi\n"
aicstr_126:
    .string "    movq    $0, %rdx\n"
aicstr_127:
    .string "    movq    %r14, %rax\n"
aicstr_128:
    .string "    leaq    1(%r13), %rdi\n"
aicstr_129:
    .string "    movq    %r14, %rdi\n"
aicstr_130:
    .string "    movq    %r13, %rdx\n"
aicstr_131:
    .string "    movq    %r12, %rcx\n"
aicstr_132:
    .string "    call    aic_fread\n"
aicstr_133:
    .string "    movb    $0, (%r14,%rax)\n"
aicstr_134:
    .string "    movq    %r14, %rdx\n"
aicstr_135:
    .string "    call    aic_fwrite\n"
aicstr_136:
    .string "    call    aic_fclose\n"
aicstr_137:
    .string "    call    aic_arg\n"
aicstr_138:
    .string "    call    aic_input\n"
aicstr_139:
    .string "    call    aic_free\n"
aicstr_140:
    .string "    call    aic_time\n"
aicstr_141:
    .string "    incq    %rdi\n"
aicstr_142:
    .string "    popq    %rsi\n"
aicstr_143:
    .string "    addq    %rbx, %rsi\n"
aicstr_144:
    .string "    rep movsb\n"
aicstr_145:
    .string "    movq    $"
aicstr_146:
    .string ", %rdi\n"
aicstr_147:
    .string "    movq    %rbx, "
aicstr_148:
    .string "(%rax)\n"
aicstr_149:
    .string "[ERR :code 403 :kind CODEGEN :msg UNRESOLVED_RECORD_FIELD]"
aicstr_150:
    .string "    movq    "
aicstr_151:
    .string "(%rax), %rax\n"
aicstr_152:
    .string "    imulq   $"
aicstr_153:
    .string ", %rax\n"
aicstr_154:
    .string "(%rbx,%rax), %rax\n"
aicstr_155:
    .string "(%rbx,%rax,8), %rax\n"
aicstr_156:
    .string "    shlq    $3, %rax\n"
aicstr_157:
    .string "    addq    %rbx, %rax\n"
aicstr_158:
    .string "[ERR :code 403 :kind CODEGEN :msg INVALID_BULK_RECORD_SET_ARGS]"
aicstr_159:
    .string "    movq    %rax, "
aicstr_160:
    .string "(%rbx)\n"
aicstr_161:
    .string "(%rbx,%rcx)\n"
aicstr_162:
    .string "(%rbp)\n"
aicstr_163:
    .string "    movq    $0, "
aicstr_164:
    .string ".Lmaptop"
aicstr_165:
    .string "(%rbp), %rax\n"
aicstr_166:
    .string "    cmpq    %rbx, %rax\n"
aicstr_167:
    .string "    jge     .Lmapend"
aicstr_168:
    .string "    incq    "
aicstr_169:
    .string "    jmp     .Lmaptop"
aicstr_170:
    .string ".Lmapend"
aicstr_171:
    .string "    leaq    nl_only(%rip), %rdi\n"
aicstr_172:
    .string "    call    aic_printf\n"
aicstr_173:
    .string "    leaq    fmt_s_nl(%rip), %rdi\n"
aicstr_174:
    .string "    leaq    fmt_s_sp(%rip), %rdi\n"
aicstr_175:
    .string "    leaq    fmt_nl(%rip), %rdi\n"
aicstr_176:
    .string "    leaq    fmt_sp(%rip), %rdi\n"
aicstr_177:
    .string "    movq    %rax, %rsi\n"
aicstr_178:
    .string "    je      .Lscshort"
aicstr_179:
    .string "    jne      .Lscshort"
aicstr_180:
    .string "    setne   %al\n"
aicstr_181:
    .string "    movzbq  %al, %rax\n"
aicstr_182:
    .string "    jmp     .Lscend"
aicstr_183:
    .string ".Lscshort"
aicstr_184:
    .string ".Lscend"
aicstr_185:
    .string "    je      .Lternelse"
aicstr_186:
    .string "    jmp     .Lternend"
aicstr_187:
    .string ".Lternelse"
aicstr_188:
    .string ".Lternend"
aicstr_189:
    .string "    subq    %rbx, %rax\n"
aicstr_190:
    .string "    imulq   %rbx, %rax\n"
aicstr_191:
    .string "    testq   %rbx, %rbx\n"
aicstr_192:
    .string "    jne     .Ldivok"
aicstr_193:
    .string "    jmp     .Ldivzero\n"
aicstr_194:
    .string ".Ldivok"
aicstr_195:
    .string "    cqto\n"
aicstr_196:
    .string "    idivq   %rbx\n"
aicstr_197:
    .string "    movq    %rdx, %rax\n"
aicstr_198:
    .string "    andq    %rbx, %rax\n"
aicstr_199:
    .string "    orq     %rbx, %rax\n"
aicstr_200:
    .string "    xorq    %rbx, %rax\n"
aicstr_201:
    .string "    movq    %rbx, %rcx\n"
aicstr_202:
    .string "    shlq    %cl, %rax\n"
aicstr_203:
    .string "    sarq    %cl, %rax\n"
aicstr_204:
    .string "    setl    %al\n"
aicstr_205:
    .string "    setg    %al\n"
aicstr_206:
    .string "    sete    %al\n"
aicstr_207:
    .string "    setne    %al\n"
aicstr_208:
    .string "    setle    %al\n"
aicstr_209:
    .string "    setge    %al\n"
aicstr_210:
    .string "[ERR :code 404 :kind CODEGEN :msg UNSUPPORTED_BINOP]"
aicstr_211:
    .string "(%rip), %rax\n"
aicstr_212:
    .string "[ERR :code 402 :kind CODEGEN :msg UNRESOLVED_EXPR_SYMBOL]"
aicstr_213:
    .string "    jmp     .Lret_"
aicstr_214:
    .string "    jmp     "
aicstr_215:
    .string ".Lwtop"
aicstr_216:
    .string "    je      .Lwend"
aicstr_217:
    .string "    jmp     .Lwtop"
aicstr_218:
    .string ".Lwend"
aicstr_219:
    .string "    je      .Lelse"
aicstr_220:
    .string "    jmp     .Lendif"
aicstr_221:
    .string ".Lelse"
aicstr_222:
    .string ".Lendif"
aicstr_223:
    .string "[ERR :code 401 :kind CODEGEN :msg UNSUPPORTED_STATEMENT]"
aicstr_224:
    .string "    .globl aic_main\n"
aicstr_225:
    .string "aic_main:\n"
aicstr_226:
    .string "    pushq   %rbp\n"
aicstr_227:
    .string "    movq    %rsp, %rbp\n"
aicstr_228:
    .string "    subq    $"
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
    subq    $992, %rsp
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
    movq    $0, -976(%rbp)
    movq    $0, -984(%rbp)
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
    movq    %rax, -680(%rbp)
    movq    -680(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -672(%rbp)
    movq    -672(%rbp), %rax
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
    movq    %rax, -680(%rbp)
    jmp     .Lendif4
.Lelse3:
.Lendif4:
    movq    -520(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    aic_fopen
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
    movq    %rax, -632(%rbp)
    movq    -464(%rbp), %rax
    movq    %rax, %r12
    movq    -632(%rbp), %rax
    movq    %rax, %r13
    leaq    1(%r13), %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok5
    jmp     .Lruntimeerror
.Lallocok5:
    movq    %rax, %r14
    movq    %r14, %rdi
    movq    $1, %rsi
    movq    %r13, %rdx
    movq    %r12, %rcx
    call    aic_fread
    movb    $0, (%r14,%rax)
    movq    %r14, %rax
    movq    %rax, -816(%rbp)
    movq    -464(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_expand_source
    movq    %rax, -912(%rbp)
    movq    -912(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -624(%rbp)
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
    jne     .Lallocok6
    jmp     .Lruntimeerror
.Lallocok6:
    movq    %rax, -960(%rbp)
    movq    $0, %rax
    movq    %rax, -488(%rbp)
    movq    $0, %rax
    movq    %rax, -952(%rbp)
    movq    $0, %rax
    movq    %rax, -504(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    $0, %rax
    movq    %rax, -928(%rbp)
    movq    $0, %rax
    movq    %rax, -8(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop7:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend8
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -48(%rbp)
    movq    -504(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse9
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse11
    movq    $0, %rax
    movq    %rax, -504(%rbp)
    jmp     .Lendif12
.Lelse11:
.Lendif12:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif10
.Lelse9:
    movq    -528(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse13
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $92, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort17
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
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend18
.Lscshort17:
    movq    $0, %rax
.Lscend18:
    testq   %rax, %rax
    je      .Lelse15
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif16
.Lelse15:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse19
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    -928(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -928(%rbp), %rax
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
    movq    %rax, -952(%rbp)
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -952(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif20
.Lelse19:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
.Lendif20:
.Lendif16:
    jmp     .Lendif14
.Lelse13:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort23
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
    jmp     .Lscend24
.Lscshort23:
    movq    $1, %rax
.Lscend24:
    testq   %rax, %rax
    je      .Lelse21
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
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
    je      .Lternelse25
    movq    $1, %rax
    jmp     .Lternend26
.Lternelse25:
    movq    $2, %rax
.Lternend26:
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
    movq    %rax, -952(%rbp)
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -952(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif22
.Lelse21:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse27
    movq    $1, %rax
    movq    %rax, -528(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -928(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif28
.Lelse27:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort31
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
    je      .Lscshort33
    movq    -912(%rbp), %rax
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
    jmp     .Lscend34
.Lscshort33:
    movq    $0, %rax
.Lscend34:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend32
.Lscshort31:
    movq    $0, %rax
.Lscend32:
    testq   %rax, %rax
    je      .Lelse29
    movq    $1, %rax
    movq    %rax, -504(%rbp)
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif30
.Lelse29:
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_is_space
    testq   %rax, %rax
    je      .Lelse35
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lendif36
.Lelse35:
    movq    -488(%rbp), %rax
    movq    %rax, -8(%rbp)
.Lwtop37:
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort39
    movq    -912(%rbp), %rax
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
    jmp     .Lscend40
.Lscshort39:
    movq    $0, %rax
.Lscend40:
    testq   %rax, %rax
    je      .Lwend38
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -488(%rbp)
    jmp     .Lwtop37
.Lwend38:
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
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
    movq    %rax, -952(%rbp)
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -952(%rbp)
.Lendif36:
.Lendif30:
.Lendif28:
.Lendif22:
.Lendif14:
.Lendif10:
    jmp     .Lwtop7
.Lwend8:
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok41
    jmp     .Lruntimeerror
.Lallocok41:
    movq    %rax, -920(%rbp)
    movq    -952(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok42
    jmp     .Lruntimeerror
.Lallocok42:
    movq    %rax, -584(%rbp)
    movq    $0, %rax
    movq    %rax, -896(%rbp)
    movq    $0, %rax
    movq    %rax, -256(%rbp)
    movq    $0, %rax
    movq    %rax, -704(%rbp)
    movq    $0, %rax
    movq    %rax, -544(%rbp)
    movq    $0, %rax
    movq    %rax, -936(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
.Lwtop43:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend44
    movq    -960(%rbp), %rax
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
    movq    %rax, -936(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse45
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -896(%rbp)
    jmp     .Lendif46
.Lelse45:
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse47
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse49
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse51
    leaq    aicstr_3(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -960(%rbp), %rax
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
    jmp     .Lendif52
.Lelse51:
.Lendif52:
    jmp     .Lendif50
.Lelse49:
    movq    -896(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -896(%rbp)
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
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
    movq    -704(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -704(%rbp)
.Lendif50:
    jmp     .Lendif48
.Lelse47:
.Lendif48:
.Lendif46:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -536(%rbp)
    jmp     .Lwtop43
.Lwend44:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort55
    movq    -896(%rbp), %rax
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
    jmp     .Lscend56
.Lscshort55:
    movq    $0, %rax
.Lscend56:
    testq   %rax, %rax
    je      .Lelse53
    movq    -920(%rbp), %rax
    pushq   %rax
    movq    -896(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    jmp     .Lendif54
.Lelse53:
.Lendif54:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse57
    movq    $1, %rax
    jmp     .Lmain_ret
    jmp     .Lendif58
.Lelse57:
.Lendif58:
    movq    -952(%rbp), %rax
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
    jne     .Lallocok59
    jmp     .Lruntimeerror
.Lallocok59:
    movq    %rax, -456(%rbp)
    movq    -952(%rbp), %rax
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
    movq    %rax, -576(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok61
    jmp     .Lruntimeerror
.Lallocok61:
    movq    %rax, -832(%rbp)
    movq    -952(%rbp), %rax
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
    movq    %rax, -840(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok63
    jmp     .Lruntimeerror
.Lallocok63:
    movq    %rax, -312(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok64
    jmp     .Lruntimeerror
.Lallocok64:
    movq    %rax, -320(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok65
    jmp     .Lruntimeerror
.Lallocok65:
    movq    %rax, -336(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok66
    jmp     .Lruntimeerror
.Lallocok66:
    movq    %rax, -328(%rbp)
    movq    $0, %rax
    movq    %rax, -448(%rbp)
    movq    $0, %rax
    movq    %rax, -552(%rbp)
    movq    $0, %rax
    movq    %rax, -824(%rbp)
    movq    $0, %rax
    movq    %rax, -304(%rbp)
    movq    $0, %rax
    movq    %rax, -432(%rbp)
    movq    $0, %rax
    movq    %rax, -640(%rbp)
    movq    $0, %rax
    movq    %rax, -712(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
.Lwtop67:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend68
    movq    -960(%rbp), %rax
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
    movq    %rax, -936(%rbp)
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse69
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
    movq    %rax, -640(%rbp)
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    je      .Lelse71
    movq    -960(%rbp), %rax
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
    je      .Lelse73
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -712(%rbp)
    jmp     .Lendif74
.Lelse73:
    movq    -640(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -712(%rbp)
.Lendif74:
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
    movq    -640(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    imulq   $32, %rax
    pushq   %rax
    movq    -712(%rbp), %rax
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
    jmp     .Lendif72
.Lelse71:
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    je      .Lelse75
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
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
    movq    %rax, -880(%rbp)
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
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
    movq    %rax, -864(%rbp)
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -880(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    -824(%rbp), %rax
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
    movq    -864(%rbp), %rax
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
.Lwtop77:
    movq    -440(%rbp), %rax
    pushq   %rax
    movq    -432(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend78
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    movq    -824(%rbp), %rax
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
    jmp     .Lwtop77
.Lwend78:
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -344(%rbp), %rax
    movq    %rax, -296(%rbp)
.Lwtop79:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -304(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend80
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
    jmp     .Lwtop79
.Lwend80:
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -824(%rbp)
    jmp     .Lendif76
.Lelse75:
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
.Lendif76:
.Lendif72:
    movq    -432(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -536(%rbp)
    jmp     .Lendif70
.Lelse69:
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
.Lendif70:
    jmp     .Lwtop67
.Lwend68:
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
    jne     .Lallocok82
    jmp     .Lruntimeerror
.Lallocok82:
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
    jne     .Lallocok83
    jmp     .Lruntimeerror
.Lallocok83:
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
    jne     .Lallocok84
    jmp     .Lruntimeerror
.Lallocok84:
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
    jne     .Lallocok85
    jmp     .Lruntimeerror
.Lallocok85:
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
    jne     .Lallocok86
    jmp     .Lruntimeerror
.Lallocok86:
    movq    %rax, -408(%rbp)
    movq    $0, %rax
    movq    %rax, -288(%rbp)
    movq    $0, %rax
    movq    %rax, -776(%rbp)
    movq    $0, %rax
    movq    %rax, -728(%rbp)
    movq    $0, %rax
    movq    %rax, -696(%rbp)
    movq    $0, %rax
    movq    %rax, -760(%rbp)
    movq    $0, %rax
    movq    %rax, -800(%rbp)
    movq    $0, %rax
    movq    %rax, -768(%rbp)
    movq    $0, %rax
    movq    %rax, -904(%rbp)
    movq    $0, %rax
    movq    %rax, -752(%rbp)
    movq    $0, %rax
    movq    %rax, -240(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -264(%rbp)
    movq    $0, %rax
    movq    %rax, -808(%rbp)
.Lwtop87:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend88
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
    movq    %rax, -264(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -776(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -728(%rbp)
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
    movq    %rax, -904(%rbp)
    movq    -904(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok89
    jmp     .Lruntimeerror
.Lallocok89:
    movq    %rax, -720(%rbp)
    movq    -904(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok90
    jmp     .Lruntimeerror
.Lallocok90:
    movq    %rax, -224(%rbp)
    movq    $0, %rax
    movq    %rax, -752(%rbp)
    movq    $0, %rax
    movq    %rax, -240(%rbp)
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -696(%rbp)
.Lwtop91:
    movq    -696(%rbp), %rax
    pushq   %rax
    movq    -728(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend92
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -696(%rbp), %rax
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
    je      .Lelse93
    movq    -696(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -760(%rbp)
    movq    $1, %rax
    movq    %rax, -800(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -696(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -768(%rbp)
    jmp     .Lendif94
.Lelse93:
    movq    -696(%rbp), %rax
    movq    %rax, -760(%rbp)
    movq    $0, %rax
    movq    %rax, -800(%rbp)
    movq    -696(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -768(%rbp)
.Lendif94:
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -760(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
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
    movq    -800(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -752(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -752(%rbp)
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -760(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -760(%rbp), %rax
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
    movq    -768(%rbp), %rax
    movq    %rax, -696(%rbp)
    jmp     .Lwtop91
.Lwend92:
    movq    -728(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    movq    %rax, -16(%rbp)
.Lwtop95:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend96
    movq    -960(%rbp), %rax
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
    je      .Lscshort99
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
    je      .Lscshort101
    movq    -960(%rbp), %rax
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
    je      .Lscshort103
    movq    -960(%rbp), %rax
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
    je      .Lscshort105
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    jmp     .Lscend106
.Lscshort105:
    movq    $0, %rax
.Lscend106:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend104
.Lscshort103:
    movq    $0, %rax
.Lscend104:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend102
.Lscshort101:
    movq    $0, %rax
.Lscend102:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend100
.Lscshort99:
    movq    $0, %rax
.Lscend100:
    testq   %rax, %rax
    je      .Lelse97
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    jmp     .Lendif98
.Lelse97:
    movq    -960(%rbp), %rax
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
    je      .Lscshort109
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
    je      .Lscshort111
    movq    -960(%rbp), %rax
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
    je      .Lscshort113
    movq    -960(%rbp), %rax
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
    je      .Lscshort115
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    je      .Lscshort117
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    jmp     .Lscend118
.Lscshort117:
    movq    $0, %rax
.Lscend118:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend116
.Lscshort115:
    movq    $0, %rax
.Lscend116:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend114
.Lscshort113:
    movq    $0, %rax
.Lscend114:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend112
.Lscshort111:
    movq    $0, %rax
.Lscend112:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend110
.Lscshort109:
    movq    $0, %rax
.Lscend110:
    testq   %rax, %rax
    je      .Lelse107
    movq    -960(%rbp), %rax
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
    je      .Lelse119
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    jmp     .Lendif120
.Lelse119:
.Lendif120:
    jmp     .Lendif108
.Lelse107:
.Lendif108:
.Lendif98:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop95
.Lwend96:
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
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
    jne     .Lallocok121
    jmp     .Lruntimeerror
.Lallocok121:
    movq    %rax, -944(%rbp)
    movq    $0, %rax
    movq    %rax, -808(%rbp)
.Lwtop122:
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend123
    movq    -944(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    -720(%rbp), %rax
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
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -808(%rbp)
    jmp     .Lwtop122
.Lwend123:
    movq    -368(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -720(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
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
    movq    -944(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -648(%rbp)
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -648(%rbp), %rax
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
    je      .Lternelse124
    movq    $1, %rax
    jmp     .Lternend125
.Lternelse124:
    movq    $0, %rax
.Lternend125:
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
    jmp     .Lwtop87
.Lwend88:
    movq    -952(%rbp), %rax
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
    jne     .Lallocok126
    jmp     .Lruntimeerror
.Lallocok126:
    movq    %rax, -560(%rbp)
    movq    $0, %rax
    movq    %rax, -568(%rbp)
    movq    $0, %rax
    movq    %rax, -608(%rbp)
    movq    $0, %rax
    movq    %rax, -592(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop127:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend128
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
.Lwtop129:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -592(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend130
    movq    -960(%rbp), %rax
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
    je      .Lscshort133
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort135
    movq    -960(%rbp), %rax
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
    je      .Lscshort137
    movq    -960(%rbp), %rax
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
    je      .Lscshort139
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    jmp     .Lscend140
.Lscshort139:
    movq    $0, %rax
.Lscend140:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend138
.Lscshort137:
    movq    $0, %rax
.Lscend138:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend136
.Lscshort135:
    movq    $0, %rax
.Lscend136:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend134
.Lscshort133:
    movq    $0, %rax
.Lscend134:
    testq   %rax, %rax
    je      .Lelse131
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    jmp     .Lendif132
.Lelse131:
    movq    -960(%rbp), %rax
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
    je      .Lscshort143
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort145
    movq    -960(%rbp), %rax
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
    je      .Lscshort147
    movq    -960(%rbp), %rax
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
    je      .Lscshort149
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    je      .Lscshort151
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    jmp     .Lscend152
.Lscshort151:
    movq    $0, %rax
.Lscend152:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend150
.Lscshort149:
    movq    $0, %rax
.Lscend150:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend148
.Lscshort147:
    movq    $0, %rax
.Lscend148:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend146
.Lscshort145:
    movq    $0, %rax
.Lscend146:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend144
.Lscshort143:
    movq    $0, %rax
.Lscend144:
    testq   %rax, %rax
    je      .Lelse141
    movq    -960(%rbp), %rax
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
    je      .Lelse153
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
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
    jmp     .Lendif154
.Lelse153:
.Lendif154:
    jmp     .Lendif142
.Lelse141:
.Lendif142:
.Lendif132:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop129
.Lwend130:
    incq    -600(%rbp)
    jmp     .Lmaptop127
.Lmapend128:
    movq    -912(%rbp), %rax
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
.Lmaptop155:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend156
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -640(%rbp)
    movq    -960(%rbp), %rax
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
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse157
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
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
    jmp     .Lendif158
.Lelse157:
    leaq    aicstr_8(%rip), %rax
    movq    %rax, -424(%rbp)
.Lendif158:
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
    jmp     .Lmaptop155
.Lmapend156:
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
    jne     .Lallocok159
    jmp     .Lruntimeerror
.Lallocok159:
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lmaptop160
.Lmapend161:
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
    jne     .Lallocok162
    jmp     .Lruntimeerror
.Lallocok162:
    movq    %rax, -480(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop163:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend164
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lmaptop163
.Lmapend164:
    movq    $0, -288(%rbp)
.Lmaptop165:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend166
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
    movq    %rax, -272(%rbp)
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
    movq    %rax, -24(%rbp)
.Lwtop167:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend168
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lwtop167
.Lwend168:
    incq    -288(%rbp)
    jmp     .Lmaptop165
.Lmapend166:
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
    movq    -952(%rbp), %rax
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
    jne     .Lallocok169
    jmp     .Lruntimeerror
.Lallocok169:
    movq    %rax, -688(%rbp)
    movq    $0, %rax
    movq    %rax, -968(%rbp)
    movq    $0, %rax
    movq    %rax, -976(%rbp)
    movq    $0, %rax
    movq    %rax, -984(%rbp)
    movq    $0, -600(%rbp)
.Lmaptop170:
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend171
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -608(%rbp)
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    -688(%rbp), %rax
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
    movq    $0, -848(%rbp)
.Lmaptop172:
    movq    -848(%rbp), %rax
    pushq   %rax
    movq    -656(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend173
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    -848(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -880(%rbp)
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    -848(%rbp), %rax
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
    movq    %rax, -864(%rbp)
    movq    -968(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -968(%rbp)
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    pushq   %rax
    movq    -880(%rbp), %rax
    pushq   %rax
    movq    -864(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse174
    movq    -976(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -976(%rbp)
    jmp     .Lendif175
.Lelse174:
    movq    -984(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -984(%rbp)
    leaq    aicstr_56(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -880(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_57(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -864(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif175:
    incq    -848(%rbp)
    jmp     .Lmaptop172
.Lmapend173:
    incq    -600(%rbp)
    jmp     .Lmaptop170
.Lmapend171:
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
    movq    -968(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_60(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -976(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_61(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -984(%rbp), %rax
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
.Lmaptop176:
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend177
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    16(%rbx,%rax), %rax
    movq    %rax, -792(%rbp)
    movq    -456(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    24(%rbx,%rax), %rax
    movq    %rax, -280(%rbp)
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -744(%rbp)
    movq    -744(%rbp), %rax
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
.Lwtop178:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend179
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -688(%rbp), %rax
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
    movq    %rax, -664(%rbp)
    movq    $0, -856(%rbp)
.Lmaptop180:
    movq    -856(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend181
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    -856(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -888(%rbp)
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    -856(%rbp), %rax
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
    movq    %rax, -872(%rbp)
    movq    -392(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -392(%rbp)
    movq    -912(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    -888(%rbp), %rax
    pushq   %rax
    movq    -872(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse182
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -384(%rbp)
    jmp     .Lendif183
.Lelse182:
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
    movq    -888(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_57(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -872(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif183:
    incq    -856(%rbp)
    jmp     .Lmaptop180
.Lmapend181:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop178
.Lwend179:
    incq    -288(%rbp)
    jmp     .Lmaptop176
.Lmapend177:
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
    jne     .Lallocok184
    jmp     .Lruntimeerror
.Lallocok184:
    movq    %rax, -128(%rbp)
    leaq    aicstr_66(%rip), %rax
    movq    %rax, %rdi
    leaq    aicstr_67(%rip), %rsi
    call    aic_fopen
    movq    %rax, -80(%rbp)
    movq    -952(%rbp), %rax
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
    jne     .Lallocok185
    jmp     .Lruntimeerror
.Lallocok185:
    movq    %rax, -184(%rbp)
    movq    $200, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok186
    jmp     .Lruntimeerror
.Lallocok186:
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
    movq    -832(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    pushq   %rax
    movq    -824(%rbp), %rax
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
.Lmaptop187:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend188
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -144(%rbp)
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lmaptop187
.Lmapend188:
    movq    $0, -120(%rbp)
.Lmaptop189:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend190
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
.Lwtop191:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend192
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lwtop191
.Lwend192:
    incq    -120(%rbp)
    jmp     .Lmaptop189
.Lmapend190:
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
.Lmaptop193:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend194
    movq    -576(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    popq    %rbx
    imulq   $16, %rax
    movq    0(%rbx,%rax), %rax
    movq    %rax, -144(%rbp)
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lmaptop193
.Lmapend194:
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
    je      .Lelse195
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
    jmp     .Lendif196
.Lelse195:
.Lendif196:
    movq    $0, -120(%rbp)
.Lmaptop197:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -448(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend198
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_arg_copies
.Lendif200:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse201
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
    jmp     .Lendif202
.Lelse201:
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
.Lendif202:
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
.Lwtop203:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend204
    movq    -960(%rbp), %rax
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
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -584(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    jmp     .Lwtop203
.Lwend204:
    movq    -960(%rbp), %rax
    pushq   %rax
    movq    -912(%rbp), %rax
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
    je      .Lelse205
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
    jmp     .Lendif206
.Lelse205:
.Lendif206:
    incq    -120(%rbp)
    jmp     .Lmaptop197
.Lmapend198:
    movq    -80(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -680(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_67(%rip), %rsi
    call    aic_fopen
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
    je      .Lelse207
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_divzero
    jmp     .Lendif208
.Lelse207:
.Lendif208:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort211
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend212
.Lscshort211:
    movq    $0, %rax
.Lscend212:
    testq   %rax, %rax
    je      .Lelse209
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
    jmp     .Lendif210
.Lelse209:
.Lendif210:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse213
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_runtime
    jmp     .Lendif214
.Lelse213:
.Lendif214:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort217
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend218
.Lscshort217:
    movq    $0, %rax
.Lscend218:
    testq   %rax, %rax
    je      .Lelse215
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
    jmp     .Lendif216
.Lelse215:
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
.Lendif216:
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
    je      .Lelse219
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_divzero_handler
    jmp     .Lendif220
.Lelse219:
.Lendif220:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse221
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_runtime_handler
    jmp     .Lendif222
.Lelse221:
.Lendif222:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    jne      .Lscshort225
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend226
.Lscshort225:
    movq    $1, %rax
.Lscend226:
    testq   %rax, %rax
    je      .Lelse223
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
    jmp     .Lendif224
.Lelse223:
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
.Lendif224:
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
    jne      .Lscshort227
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort229
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort231
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
    jmp     .Lscend232
.Lscshort231:
    movq    $1, %rax
.Lscend232:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend230
.Lscshort229:
    movq    $1, %rax
.Lscend230:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend228
.Lscshort227:
    movq    $1, %rax
.Lscend228:
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
    jne      .Lscshort233
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort235
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort237
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
    jmp     .Lscend238
.Lscshort237:
    movq    $1, %rax
.Lscend238:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend236
.Lscshort235:
    movq    $1, %rax
.Lscend236:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend234
.Lscshort233:
    movq    $1, %rax
.Lscend234:
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
    je      .Lscshort239
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort243
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
    jmp     .Lscend244
.Lscshort243:
    movq    $0, %rax
.Lscend244:
    testq   %rax, %rax
    jne      .Lscshort241
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort245
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
    je      .Lscshort247
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
    jmp     .Lscend248
.Lscshort247:
    movq    $0, %rax
.Lscend248:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend246
.Lscshort245:
    movq    $0, %rax
.Lscend246:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend242
.Lscshort241:
    movq    $1, %rax
.Lscend242:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend240
.Lscshort239:
    movq    $0, %rax
.Lscend240:
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
    je      .Lscshort249
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort251
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
    je      .Lscshort253
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
    jmp     .Lscend254
.Lscshort253:
    movq    $0, %rax
.Lscend254:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend252
.Lscshort251:
    movq    $0, %rax
.Lscend252:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend250
.Lscshort249:
    movq    $0, %rax
.Lscend250:
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
    jne     .Lallocok255
    jmp     .Lruntimeerror
.Lallocok255:
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
    je      .Lelse256
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif257
.Lelse256:
.Lendif257:
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop258:
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort260
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
    jmp     .Lscend261
.Lscshort260:
    movq    $0, %rax
.Lscend261:
    testq   %rax, %rax
    je      .Lwend259
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
    je      .Lelse262
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif263
.Lelse262:
.Lendif263:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop258
.Lwend259:
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
.Lwtop264:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort266
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
    jmp     .Lscend267
.Lscshort266:
    movq    $0, %rax
.Lscend267:
    testq   %rax, %rax
    je      .Lwend265
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
    je      .Lelse268
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif269
.Lelse268:
.Lendif269:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop264
.Lwend265:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse270
    jmp     .Lendif271
.Lelse270:
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
.Lendif271:
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
    je      .Lternelse272
    movq    $1, %rax
    jmp     .Lternend273
.Lternelse272:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse274
    movq    $2, %rax
    jmp     .Lternend275
.Lternelse274:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $63, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse276
    movq    $3, %rax
    jmp     .Lternend277
.Lternelse276:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $87, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse278
    movq    $4, %rax
    jmp     .Lternend279
.Lternelse278:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $68, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse280
    movq    $5, %rax
    jmp     .Lternend281
.Lternelse280:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse282
    movq    $6, %rax
    jmp     .Lternend283
.Lternelse282:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse284
    movq    $7, %rax
    jmp     .Lternend285
.Lternelse284:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse286
    movq    $22, %rax
    jmp     .Lternend287
.Lternelse286:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $72, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse288
    movq    $13, %rax
    jmp     .Lternend289
.Lternelse288:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $76, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse290
    movq    $14, %rax
    jmp     .Lternend291
.Lternelse290:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $78, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse292
    movq    $15, %rax
    jmp     .Lternend293
.Lternelse292:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $86, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse294
    movq    $16, %rax
    jmp     .Lternend295
.Lternelse294:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $79, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse296
    movq    $17, %rax
    jmp     .Lternend297
.Lternelse296:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $90, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse298
    movq    $18, %rax
    jmp     .Lternend299
.Lternelse298:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $82, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse300
    movq    $19, %rax
    jmp     .Lternend301
.Lternelse300:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $75, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse302
    movq    $20, %rax
    jmp     .Lternend303
.Lternelse302:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $88, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse304
    movq    $21, %rax
    jmp     .Lternend305
.Lternelse304:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $65, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse306
    movq    $23, %rax
    jmp     .Lternend307
.Lternelse306:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $73, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse308
    movq    $24, %rax
    jmp     .Lternend309
.Lternelse308:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $70, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse310
    movq    $25, %rax
    jmp     .Lternend311
.Lternelse310:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $84, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse312
    movq    $26, %rax
    jmp     .Lternend313
.Lternelse312:
    movq    $-2, %rax
.Lternend313:
.Lternend311:
.Lternend309:
.Lternend307:
.Lternend305:
.Lternend303:
.Lternend301:
.Lternend299:
.Lternend297:
.Lternend295:
.Lternend293:
.Lternend291:
.Lternend289:
.Lternend287:
.Lternend285:
.Lternend283:
.Lternend281:
.Lternend279:
.Lternend277:
.Lternend275:
.Lternend273:
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
    je      .Lscshort316
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
    jmp     .Lscend317
.Lscshort316:
    movq    $0, %rax
.Lscend317:
    testq   %rax, %rax
    je      .Lternelse314
    movq    $8, %rax
    jmp     .Lternend315
.Lternelse314:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort320
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
    jmp     .Lscend321
.Lscshort320:
    movq    $0, %rax
.Lscend321:
    testq   %rax, %rax
    je      .Lternelse318
    movq    $9, %rax
    jmp     .Lternend319
.Lternelse318:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $194, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort324
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
    jmp     .Lscend325
.Lscshort324:
    movq    $0, %rax
.Lscend325:
    testq   %rax, %rax
    je      .Lternelse322
    movq    $22, %rax
    jmp     .Lternend323
.Lternelse322:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort328
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
    jmp     .Lscend329
.Lscshort328:
    movq    $0, %rax
.Lscend329:
    testq   %rax, %rax
    je      .Lternelse326
    movq    $27, %rax
    jmp     .Lternend327
.Lternelse326:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort332
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
    jmp     .Lscend333
.Lscshort332:
    movq    $0, %rax
.Lscend333:
    testq   %rax, %rax
    je      .Lternelse330
    movq    $28, %rax
    jmp     .Lternend331
.Lternelse330:
    movq    $-2, %rax
.Lternend331:
.Lternend327:
.Lternend323:
.Lternend319:
.Lternend315:
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
    je      .Lscshort336
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort338
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
    jmp     .Lscend339
.Lscshort338:
    movq    $0, %rax
.Lscend339:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend337
.Lscshort336:
    movq    $0, %rax
.Lscend337:
    testq   %rax, %rax
    je      .Lternelse334
    movq    $10, %rax
    jmp     .Lternend335
.Lternelse334:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort342
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort344
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
    jmp     .Lscend345
.Lscshort344:
    movq    $0, %rax
.Lscend345:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend343
.Lscshort342:
    movq    $0, %rax
.Lscend343:
    testq   %rax, %rax
    je      .Lternelse340
    movq    $11, %rax
    jmp     .Lternend341
.Lternelse340:
    movq    $-2, %rax
.Lternend341:
.Lternend335:
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
    je      .Lscshort348
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort350
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort352
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
    jmp     .Lscend353
.Lscshort352:
    movq    $0, %rax
.Lscend353:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend351
.Lscshort350:
    movq    $0, %rax
.Lscend351:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend349
.Lscshort348:
    movq    $0, %rax
.Lscend349:
    testq   %rax, %rax
    je      .Lternelse346
    movq    $12, %rax
    jmp     .Lternend347
.Lternelse346:
    movq    $-2, %rax
.Lternend347:
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
    jne      .Lscshort356
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
    jmp     .Lscend357
.Lscshort356:
    movq    $1, %rax
.Lscend357:
    testq   %rax, %rax
    je      .Lelse354
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif355
.Lelse354:
.Lendif355:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse358
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif359
.Lelse358:
.Lendif359:
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
    je      .Lelse360
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif361
.Lelse360:
.Lendif361:
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
    je      .Lscshort364
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
    jmp     .Lscend365
.Lscshort364:
    movq    $0, %rax
.Lscend365:
    testq   %rax, %rax
    je      .Lelse362
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif363
.Lelse362:
.Lendif363:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort368
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
    jmp     .Lscend369
.Lscshort368:
    movq    $0, %rax
.Lscend369:
    testq   %rax, %rax
    je      .Lelse366
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif367
.Lelse366:
.Lendif367:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse370
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif371
.Lelse370:
.Lendif371:
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
    je      .Lscshort374
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort376
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
    jmp     .Lscend377
.Lscshort376:
    movq    $0, %rax
.Lscend377:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend375
.Lscshort374:
    movq    $0, %rax
.Lscend375:
    testq   %rax, %rax
    je      .Lelse372
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif373
.Lelse372:
.Lendif373:
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
    je      .Lelse378
    movq    $3, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif379
.Lelse378:
.Lendif379:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse380
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif381
.Lelse380:
.Lendif381:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse382
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
    je      .Lelse384
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif385
.Lelse384:
.Lendif385:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse386
    movq    $5, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif387
.Lelse386:
.Lendif387:
    jmp     .Lendif383
.Lelse382:
.Lendif383:
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
.Lwtop388:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend389
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
    jne      .Lscshort392
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
    jmp     .Lscend393
.Lscshort392:
    movq    $1, %rax
.Lscend393:
    testq   %rax, %rax
    je      .Lelse390
    movq    $1, %rax
    jmp     .Lret_is_record_symbol
    jmp     .Lendif391
.Lelse390:
.Lendif391:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop388
.Lwend389:
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
    je      .Lelse394
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif395
.Lelse394:
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
    je      .Lelse396
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif397
.Lelse396:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse398
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
    jmp     .Lendif399
.Lelse398:
.Lendif399:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse400
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
    jmp     .Lendif401
.Lelse400:
.Lendif401:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse402
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
    jmp     .Lendif403
.Lelse402:
.Lendif403:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse404
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
    jmp     .Lendif405
.Lelse404:
.Lendif405:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort408
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
    jmp     .Lscend409
.Lscshort408:
    movq    $0, %rax
.Lscend409:
    testq   %rax, %rax
    je      .Lelse406
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
    jmp     .Lendif407
.Lelse406:
.Lendif407:
.Lendif397:
.Lendif395:
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
    je      .Lternelse410
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lternend411
.Lternelse410:
    movq    -24(%rbp), %rax
.Lternend411:
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
    je      .Lelse412
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
.Lwtop414:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend415
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
    jmp     .Lwtop414
.Lwend415:
    jmp     .Lendif413
.Lelse412:
.Lendif413:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse416
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
    je      .Lscshort418
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
    jmp     .Lscend419
.Lscshort418:
    movq    $0, %rax
.Lscend419:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse420
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
    jmp     .Lternend421
.Lternelse420:
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
.Lternend421:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, -120(%rbp)
.Lwtop422:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend423
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
    jmp     .Lwtop422
.Lwend423:
    jmp     .Lendif417
.Lelse416:
.Lendif417:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse424
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop426:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend427
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
    jmp     .Lwtop426
.Lwend427:
    jmp     .Lendif425
.Lelse424:
.Lendif425:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse428
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
    je      .Lelse430
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
    je      .Lelse432
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
    jmp     .Lendif433
.Lelse432:
.Lendif433:
    jmp     .Lendif431
.Lelse430:
.Lendif431:
    jmp     .Lendif429
.Lelse428:
.Lendif429:
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
    je      .Lternelse434
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
    jmp     .Lternend435
.Lternelse434:
    movq    $0, %rax
.Lternend435:
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
    je      .Lscshort438
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
    jmp     .Lscend439
.Lscshort438:
    movq    $0, %rax
.Lscend439:
    testq   %rax, %rax
    jne      .Lscshort436
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort440
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort442
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort444
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
    jmp     .Lscend445
.Lscshort444:
    movq    $0, %rax
.Lscend445:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend443
.Lscshort442:
    movq    $0, %rax
.Lscend443:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend441
.Lscshort440:
    movq    $0, %rax
.Lscend441:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend437
.Lscshort436:
    movq    $1, %rax
.Lscend437:
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
.Lwtop446:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort448
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
    jmp     .Lscend449
.Lscshort448:
    movq    $0, %rax
.Lscend449:
    testq   %rax, %rax
    je      .Lwend447
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
    je      .Lelse450
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif451
.Lelse450:
.Lendif451:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop446
.Lwend447:
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
    je      .Lelse452
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
    je      .Lscshort454
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
    je      .Lscshort456
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
    je      .Lscshort458
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
    jmp     .Lscend459
.Lscshort458:
    movq    $0, %rax
.Lscend459:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend457
.Lscshort456:
    movq    $0, %rax
.Lscend457:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend455
.Lscshort454:
    movq    $0, %rax
.Lscend455:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse460
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif461
.Lelse460:
.Lendif461:
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
    je      .Lscshort462
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
    je      .Lscshort464
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
    jmp     .Lscend465
.Lscshort464:
    movq    $0, %rax
.Lscend465:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend463
.Lscshort462:
    movq    $0, %rax
.Lscend463:
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
    je      .Lscshort466
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
    je      .Lscshort468
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
    je      .Lscshort470
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
    jmp     .Lscend471
.Lscshort470:
    movq    $0, %rax
.Lscend471:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend469
.Lscshort468:
    movq    $0, %rax
.Lscend469:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend467
.Lscshort466:
    movq    $0, %rax
.Lscend467:
    movq    %rax, -136(%rbp)
    movq    $-1, %rax
    movq    %rax, -176(%rbp)
    movq    -136(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse472
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
    je      .Lscshort474
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
    jmp     .Lscend475
.Lscshort474:
    movq    $0, %rax
.Lscend475:
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse476
    movq    -168(%rbp), %rax
    jmp     .Lternend477
.Lternelse476:
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
.Lternend477:
    movq    %rax, -176(%rbp)
    jmp     .Lendif473
.Lelse472:
.Lendif473:
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
    je      .Lscshort478
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
    je      .Lscshort480
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
    jmp     .Lscend481
.Lscshort480:
    movq    $0, %rax
.Lscend481:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend479
.Lscshort478:
    movq    $0, %rax
.Lscend479:
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse482
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    jmp     .Lendif483
.Lelse482:
.Lendif483:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    movq    $1, %rax
    movq    %rax, -96(%rbp)
.Lwtop484:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend485
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
    je      .Lscshort490
    movq    -96(%rbp), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend491
.Lscshort490:
    movq    $0, %rax
.Lscend491:
    testq   %rax, %rax
    jne      .Lscshort488
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
    jmp     .Lscend489
.Lscshort488:
    movq    $1, %rax
.Lscend489:
    testq   %rax, %rax
    je      .Lelse486
    jmp     .Lendif487
.Lelse486:
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
.Lendif487:
    movq    $0, %rax
    movq    %rax, -96(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lwtop484
.Lwend485:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif453
.Lelse452:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse492
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
    jne      .Lscshort496
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
    jmp     .Lscend497
.Lscshort496:
    movq    $1, %rax
.Lscend497:
    testq   %rax, %rax
    je      .Lelse494
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif495
.Lelse494:
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
.Lendif495:
    jmp     .Lendif493
.Lelse492:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
.Lendif493:
.Lendif453:
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
    je      .Lelse498
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif499
.Lelse498:
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
    je      .Lelse500
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif501
.Lelse500:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse502
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
    jmp     .Lendif503
.Lelse502:
.Lendif503:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse504
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
    jmp     .Lendif505
.Lelse504:
.Lendif505:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse506
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
    jmp     .Lendif507
.Lelse506:
.Lendif507:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse508
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
    jmp     .Lendif509
.Lelse508:
.Lendif509:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort512
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
    jmp     .Lscend513
.Lscshort512:
    movq    $0, %rax
.Lscend513:
    testq   %rax, %rax
    je      .Lelse510
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
    jmp     .Lendif511
.Lelse510:
.Lendif511:
.Lendif501:
.Lendif499:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse514
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
.Lwtop516:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort518
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
    jmp     .Lscend519
.Lscshort518:
    movq    $0, %rax
.Lscend519:
    testq   %rax, %rax
    je      .Lwend517
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
    je      .Lelse520
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif521
.Lelse520:
.Lendif521:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop516
.Lwend517:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse522
    movq    $0, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif523
.Lelse522:
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
.Lendif523:
    jmp     .Lendif515
.Lelse514:
.Lendif515:
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
.Lwtop524:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort526
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
    jmp     .Lscend527
.Lscshort526:
    movq    $0, %rax
.Lscend527:
    testq   %rax, %rax
    je      .Lwend525
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
    je      .Lelse528
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif529
.Lelse528:
.Lendif529:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop524
.Lwend525:
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
    je      .Lternelse530
    movq    -24(%rbp), %rax
    jmp     .Lternend531
.Lternelse530:
    movq    -40(%rbp), %rax
.Lternend531:
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -64(%rbp)
    movq    $-1, %rax
    movq    %rax, -80(%rbp)
.Lwtop532:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort534
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
    jmp     .Lscend535
.Lscshort534:
    movq    $0, %rax
.Lscend535:
    testq   %rax, %rax
    je      .Lwend533
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
    je      .Lelse536
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif537
.Lelse536:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse538
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif539
.Lelse538:
.Lendif539:
.Lendif537:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lwtop532
.Lwend533:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse540
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse542
    movq    $1, %rax
    jmp     .Lternend543
.Lternelse542:
    movq    $0, %rax
.Lternend543:
    movq    %rax, -80(%rbp)
    jmp     .Lendif541
.Lelse540:
.Lendif541:
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
.Lwtop544:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend545
    movq    -40(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
.Lwtop546:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend547
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
    je      .Lelse548
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif549
.Lelse548:
.Lendif549:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop546
.Lwend547:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse550
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
    jmp     .Lendif551
.Lelse550:
.Lendif551:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop544
.Lwend545:
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
.Lwtop552:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend553
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
    jmp     .Lwtop552
.Lwend553:
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
    je      .Lternelse554
    leaq    aicstr_72(%rip), %rax
    jmp     .Lternend555
.Lternelse554:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse556
    leaq    aicstr_73(%rip), %rax
    jmp     .Lternend557
.Lternelse556:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse558
    leaq    aicstr_74(%rip), %rax
    jmp     .Lternend559
.Lternelse558:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse560
    leaq    aicstr_75(%rip), %rax
    jmp     .Lternend561
.Lternelse560:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse562
    leaq    aicstr_76(%rip), %rax
    jmp     .Lternend563
.Lternelse562:
    leaq    aicstr_77(%rip), %rax
.Lternend563:
.Lternend561:
.Lternend559:
.Lternend557:
.Lternend555:
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
    je      .Lternelse564
    movq    $1, %rax
    jmp     .Lternend565
.Lternelse564:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse566
    movq    $2, %rax
    jmp     .Lternend567
.Lternelse566:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $42, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse568
    movq    $3, %rax
    jmp     .Lternend569
.Lternelse568:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse570
    movq    $4, %rax
    jmp     .Lternend571
.Lternelse570:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $37, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse572
    movq    $5, %rax
    jmp     .Lternend573
.Lternelse572:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse574
    movq    $6, %rax
    jmp     .Lternend575
.Lternelse574:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse576
    movq    $7, %rax
    jmp     .Lternend577
.Lternelse576:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse578
    movq    $8, %rax
    jmp     .Lternend579
.Lternelse578:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse580
    movq    $9, %rax
    jmp     .Lternend581
.Lternelse580:
    movq    $-1, %rax
.Lternend581:
.Lternend579:
.Lternend577:
.Lternend575:
.Lternend573:
.Lternend571:
.Lternend569:
.Lternend567:
.Lternend565:
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
    je      .Lscshort584
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
    jmp     .Lscend585
.Lscshort584:
    movq    $0, %rax
.Lscend585:
    testq   %rax, %rax
    je      .Lternelse582
    movq    $10, %rax
    jmp     .Lternend583
.Lternelse582:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort588
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
    jmp     .Lscend589
.Lscshort588:
    movq    $0, %rax
.Lscend589:
    testq   %rax, %rax
    je      .Lternelse586
    movq    $11, %rax
    jmp     .Lternend587
.Lternelse586:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort592
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
    jmp     .Lscend593
.Lscshort592:
    movq    $0, %rax
.Lscend593:
    testq   %rax, %rax
    je      .Lternelse590
    movq    $12, %rax
    jmp     .Lternend591
.Lternelse590:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort596
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
    jmp     .Lscend597
.Lscshort596:
    movq    $0, %rax
.Lscend597:
    testq   %rax, %rax
    je      .Lternelse594
    movq    $13, %rax
    jmp     .Lternend595
.Lternelse594:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort600
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
    jmp     .Lscend601
.Lscshort600:
    movq    $0, %rax
.Lscend601:
    testq   %rax, %rax
    je      .Lternelse598
    movq    $14, %rax
    jmp     .Lternend599
.Lternelse598:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort604
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
    jmp     .Lscend605
.Lscshort604:
    movq    $0, %rax
.Lscend605:
    testq   %rax, %rax
    je      .Lternelse602
    movq    $15, %rax
    jmp     .Lternend603
.Lternelse602:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort608
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
    jmp     .Lscend609
.Lscshort608:
    movq    $0, %rax
.Lscend609:
    testq   %rax, %rax
    je      .Lternelse606
    movq    $16, %rax
    jmp     .Lternend607
.Lternelse606:
    movq    $-1, %rax
.Lternend607:
.Lternend603:
.Lternend599:
.Lternend595:
.Lternend591:
.Lternend587:
.Lternend583:
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
    je      .Lelse610
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_binop_code1
    movq    %rax, -48(%rbp)
    jmp     .Lendif611
.Lelse610:
.Lendif611:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse612
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
    jmp     .Lendif613
.Lelse612:
.Lendif613:
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
    je      .Lelse614
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif615
.Lelse614:
.Lendif615:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse616
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif617
.Lelse616:
.Lendif617:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse618
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort620
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
    jmp     .Lscend621
.Lscshort620:
    movq    $0, %rax
.Lscend621:
    jmp     .Lret_can_fold_binop
    jmp     .Lendif619
.Lelse618:
.Lendif619:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse622
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort624
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
    jmp     .Lscend625
.Lscshort624:
    movq    $0, %rax
.Lscend625:
    jmp     .Lret_can_fold_binop
    jmp     .Lendif623
.Lelse622:
.Lendif623:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort630
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
    jmp     .Lscend631
.Lscshort630:
    movq    $0, %rax
.Lscend631:
    testq   %rax, %rax
    jne      .Lscshort628
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort632
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort634
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
    jmp     .Lscend635
.Lscshort634:
    movq    $1, %rax
.Lscend635:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend633
.Lscshort632:
    movq    $1, %rax
.Lscend633:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend629
.Lscshort628:
    movq    $1, %rax
.Lscend629:
    testq   %rax, %rax
    je      .Lelse626
    movq    $1, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif627
.Lelse626:
.Lendif627:
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
    je      .Lelse636
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif637
.Lelse636:
.Lendif637:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse638
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif639
.Lelse638:
.Lendif639:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse640
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif641
.Lelse640:
.Lendif641:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse642
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok644
    jmp     .Ldivzero
.Ldivok644:
    cqto
    idivq   %rbx
    jmp     .Lret_fold_binop
    jmp     .Lendif643
.Lelse642:
.Lendif643:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse645
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok647
    jmp     .Ldivzero
.Ldivok647:
    cqto
    idivq   %rbx
    movq    %rdx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif646
.Lelse645:
.Lendif646:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse648
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif649
.Lelse648:
.Lendif649:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse650
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    orq     %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif651
.Lelse650:
.Lendif651:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse652
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    xorq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif653
.Lelse652:
.Lendif653:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse654
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    %rbx, %rcx
    shlq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif655
.Lelse654:
.Lendif655:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse656
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    %rbx, %rcx
    sarq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif657
.Lelse656:
.Lendif657:
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
    je      .Lelse658
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
    jmp     .Lendif659
.Lelse658:
.Lendif659:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse660
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
    jmp     .Lendif661
.Lelse660:
.Lendif661:
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
    jne      .Lscshort664
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
    jmp     .Lscend665
.Lscshort664:
    movq    $1, %rax
.Lscend665:
    testq   %rax, %rax
    je      .Lelse662
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
    jmp     .Lendif663
.Lelse662:
.Lendif663:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort668
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
    jmp     .Lscend669
.Lscshort668:
    movq    $1, %rax
.Lscend669:
    testq   %rax, %rax
    je      .Lelse666
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
    jmp     .Lendif667
.Lelse666:
.Lendif667:
    movq    $0, %rax
    jmp     .Lret_emit_word_op
    movq    $0, %rax
.Lret_emit_word_op:
    leave
    ret

aicfn_emit_call:
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
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -184(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    popq    %rbx
    imulq   $32, %rax
    movq    8(%rbx,%rax), %rax
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
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
    je      .Lelse670
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    jmp     .Lendif671
.Lelse670:
.Lendif671:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
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
    movq    -128(%rbp), %rax
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
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse672
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
.Lwtop674:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend675
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
    call    aicfn_emit_expr
    movq    -112(%rbp), %rax
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
    jmp     .Lwtop674
.Lwend675:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop676:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend677
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -120(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop676
.Lwend677:
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    jmp     .Lendif673
.Lelse672:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok678
    jmp     .Lruntimeerror
.Lallocok678:
    movq    %rax, -64(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
.Lwtop679:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend680
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -56(%rbp), %rax
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
    jmp     .Lwtop679
.Lwend680:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok683
    jmp     .Ldivzero
.Ldivok683:
    cqto
    idivq   %rbx
    movq    %rdx, %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse681
    movq    $1, %rax
    jmp     .Lternend682
.Lternelse681:
    movq    $0, %rax
.Lternend682:
    movq    %rax, -176(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse684
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_89(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif685
.Lelse684:
.Lendif685:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop686:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend687
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop686
.Lwend687:
    movq    $0, %rax
    movq    %rax, -120(%rbp)
.Lwtop688:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend689
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop688
.Lwend689:
    movq    $5, %rax
    movq    %rax, -120(%rbp)
.Lwtop690:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend691
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -120(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop690
.Lwend691:
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
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
    jne     .Lallocok692
    jmp     .Lruntimeerror
.Lallocok692:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -80(%rbp)
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
.Lendif673:
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
.Lwtop693:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort695
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
    jmp     .Lscend696
.Lscshort695:
    movq    $0, %rax
.Lscend696:
    testq   %rax, %rax
    je      .Lwend694
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
    je      .Lelse697
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif698
.Lelse697:
.Lendif698:
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
    je      .Lelse699
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif700
.Lelse699:
.Lendif700:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop693
.Lwend694:
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
    je      .Lelse701
    movq    $0, %rax
    jmp     .Lret_streq_ptr
    jmp     .Lendif702
.Lelse701:
.Lendif702:
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop703:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort705
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
    jmp     .Lscend706
.Lscshort705:
    movq    $0, %rax
.Lscend706:
    testq   %rax, %rax
    je      .Lwend704
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
    je      .Lelse707
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif708
.Lelse707:
.Lendif708:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop703
.Lwend704:
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
.Lwtop709:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort711
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
    jmp     .Lscend712
.Lscshort711:
    movq    $0, %rax
.Lscend712:
    testq   %rax, %rax
    je      .Lwend710
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
    je      .Lelse713
    movq    -48(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif714
.Lelse713:
.Lendif714:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop709
.Lwend710:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse715
    movq    -40(%rbp), %rax
    jmp     .Lret_string_label_num
    jmp     .Lendif716
.Lelse715:
.Lendif716:
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
    je      .Lelse717
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif718
.Lelse717:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse719
    leaq    aicstr_67(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif720
.Lelse719:
    leaq    aicstr_92(%rip), %rax
    jmp     .Lret_fopen_mode_value
.Lendif720:
.Lendif718:
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
    je      .Lelse721
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif722
.Lelse721:
.Lendif722:
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse723
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
    je      .Lelse725
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif726
.Lelse725:
.Lendif726:
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
    je      .Lelse727
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif728
.Lelse727:
.Lendif728:
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
    je      .Lelse729
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif730
.Lelse729:
.Lendif730:
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
    jmp     .Lendif724
.Lelse723:
.Lendif724:
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
    je      .Lelse731
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
    jmp     .Lendif732
.Lelse731:
.Lendif732:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse733
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
    jmp     .Lendif734
.Lelse733:
.Lendif734:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse735
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
    jmp     .Lendif736
.Lelse735:
.Lendif736:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse737
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
    jmp     .Lendif738
.Lelse737:
.Lendif738:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort741
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
    jmp     .Lscend742
.Lscshort741:
    movq    $0, %rax
.Lscend742:
    testq   %rax, %rax
    je      .Lelse739
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
    jmp     .Lendif740
.Lelse739:
.Lendif740:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse743
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort745
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
    jmp     .Lscend746
.Lscshort745:
    movq    $0, %rax
.Lscend746:
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse747
    movq    $1, %rax
    jmp     .Lternend748
.Lternelse747:
    movq    $0, %rax
.Lternend748:
    jmp     .Lret_static_type
    jmp     .Lendif744
.Lelse743:
.Lendif744:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort753
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
    jmp     .Lscend754
.Lscshort753:
    movq    $1, %rax
.Lscend754:
    testq   %rax, %rax
    jne      .Lscshort751
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort755
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort757
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
    jmp     .Lscend758
.Lscshort757:
    movq    $1, %rax
.Lscend758:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend756
.Lscshort755:
    movq    $1, %rax
.Lscend756:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend752
.Lscshort751:
    movq    $1, %rax
.Lscend752:
    testq   %rax, %rax
    je      .Lelse749
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif750
.Lelse749:
.Lendif750:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort761
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
    jmp     .Lscend762
.Lscshort761:
    movq    $0, %rax
.Lscend762:
    testq   %rax, %rax
    je      .Lelse759
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
    je      .Lelse763
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
    je      .Lelse765
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
    je      .Lelse767
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
    je      .Lelse769
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif770
.Lelse769:
.Lendif770:
    jmp     .Lendif768
.Lelse767:
.Lendif768:
    jmp     .Lendif766
.Lelse765:
.Lendif766:
    jmp     .Lendif764
.Lelse763:
.Lendif764:
    jmp     .Lendif760
.Lelse759:
.Lendif760:
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
    je      .Lelse771
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif772
.Lelse771:
.Lendif772:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort775
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
    jmp     .Lscend776
.Lscshort775:
    movq    $0, %rax
.Lscend776:
    testq   %rax, %rax
    je      .Lelse773
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
    je      .Lelse777
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif778
.Lelse777:
.Lendif778:
    jmp     .Lendif774
.Lelse773:
.Lendif774:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort781
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
    jmp     .Lscend782
.Lscshort781:
    movq    $0, %rax
.Lscend782:
    testq   %rax, %rax
    je      .Lelse779
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
    je      .Lelse783
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
    je      .Lelse785
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif786
.Lelse785:
.Lendif786:
    jmp     .Lendif784
.Lelse783:
.Lendif784:
    jmp     .Lendif780
.Lelse779:
.Lendif780:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse787
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
    jmp     .Lendif788
.Lelse787:
.Lendif788:
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
    je      .Lelse789
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
    jmp     .Lendif790
.Lelse789:
.Lendif790:
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
    je      .Lelse791
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
    jne     .Lallocok793
    jmp     .Lruntimeerror
.Lallocok793:
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
    jmp     .Lendif792
.Lelse791:
.Lendif792:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
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
    jmp     .Lendif795
.Lelse794:
.Lendif795:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse796
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
    jne     .Lallocok798
    jmp     .Lruntimeerror
.Lallocok798:
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
    jmp     .Lendif797
.Lelse796:
.Lendif797:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse799
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
    jmp     .Lendif800
.Lelse799:
.Lendif800:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse801
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
    jne     .Lallocok803
    jmp     .Lruntimeerror
.Lallocok803:
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
    jmp     .Lendif802
.Lelse801:
.Lendif802:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse804
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
    jmp     .Lendif805
.Lelse804:
.Lendif805:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse806
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
    jne     .Lallocok808
    jmp     .Lruntimeerror
.Lallocok808:
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
    jmp     .Lendif807
.Lelse806:
.Lendif807:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse809
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
    jmp     .Lendif810
.Lelse809:
.Lendif810:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse811
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
    jmp     .Lendif812
.Lelse811:
.Lendif812:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse813
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
    jmp     .Lendif814
.Lelse813:
.Lendif814:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse815
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
    jmp     .Lendif816
.Lelse815:
.Lendif816:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse817
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
    jmp     .Lendif818
.Lelse817:
.Lendif818:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse819
    movq    -80(%rbp), %rax
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
    jmp     .Lendif820
.Lelse819:
.Lendif820:
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
.Lwtop821:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort823
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
    jmp     .Lscend824
.Lscshort823:
    movq    $0, %rax
.Lscend824:
    testq   %rax, %rax
    je      .Lwend822
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
    je      .Lscshort827
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
    jmp     .Lscend828
.Lscshort827:
    movq    $0, %rax
.Lscend828:
    testq   %rax, %rax
    je      .Lelse825
    movq    -40(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif826
.Lelse825:
.Lendif826:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop821
.Lwend822:
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
.Lwtop829:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort831
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
    jmp     .Lscend832
.Lscshort831:
    movq    $0, %rax
.Lscend832:
    testq   %rax, %rax
    je      .Lwend830
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
    je      .Lscshort835
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
    jmp     .Lscend836
.Lscshort835:
    movq    $0, %rax
.Lscend836:
    testq   %rax, %rax
    je      .Lelse833
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
    jmp     .Lendif834
.Lelse833:
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
    je      .Lelse837
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
    jne      .Lscshort841
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
    jmp     .Lscend842
.Lscshort841:
    movq    $1, %rax
.Lscend842:
    testq   %rax, %rax
    je      .Lelse839
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
    je      .Lscshort845
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
    jmp     .Lscend846
.Lscshort845:
    movq    $0, %rax
.Lscend846:
    testq   %rax, %rax
    je      .Lelse843
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
    jmp     .Lendif844
.Lelse843:
.Lendif844:
    jmp     .Lendif840
.Lelse839:
.Lendif840:
    jmp     .Lendif838
.Lelse837:
.Lendif838:
.Lendif834:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lwtop829
.Lwend830:
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
.Lwtop847:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort849
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
    jmp     .Lscend850
.Lscshort849:
    movq    $0, %rax
.Lscend850:
    testq   %rax, %rax
    je      .Lwend848
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
    je      .Lelse851
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
    jne      .Lscshort855
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
    jmp     .Lscend856
.Lscshort855:
    movq    $1, %rax
.Lscend856:
    testq   %rax, %rax
    je      .Lelse853
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
    je      .Lelse857
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
    je      .Lscshort861
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
    je      .Lscshort863
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
    je      .Lscshort865
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
    jmp     .Lscend866
.Lscshort865:
    movq    $0, %rax
.Lscend866:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend864
.Lscshort863:
    movq    $0, %rax
.Lscend864:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend862
.Lscshort861:
    movq    $0, %rax
.Lscend862:
    testq   %rax, %rax
    je      .Lelse859
    movq    -104(%rbp), %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif860
.Lelse859:
.Lendif860:
    jmp     .Lendif858
.Lelse857:
.Lendif858:
    jmp     .Lendif854
.Lelse853:
.Lendif854:
    jmp     .Lendif852
.Lelse851:
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
    je      .Lelse867
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
    jne      .Lscshort871
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
    jmp     .Lscend872
.Lscshort871:
    movq    $1, %rax
.Lscend872:
    testq   %rax, %rax
    je      .Lelse869
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
    je      .Lelse873
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
    je      .Lscshort877
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
    je      .Lscshort879
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
    je      .Lscshort881
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
    je      .Lscshort883
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
    jmp     .Lscend884
.Lscshort883:
    movq    $0, %rax
.Lscend884:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend882
.Lscshort881:
    movq    $0, %rax
.Lscend882:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend880
.Lscshort879:
    movq    $0, %rax
.Lscend880:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend878
.Lscshort877:
    movq    $0, %rax
.Lscend878:
    testq   %rax, %rax
    je      .Lelse875
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif876
.Lelse875:
.Lendif876:
    jmp     .Lendif874
.Lelse873:
.Lendif874:
    jmp     .Lendif870
.Lelse869:
.Lendif870:
    jmp     .Lendif868
.Lelse867:
.Lendif868:
.Lendif852:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop847
.Lwend848:
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
    je      .Lelse885
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
    je      .Lelse887
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
    jmp     .Lendif888
.Lelse887:
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
    je      .Lelse889
    movq    -56(%rbp), %rax
    jmp     .Lret_get_int_constant
    jmp     .Lendif890
.Lelse889:
.Lendif890:
.Lendif888:
    jmp     .Lendif886
.Lelse885:
.Lendif886:
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
    movq    %rax, -104(%rbp)
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
    je      .Lscshort894
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
    jmp     .Lscend895
.Lscshort894:
    movq    $0, %rax
.Lscend895:
    testq   %rax, %rax
    je      .Lternelse892
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend893
.Lternelse892:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend893:
    movq    %rax, -152(%rbp)
.Lwtop896:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend897
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
    jmp     .Lwtop896
.Lwend897:
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
    movq    %rax, -56(%rbp)
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
    movq    %rax, -136(%rbp)
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
    movq    -96(%rbp), %rax
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
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop900:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend901
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
    jne     .Lallocok902
    jmp     .Lruntimeerror
.Lallocok902:
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
    leaq    aicstr_148(%rip), %rax
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
    jmp     .Lwtop900
.Lwend901:
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
    jne     .Lallocok903
    jmp     .Lruntimeerror
.Lallocok903:
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
    je      .Lelse904
    leaq    aicstr_149(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_get
    jmp     .Lendif905
.Lelse904:
.Lendif905:
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
    je      .Lelse906
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
    jne     .Lallocok908
    jmp     .Lruntimeerror
.Lallocok908:
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
    jmp     .Lendif907
.Lelse906:
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
    je      .Lelse909
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
    jmp     .Lendif910
.Lelse909:
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
    je      .Lelse912
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
    movq    %rax, -176(%rbp)
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
    jne     .Lallocok915
    jmp     .Lruntimeerror
.Lallocok915:
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
    jmp     .Lendif913
.Lelse912:
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
    jne     .Lallocok916
    jmp     .Lruntimeerror
.Lallocok916:
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
.Lendif913:
.Lendif910:
.Lendif907:
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
    je      .Lelse917
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
    jne     .Lallocok919
    jmp     .Lruntimeerror
.Lallocok919:
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop920:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend921
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
    jmp     .Lwtop920
.Lwend921:
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
    je      .Lelse922
    movq    $2, %rax
    movq    %rax, -296(%rbp)
.Lwtop924:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend925
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
    jmp     .Lwtop924
.Lwend925:
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
    je      .Lelse926
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
    jne     .Lallocok928
    jmp     .Lruntimeerror
.Lallocok928:
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
    jmp     .Lendif927
.Lelse926:
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
.Lendif927:
    movq    -128(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_157(%rip), %rax
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
.Lwtop929:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend930
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
    jne     .Lallocok931
    jmp     .Lruntimeerror
.Lallocok931:
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
    leaq    aicstr_148(%rip), %rax
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
    jmp     .Lwtop929
.Lwend930:
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif923
.Lelse922:
.Lendif923:
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
    je      .Lelse932
    movq    $1, %rax
    movq    %rax, -296(%rbp)
.Lwtop934:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend935
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
    jmp     .Lwtop934
.Lwend935:
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
.Lwtop936:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend937
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
    jne     .Lallocok938
    jmp     .Lruntimeerror
.Lallocok938:
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
    leaq    aicstr_148(%rip), %rax
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
    jmp     .Lwtop936
.Lwend937:
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif933
.Lelse932:
.Lendif933:
    leaq    aicstr_158(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif918
.Lelse917:
.Lendif918:
    movq    $16, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok939
    jmp     .Lruntimeerror
.Lallocok939:
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
    je      .Lelse940
    leaq    aicstr_149(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif941
.Lelse940:
.Lendif941:
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
    je      .Lelse942
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
    jne     .Lallocok944
    jmp     .Lruntimeerror
.Lallocok944:
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
    jmp     .Lendif943
.Lelse942:
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
    je      .Lelse945
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
    jne     .Lallocok947
    jmp     .Lruntimeerror
.Lallocok947:
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
    jmp     .Lendif946
.Lelse945:
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
    je      .Lelse948
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
    jne     .Lallocok950
    jmp     .Lruntimeerror
.Lallocok950:
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
    jmp     .Lendif949
.Lelse948:
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
.Lendif949:
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
    jne     .Lallocok951
    jmp     .Lruntimeerror
.Lallocok951:
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
.Lendif946:
.Lendif943:
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
    je      .Lscshort952
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
    jmp     .Lscend953
.Lscshort952:
    movq    $0, %rax
.Lscend953:
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse954
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif955
.Lelse954:
.Lendif955:
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
    je      .Lscshort956
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
    jmp     .Lscend957
.Lscshort956:
    movq    $0, %rax
.Lscend957:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse958
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif959
.Lelse958:
.Lendif959:
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
    je      .Lscshort960
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
    jmp     .Lscend961
.Lscshort960:
    movq    $0, %rax
.Lscend961:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse962
    movq    $0, %rax
    jmp     .Lternend963
.Lternelse962:
    movq    $1, %rax
.Lternend963:
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse964
    movq    -176(%rbp), %rax
    jmp     .Lternend965
.Lternelse964:
    movq    $0, %rax
.Lternend965:
    movq    %rax, -192(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse966
    movq    -184(%rbp), %rax
    jmp     .Lternend967
.Lternelse966:
    movq    -176(%rbp), %rax
.Lternend967:
    movq    %rax, -152(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse968
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
    jmp     .Lternend969
.Lternelse968:
    movq    $0, %rax
.Lternend969:
    movq    %rax, -64(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse970
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend971
.Lternelse970:
    movq    -184(%rbp), %rax
.Lternend971:
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
    movq    %rax, -240(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse973
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
    jmp     .Lendif974
.Lelse973:
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
.Lendif974:
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
    jne     .Lallocok975
    jmp     .Lruntimeerror
.Lallocok975:
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
    movq    %rax, -144(%rbp)
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
    movq    -96(%rbp), %rax
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
.Lwtop977:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend978
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
    jmp     .Lwtop977
.Lwend978:
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
    je      .Lelse979
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
    movq    -64(%rbp), %rax
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
    jmp     .Lendif980
.Lelse979:
    movq    -56(%rbp), %rax
    movq    %rax, -104(%rbp)
.Lwtop981:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend982
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
    je      .Lelse983
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse985
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
    jmp     .Lendif986
.Lelse985:
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
.Lendif986:
    jmp     .Lendif984
.Lelse983:
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse987
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
    jmp     .Lendif988
.Lelse987:
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
.Lendif988:
.Lendif984:
    movq    -64(%rbp), %rax
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
    movq    -64(%rbp), %rax
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
    movq    -88(%rbp), %rax
    movq    %rax, -104(%rbp)
    jmp     .Lwtop981
.Lwend982:
.Lendif980:
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
    jne     .Lallocok989
    jmp     .Lruntimeerror
.Lallocok989:
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
    jne     .Lallocok990
    jmp     .Lruntimeerror
.Lallocok990:
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
    je      .Lternelse991
    movq    $0, %rax
    jmp     .Lternend992
.Lternelse991:
    movq    $1, %rax
.Lternend992:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok993
    jmp     .Lruntimeerror
.Lallocok993:
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
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse994
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
    jmp     .Lendif995
.Lelse994:
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
.Lendif995:
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
    movq    -72(%rbp), %rax
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
    jne     .Lallocok996
    jmp     .Lruntimeerror
.Lallocok996:
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
    jne     .Lallocok997
    jmp     .Lruntimeerror
.Lallocok997:
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
    je      .Lelse998
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_157(%rip), %rax
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
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1000
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
    jmp     .Lendif1001
.Lelse1000:
.Lendif1001:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1002
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
    jmp     .Lendif1003
.Lelse1002:
.Lendif1003:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1006
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
    jmp     .Lscend1007
.Lscshort1006:
    movq    $1, %rax
.Lscend1007:
    testq   %rax, %rax
    je      .Lelse1004
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
    jne     .Lallocok1008
    jmp     .Lruntimeerror
.Lallocok1008:
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
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1009
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
    jmp     .Lendif1010
.Lelse1009:
.Lendif1010:
    jmp     .Lendif1005
.Lelse1004:
.Lendif1005:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1011
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
    jmp     .Lendif1012
.Lelse1011:
.Lendif1012:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1013
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
    jmp     .Lendif1014
.Lelse1013:
.Lendif1014:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1015
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
    jmp     .Lendif1016
.Lelse1015:
.Lendif1016:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1017
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
    jmp     .Lendif1018
.Lelse1017:
.Lendif1018:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1019
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
    jmp     .Lendif1020
.Lelse1019:
.Lendif1020:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1021
    movq    -24(%rbp), %rax
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
    jmp     .Lendif1022
.Lelse1021:
.Lendif1022:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1023
    movq    -24(%rbp), %rax
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
    jmp     .Lendif1024
.Lelse1023:
.Lendif1024:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1025
    movq    -24(%rbp), %rax
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
    jmp     .Lendif1026
.Lelse1025:
.Lendif1026:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1027
    movq    -24(%rbp), %rax
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
    jmp     .Lendif1028
.Lelse1027:
.Lendif1028:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1029
    movq    -24(%rbp), %rax
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
    jmp     .Lendif1030
.Lelse1029:
.Lendif1030:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1031
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_209(%rip), %rax
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
    jmp     .Lendif1032
.Lelse1031:
.Lendif1032:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1035
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
    jmp     .Lscend1036
.Lscshort1035:
    movq    $1, %rax
.Lscend1036:
    testq   %rax, %rax
    je      .Lelse1033
    leaq    aicstr_210(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif1034
.Lelse1033:
.Lendif1034:
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
    je      .Lelse1037
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
    jne     .Lallocok1039
    jmp     .Lruntimeerror
.Lallocok1039:
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
    leaq    aicstr_211(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif1038
.Lelse1037:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1040
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
    je      .Lelse1042
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
    jne     .Lallocok1044
    jmp     .Lruntimeerror
.Lallocok1044:
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
    jmp     .Lendif1043
.Lelse1042:
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
    je      .Lelse1045
    movq    -280(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1047
    jmp     .Lruntimeerror
.Lallocok1047:
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
    jmp     .Lendif1046
.Lelse1045:
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
    jne     .Lallocok1048
    jmp     .Lruntimeerror
.Lallocok1048:
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
.Lendif1046:
.Lendif1043:
    jmp     .Lendif1041
.Lelse1040:
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
    je      .Lternelse1049
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
    jmp     .Lternend1050
.Lternelse1049:
    movq    $0, %rax
.Lternend1050:
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
    je      .Lscshort1051
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1053
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
    jmp     .Lscend1054
.Lscshort1053:
    movq    $0, %rax
.Lscend1054:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1052
.Lscshort1051:
    movq    $0, %rax
.Lscend1052:
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
    je      .Lscshort1055
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1057
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
    jmp     .Lscend1058
.Lscshort1057:
    movq    $0, %rax
.Lscend1058:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1056
.Lscshort1055:
    movq    $0, %rax
.Lscend1056:
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
    je      .Lelse1059
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -272(%rbp)
    jmp     .Lendif1060
.Lelse1059:
.Lendif1060:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1061
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -272(%rbp)
    jmp     .Lendif1062
.Lelse1061:
.Lendif1062:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1063
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
    jmp     .Lendif1064
.Lelse1063:
.Lendif1064:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1065
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
    jmp     .Lendif1066
.Lelse1065:
.Lendif1066:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1069
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
    jmp     .Lscend1070
.Lscshort1069:
    movq    $0, %rax
.Lscend1070:
    testq   %rax, %rax
    je      .Lelse1067
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
    jmp     .Lendif1068
.Lelse1067:
.Lendif1068:
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
    je      .Lscshort1073
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
    jmp     .Lscend1074
.Lscshort1073:
    movq    $0, %rax
.Lscend1074:
    testq   %rax, %rax
    je      .Lelse1071
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
    je      .Lelse1075
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
    je      .Lelse1077
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
    je      .Lelse1079
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
    je      .Lelse1081
    movq    $1, %rax
    movq    %rax, -200(%rbp)
    jmp     .Lendif1082
.Lelse1081:
.Lendif1082:
    jmp     .Lendif1080
.Lelse1079:
.Lendif1080:
    jmp     .Lendif1078
.Lelse1077:
.Lendif1078:
    jmp     .Lendif1076
.Lelse1075:
.Lendif1076:
    jmp     .Lendif1072
.Lelse1071:
.Lendif1072:
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
    je      .Lelse1083
    movq    -88(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1084
.Lelse1083:
.Lendif1084:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1087
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1089
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
    jmp     .Lscend1090
.Lscshort1089:
    movq    $0, %rax
.Lscend1090:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1088
.Lscshort1087:
    movq    $0, %rax
.Lscend1088:
    testq   %rax, %rax
    je      .Lelse1085
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
    je      .Lelse1091
    movq    -96(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1092
.Lelse1091:
.Lendif1092:
    jmp     .Lendif1086
.Lelse1085:
.Lendif1086:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1095
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1097
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
    jmp     .Lscend1098
.Lscshort1097:
    movq    $0, %rax
.Lscend1098:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1096
.Lscshort1095:
    movq    $0, %rax
.Lscend1096:
    testq   %rax, %rax
    je      .Lelse1093
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
    je      .Lelse1099
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
    je      .Lelse1101
    movq    -104(%rbp), %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif1102
.Lelse1101:
.Lendif1102:
    jmp     .Lendif1100
.Lelse1099:
.Lendif1100:
    jmp     .Lendif1094
.Lelse1093:
.Lendif1094:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1103
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
    jmp     .Lendif1104
.Lelse1103:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $30, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1105
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
    jmp     .Lendif1106
.Lelse1105:
    movq    -200(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1107
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
    jmp     .Lendif1108
.Lelse1107:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1109
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
    jmp     .Lendif1110
.Lelse1109:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1111
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
    jmp     .Lendif1112
.Lelse1111:
    movq    -184(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1113
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
    jmp     .Lendif1114
.Lelse1113:
    movq    -192(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse1115
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
    jmp     .Lendif1116
.Lelse1115:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1119
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
    jmp     .Lscend1120
.Lscshort1119:
    movq    $1, %rax
.Lscend1120:
    testq   %rax, %rax
    je      .Lelse1117
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
    jmp     .Lendif1118
.Lelse1117:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1125
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
    jmp     .Lscend1126
.Lscshort1125:
    movq    $1, %rax
.Lscend1126:
    testq   %rax, %rax
    jne      .Lscshort1123
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1127
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
    jmp     .Lscend1128
.Lscshort1127:
    movq    $1, %rax
.Lscend1128:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1124
.Lscshort1123:
    movq    $1, %rax
.Lscend1124:
    testq   %rax, %rax
    je      .Lelse1121
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
    jmp     .Lendif1122
.Lelse1121:
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1131
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
    jmp     .Lscend1132
.Lscshort1131:
    movq    $0, %rax
.Lscend1132:
    testq   %rax, %rax
    je      .Lelse1129
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
    jmp     .Lendif1130
.Lelse1129:
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
    je      .Lelse1133
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
    je      .Lscshort1137
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
    jmp     .Lscend1138
.Lscshort1137:
    movq    $0, %rax
.Lscend1138:
    testq   %rax, %rax
    je      .Lelse1135
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -440(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_can_fold_binop
    testq   %rax, %rax
    je      .Lelse1139
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
    movq    %rax, -304(%rbp)
    movq    -152(%rbp), %rax
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
    jmp     .Lendif1140
.Lelse1139:
.Lendif1140:
    jmp     .Lendif1136
.Lelse1135:
.Lendif1136:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1142
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
    jmp     .Lendif1143
.Lelse1142:
.Lendif1143:
    jmp     .Lendif1134
.Lelse1133:
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
    je      .Lelse1144
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
    jmp     .Lendif1145
.Lelse1144:
    leaq    aicstr_212(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1145:
.Lendif1134:
.Lendif1130:
.Lendif1122:
.Lendif1118:
.Lendif1116:
.Lendif1114:
.Lendif1112:
.Lendif1110:
.Lendif1108:
.Lendif1106:
.Lendif1104:
.Lendif1041:
.Lendif1038:
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
    jne     .Lallocok1146
    jmp     .Lruntimeerror
.Lallocok1146:
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
    je      .Lelse1147
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
    je      .Lelse1149
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif1150
.Lelse1149:
.Lendif1150:
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
    jmp     .Lendif1148
.Lelse1147:
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
.Lendif1148:
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
.Lwtop1151:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1152
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
    jmp     .Lwtop1151
.Lwend1152:
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
    jne     .Lallocok1153
    jmp     .Lruntimeerror
.Lallocok1153:
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
    jne     .Lallocok1154
    jmp     .Lruntimeerror
.Lallocok1154:
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
.Lwtop1155:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1156
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
    jmp     .Lwtop1155
.Lwend1156:
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
    jne     .Lallocok1157
    jmp     .Lruntimeerror
.Lallocok1157:
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
    jne     .Lallocok1158
    jmp     .Lruntimeerror
.Lallocok1158:
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
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1159
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
    jmp     .Lendif1160
.Lelse1159:
.Lendif1160:
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_222(%rip), %rax
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
    je      .Lelse1161
    jmp     .Lendif1162
.Lelse1161:
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
    je      .Lelse1163
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
    jmp     .Lendif1164
.Lelse1163:
.Lendif1164:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1165
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
    jmp     .Lendif1166
.Lelse1165:
.Lendif1166:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1167
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
    jmp     .Lendif1168
.Lelse1167:
.Lendif1168:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1169
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
    jmp     .Lendif1170
.Lelse1169:
.Lendif1170:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1173
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
    jmp     .Lscend1174
.Lscshort1173:
    movq    $0, %rax
.Lscend1174:
    testq   %rax, %rax
    je      .Lelse1171
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
    jmp     .Lendif1172
.Lelse1171:
.Lendif1172:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $27, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1175
    jmp     .Lendif1176
.Lelse1175:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1177
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
    jmp     .Lendif1178
.Lelse1177:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1181
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
    jmp     .Lscend1182
.Lscshort1181:
    movq    $1, %rax
.Lscend1182:
    testq   %rax, %rax
    je      .Lelse1179
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
    jmp     .Lendif1180
.Lelse1179:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1183
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
    jmp     .Lendif1184
.Lelse1183:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1185
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
    jmp     .Lendif1186
.Lelse1185:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1187
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
    jmp     .Lendif1188
.Lelse1187:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1189
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
    jmp     .Lendif1190
.Lelse1189:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1191
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
    jmp     .Lendif1192
.Lelse1191:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1193
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
    jmp     .Lendif1194
.Lelse1193:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1197
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
    jmp     .Lscend1198
.Lscshort1197:
    movq    $0, %rax
.Lscend1198:
    testq   %rax, %rax
    je      .Lelse1195
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
    jmp     .Lendif1196
.Lelse1195:
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
    je      .Lelse1199
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
    jmp     .Lendif1200
.Lelse1199:
    leaq    aicstr_223(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1200:
.Lendif1196:
.Lendif1194:
.Lendif1192:
.Lendif1190:
.Lendif1188:
.Lendif1186:
.Lendif1184:
.Lendif1180:
.Lendif1178:
.Lendif1176:
.Lendif1162:
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
    jne     .Ldivok1201
    jmp     .Ldivzero
.Ldivok1201:
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
    je      .Lelse1202
    movq    $16, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif1203
.Lelse1202:
.Lendif1203:
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
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
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
.Lwtop1205:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1206
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
    jmp     .Lwtop1205
.Lwend1206:
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
.Lwtop1207:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1208
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
    jmp     .Lwtop1207
.Lwend1208:
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
    jne     .Lallocok1209
    jmp     .Lruntimeerror
.Lallocok1209:
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
    je      .Lelse1210
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif1211
.Lelse1210:
.Lendif1211:
    movq    -48(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1212
    jmp     .Lruntimeerror
.Lallocok1212:
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
    movq    $0, %rax
    jmp     .Lret_emit_function_prologue
    movq    $0, %rax
.Lret_emit_function_prologue:
    leave
    ret

aicfn_emit_arg_copies:
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
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop1213:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1214
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
    jne     .Lallocok1215
    jmp     .Lruntimeerror
.Lallocok1215:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -40(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1216
    movq    -8(%rbp), %rax
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
    jmp     .Lendif1217
.Lelse1216:
    movq    $16, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1218
    jmp     .Lruntimeerror
.Lallocok1218:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
.Lendif1217:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop1213
.Lwend1214:
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
    je      .Lelse1219
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif1220
.Lelse1219:
.Lendif1220:
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
    jne     .Lallocok1221
    jmp     .Lruntimeerror
.Lallocok1221:
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
.Lwtop1222:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1223
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
    jne     .Lallocok1224
    jmp     .Lruntimeerror
.Lallocok1224:
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
    jmp     .Lwtop1222
.Lwend1223:
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
    jne     .Lallocok1225
    jmp     .Lruntimeerror
.Lallocok1225:
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
    je      .Lelse1226
    jmp     .Lendif1227
.Lelse1226:
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
    je      .Lelse1228
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
    jmp     .Lendif1229
.Lelse1228:
.Lendif1229:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1230
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
    jmp     .Lendif1231
.Lelse1230:
.Lendif1231:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1232
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
    jmp     .Lendif1233
.Lelse1232:
.Lendif1233:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1234
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
    jmp     .Lendif1235
.Lelse1234:
.Lendif1235:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1238
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
    jmp     .Lscend1239
.Lscshort1238:
    movq    $0, %rax
.Lscend1239:
    testq   %rax, %rax
    je      .Lelse1236
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
    jmp     .Lendif1237
.Lelse1236:
.Lendif1237:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1240
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
    je      .Lelse1242
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
    jmp     .Lendif1243
.Lelse1242:
.Lendif1243:
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
    je      .Lscshort1244
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
    jmp     .Lscend1245
.Lscshort1244:
    movq    $0, %rax
.Lscend1245:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse1246
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
    jmp     .Lternend1247
.Lternelse1246:
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
.Lternend1247:
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
.Lwtop1248:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1249
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
    jmp     .Lwtop1248
.Lwend1249:
    jmp     .Lendif1241
.Lelse1240:
.Lendif1241:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1250
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
    jmp     .Lendif1251
.Lelse1250:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1252
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
    je      .Lelse1254
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
    jmp     .Lendif1255
.Lelse1254:
.Lendif1255:
    jmp     .Lendif1253
.Lelse1252:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1256
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
.Lwtop1258:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1259
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
    jmp     .Lwtop1258
.Lwend1259:
    jmp     .Lendif1257
.Lelse1256:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1260
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
.Lwtop1262:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1263
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
    jmp     .Lwtop1262
.Lwend1263:
    jmp     .Lendif1261
.Lelse1260:
.Lendif1261:
.Lendif1257:
.Lendif1253:
.Lendif1251:
.Lendif1227:
    movq    $0, %rax
    jmp     .Lret_infer_stmt_types
    movq    $0, %rax
.Lret_infer_stmt_types:
    leave
    ret

aicfn_expand_source:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $208, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
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
    movq    -8(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, -48(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop1264:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1265
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -144(%rbp)
    movq    $-1, %rax
    movq    %rax, -72(%rbp)
    movq    $-1, %rax
    movq    %rax, -168(%rbp)
    movq    $0, %rax
    movq    %rax, -160(%rbp)
    movq    $-1, %rax
    movq    %rax, -152(%rbp)
.Lwtop1266:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1268
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1269
.Lscshort1268:
    movq    $0, %rax
.Lscend1269:
    testq   %rax, %rax
    je      .Lwend1267
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1270
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
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
    je      .Lscshort1274
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $109, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1276
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $112, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1278
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $111, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1280
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $114, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1282
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
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
    je      .Lscshort1284
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $32, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1286
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
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
    jmp     .Lscend1287
.Lscshort1286:
    movq    $0, %rax
.Lscend1287:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1285
.Lscshort1284:
    movq    $0, %rax
.Lscend1285:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1283
.Lscshort1282:
    movq    $0, %rax
.Lscend1283:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1281
.Lscshort1280:
    movq    $0, %rax
.Lscend1281:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1279
.Lscshort1278:
    movq    $0, %rax
.Lscend1279:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1277
.Lscshort1276:
    movq    $0, %rax
.Lscend1277:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1275
.Lscshort1274:
    movq    $0, %rax
.Lscend1275:
    testq   %rax, %rax
    je      .Lelse1272
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lendif1273
.Lelse1272:
.Lendif1273:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $108, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1290
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $111, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1292
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $97, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1294
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1296
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $32, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1298
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
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
    jmp     .Lscend1299
.Lscshort1298:
    movq    $0, %rax
.Lscend1299:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1297
.Lscshort1296:
    movq    $0, %rax
.Lscend1297:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1295
.Lscshort1294:
    movq    $0, %rax
.Lscend1295:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1293
.Lscshort1292:
    movq    $0, %rax
.Lscend1293:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1291
.Lscshort1290:
    movq    $0, %rax
.Lscend1291:
    testq   %rax, %rax
    je      .Lelse1288
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lendif1289
.Lelse1288:
.Lendif1289:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1300
    movq    -168(%rbp), %rax
    movq    %rax, -184(%rbp)
.Lwtop1302:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1304
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1305
.Lscshort1304:
    movq    $0, %rax
.Lscend1305:
    testq   %rax, %rax
    je      .Lwend1303
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    jmp     .Lwtop1302
.Lwend1303:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1306
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
.Lwtop1308:
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1310
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1311
.Lscshort1310:
    movq    $0, %rax
.Lscend1311:
    testq   %rax, %rax
    je      .Lwend1309
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    jmp     .Lwtop1308
.Lwend1309:
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1312
    movq    -144(%rbp), %rax
    movq    %rax, -72(%rbp)
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -176(%rbp), %rax
    movq    %rax, -152(%rbp)
    jmp     .Lendif1313
.Lelse1312:
.Lendif1313:
    jmp     .Lendif1307
.Lelse1306:
.Lendif1307:
    jmp     .Lendif1301
.Lelse1300:
.Lendif1301:
    jmp     .Lendif1271
.Lelse1270:
.Lendif1271:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -144(%rbp)
    jmp     .Lwtop1266
.Lwend1267:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1314
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    aic_fopen
    movq    %rax, -88(%rbp)
    movq    -88(%rbp), %rax
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
    movq    %rax, -120(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %r12
    movq    -120(%rbp), %rax
    movq    %rax, %r13
    leaq    1(%r13), %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1316
    jmp     .Lruntimeerror
.Lallocok1316:
    movq    %rax, %r14
    movq    %r14, %rdi
    movq    $1, %rsi
    movq    %r13, %rdx
    movq    %r12, %rcx
    call    aic_fread
    movb    $0, (%r14,%rax)
    movq    %r14, %rax
    movq    %rax, -112(%rbp)
    movq    -88(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -200(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok1317
    jmp     .Lruntimeerror
.Lallocok1317:
    movq    %rax, -128(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop1318:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1319
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    incq    -40(%rbp)
    jmp     .Lmaptop1318
.Lmapend1319:
    movq    $0, -96(%rbp)
.Lmaptop1320:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1321
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    incq    -96(%rbp)
    jmp     .Lmaptop1320
.Lmapend1321:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $10, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    $0, -192(%rbp)
.Lmaptop1322:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1323
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -192(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    incq    -192(%rbp)
    jmp     .Lmaptop1322
.Lmapend1323:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -128(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -136(%rbp), %rax
    movq    %rax, -48(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif1315
.Lelse1314:
.Lendif1315:
    jmp     .Lwtop1264
.Lwend1265:
    movq    -56(%rbp), %rax
    jmp     .Lret_expand_source
    movq    $0, %rax
.Lret_expand_source:
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
