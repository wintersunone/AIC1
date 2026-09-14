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
    .string "    jne     .Lopenok"
aicstr_120:
    .string ".Lopenok"
aicstr_121:
    .string "    movq    %r12, %rdi\n"
aicstr_122:
    .string "    call    aic_ftell\n"
aicstr_123:
    .string "    movq    $0, %rsi\n"
aicstr_124:
    .string "    movq    $2, %rdx\n"
aicstr_125:
    .string "    call    aic_fseek\n"
aicstr_126:
    .string "    movq    %rax, %r14\n"
aicstr_127:
    .string "    movq    %r13, %rsi\n"
aicstr_128:
    .string "    movq    $0, %rdx\n"
aicstr_129:
    .string "    movq    %r14, %rax\n"
aicstr_130:
    .string "    leaq    1(%r13), %rdi\n"
aicstr_131:
    .string "    movq    %r14, %rdi\n"
aicstr_132:
    .string "    movq    %r13, %rdx\n"
aicstr_133:
    .string "    movq    %r12, %rcx\n"
aicstr_134:
    .string "    call    aic_fread\n"
aicstr_135:
    .string "    movb    $0, (%r14,%rax)\n"
aicstr_136:
    .string "    movq    %r14, %rdx\n"
aicstr_137:
    .string "    call    aic_fwrite\n"
aicstr_138:
    .string "    call    aic_fclose\n"
aicstr_139:
    .string "    call    aic_arg\n"
aicstr_140:
    .string "    call    aic_input\n"
aicstr_141:
    .string "    call    aic_free\n"
aicstr_142:
    .string "    call    aic_time\n"
aicstr_143:
    .string "    incq    %rdi\n"
aicstr_144:
    .string "    popq    %rsi\n"
aicstr_145:
    .string "    addq    %rbx, %rsi\n"
aicstr_146:
    .string "    rep movsb\n"
aicstr_147:
    .string "    movq    $"
aicstr_148:
    .string ", %rdi\n"
aicstr_149:
    .string "    movq    %rbx, "
aicstr_150:
    .string "(%rax)\n"
aicstr_151:
    .string "[ERR :code 403 :kind CODEGEN :msg UNRESOLVED_RECORD_FIELD]"
aicstr_152:
    .string "    movq    "
aicstr_153:
    .string "(%rax), %rax\n"
aicstr_154:
    .string "    imulq   $"
aicstr_155:
    .string ", %rax\n"
aicstr_156:
    .string "(%rbx,%rax), %rax\n"
aicstr_157:
    .string "(%rbx,%rax,8), %rax\n"
aicstr_158:
    .string "    shlq    $3, %rax\n"
aicstr_159:
    .string "    addq    %rbx, %rax\n"
aicstr_160:
    .string "[ERR :code 403 :kind CODEGEN :msg INVALID_BULK_RECORD_SET_ARGS]"
aicstr_161:
    .string "    movq    %rax, "
aicstr_162:
    .string "(%rbx)\n"
aicstr_163:
    .string "(%rbx,%rcx)\n"
aicstr_164:
    .string "(%rbp)\n"
aicstr_165:
    .string "    movq    $0, "
aicstr_166:
    .string ".Lmaptop"
aicstr_167:
    .string "(%rbp), %rax\n"
aicstr_168:
    .string "    cmpq    %rbx, %rax\n"
aicstr_169:
    .string "    jge     .Lmapend"
aicstr_170:
    .string "    incq    "
aicstr_171:
    .string "    jmp     .Lmaptop"
aicstr_172:
    .string ".Lmapend"
aicstr_173:
    .string "    leaq    nl_only(%rip), %rdi\n"
aicstr_174:
    .string "    call    aic_printf\n"
aicstr_175:
    .string "    leaq    fmt_s_nl(%rip), %rdi\n"
aicstr_176:
    .string "    leaq    fmt_s_sp(%rip), %rdi\n"
aicstr_177:
    .string "    leaq    fmt_nl(%rip), %rdi\n"
aicstr_178:
    .string "    leaq    fmt_sp(%rip), %rdi\n"
aicstr_179:
    .string "    movq    %rax, %rsi\n"
aicstr_180:
    .string "    je      .Lscshort"
aicstr_181:
    .string "    jne      .Lscshort"
aicstr_182:
    .string "    setne   %al\n"
aicstr_183:
    .string "    movzbq  %al, %rax\n"
aicstr_184:
    .string "    jmp     .Lscend"
aicstr_185:
    .string ".Lscshort"
aicstr_186:
    .string ".Lscend"
aicstr_187:
    .string "    je      .Lternelse"
aicstr_188:
    .string "    jmp     .Lternend"
aicstr_189:
    .string ".Lternelse"
aicstr_190:
    .string ".Lternend"
aicstr_191:
    .string "    subq    %rbx, %rax\n"
aicstr_192:
    .string "    imulq   %rbx, %rax\n"
aicstr_193:
    .string "    testq   %rbx, %rbx\n"
aicstr_194:
    .string "    jne     .Ldivok"
aicstr_195:
    .string "    jmp     .Ldivzero\n"
aicstr_196:
    .string ".Ldivok"
aicstr_197:
    .string "    cqto\n"
aicstr_198:
    .string "    idivq   %rbx\n"
aicstr_199:
    .string "    movq    %rdx, %rax\n"
aicstr_200:
    .string "    andq    %rbx, %rax\n"
aicstr_201:
    .string "    orq     %rbx, %rax\n"
aicstr_202:
    .string "    xorq    %rbx, %rax\n"
aicstr_203:
    .string "    movq    %rbx, %rcx\n"
aicstr_204:
    .string "    shlq    %cl, %rax\n"
aicstr_205:
    .string "    sarq    %cl, %rax\n"
aicstr_206:
    .string "    setl    %al\n"
aicstr_207:
    .string "    setg    %al\n"
aicstr_208:
    .string "    sete    %al\n"
aicstr_209:
    .string "    setne    %al\n"
aicstr_210:
    .string "    setle    %al\n"
aicstr_211:
    .string "    setge    %al\n"
aicstr_212:
    .string "[ERR :code 404 :kind CODEGEN :msg UNSUPPORTED_BINOP]"
aicstr_213:
    .string "(%rip), %rax\n"
aicstr_214:
    .string "[ERR :code 402 :kind CODEGEN :msg UNRESOLVED_EXPR_SYMBOL]"
aicstr_215:
    .string "    jmp     .Lret_"
aicstr_216:
    .string "    jmp     "
aicstr_217:
    .string ".Lwtop"
aicstr_218:
    .string "    je      .Lwend"
aicstr_219:
    .string "    jmp     .Lwtop"
aicstr_220:
    .string ".Lwend"
aicstr_221:
    .string "    je      .Lelse"
aicstr_222:
    .string "    jmp     .Lendif"
aicstr_223:
    .string ".Lelse"
aicstr_224:
    .string ".Lendif"
aicstr_225:
    .string "[ERR :code 401 :kind CODEGEN :msg UNSUPPORTED_STATEMENT]"
aicstr_226:
    .string "    .globl aic_main\n"
aicstr_227:
    .string "aic_main:\n"
aicstr_228:
    .string "    pushq   %rbp\n"
aicstr_229:
    .string "    movq    %rsp, %rbp\n"
aicstr_230:
    .string "    subq    $"
aicstr_231:
    .string "    movq    $0, %rax\n"
aicstr_232:
    .string ".Lmain_ret:\n"
aicstr_233:
    .string "    leave\n"
aicstr_234:
    .string "    ret\n"
aicstr_235:
    .string "aicfn_"
aicstr_236:
    .string ", "
aicstr_237:
    .string ".Lret_"
aicstr_238:
    .string "    .section .rodata\n"
aicstr_239:
    .string "fmt_nl:\n"
aicstr_240:
    .string "    .string "
aicstr_241:
    .string "%ld\\n"
aicstr_242:
    .string "fmt_sp:\n"
aicstr_243:
    .string "%ld "
aicstr_244:
    .string "fmt_s_nl:\n"
aicstr_245:
    .string "%s\\n"
aicstr_246:
    .string "fmt_s_sp:\n"
aicstr_247:
    .string "%s "
aicstr_248:
    .string "fmt_d:\n"
aicstr_249:
    .string "%ld"
aicstr_250:
    .string "nl_only:\n"
aicstr_251:
    .string "\\n"
aicstr_252:
    .string "aicstr_"
aicstr_253:
    .string "divzero_msg:\n"
aicstr_254:
    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\\n"
aicstr_255:
    .string "divzero_msg_end:\n"
aicstr_256:
    .string "    .equ divzero_len, divzero_msg_end - divzero_msg - 1\n"
aicstr_257:
    .string "runtimeerr_msg:\n"
aicstr_258:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\\n"
aicstr_259:
    .string "runtimeerr_msg_end:\n"
aicstr_260:
    .string "    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1\n"
aicstr_261:
    .string "\n\n.Ldivzero:\n"
aicstr_262:
    .string "    leaq    divzero_msg(%rip), %rsi\n"
aicstr_263:
    .string "    movq    %rsi, %rdi\n"
aicstr_264:
    .string "    call    aic_runtime_error\n"
aicstr_265:
    .string "\n\n.Lruntimeerror:\n"
aicstr_266:
    .string "    leaq    runtimeerr_msg(%rip), %rsi\n"
aicstr_267:
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
    movq    %rax, -632(%rbp)
    movq    -464(%rbp), %rax
    movq    %rax, %r12
    movq    -632(%rbp), %rax
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
    jne     .Lallocok7
    jmp     .Lruntimeerror
.Lallocok7:
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
    movq    -912(%rbp), %rax
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
    movq    %rax, -928(%rbp)
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
.Lendif33:
.Lendif27:
.Lendif25:
.Lendif19:
.Lendif15:
.Lendif11:
    jmp     .Lwtop8
.Lwend9:
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
    jne     .Lallocok38
    jmp     .Lruntimeerror
.Lallocok38:
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
    jne     .Lallocok39
    jmp     .Lruntimeerror
.Lallocok39:
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
.Lwtop40:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend41
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
    je      .Lelse42
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
    jmp     .Lendif43
.Lelse42:
    movq    -936(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse44
    movq    -896(%rbp), %rax
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
    jmp     .Lendif49
.Lelse48:
.Lendif49:
    jmp     .Lendif47
.Lelse46:
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
    jmp     .Lscend53
.Lscshort52:
    movq    $0, %rax
.Lscend53:
    testq   %rax, %rax
    je      .Lelse50
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
    jne     .Lallocok56
    jmp     .Lruntimeerror
.Lallocok56:
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
    jne     .Lallocok57
    jmp     .Lruntimeerror
.Lallocok57:
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
    jne     .Lallocok58
    jmp     .Lruntimeerror
.Lallocok58:
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
    jne     .Lallocok59
    jmp     .Lruntimeerror
.Lallocok59:
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
    jne     .Lallocok60
    jmp     .Lruntimeerror
.Lallocok60:
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
    jne     .Lallocok61
    jmp     .Lruntimeerror
.Lallocok61:
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
    jne     .Lallocok62
    jmp     .Lruntimeerror
.Lallocok62:
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
    jne     .Lallocok63
    jmp     .Lruntimeerror
.Lallocok63:
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
.Lwtop64:
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -952(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend65
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
    je      .Lelse68
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
    je      .Lelse70
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
    jmp     .Lendif71
.Lelse70:
    movq    -640(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -712(%rbp)
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
    jmp     .Lendif69
.Lelse68:
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
    je      .Lelse72
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
    jmp     .Lwtop74
.Lwend75:
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
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -824(%rbp)
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
    jne     .Lallocok86
    jmp     .Lruntimeerror
.Lallocok86:
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
    jne     .Lallocok87
    jmp     .Lruntimeerror
.Lallocok87:
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
.Lwtop88:
    movq    -696(%rbp), %rax
    pushq   %rax
    movq    -728(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend89
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
    je      .Lelse90
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
    jmp     .Lendif91
.Lelse90:
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
.Lendif91:
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
    jmp     .Lwtop88
.Lwend89:
    movq    -728(%rbp), %rax
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
    je      .Lscshort100
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
    je      .Lscshort102
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
    jmp     .Lendif95
.Lelse94:
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
    je      .Lscshort110
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
    je      .Lscshort112
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
    je      .Lscshort114
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
    je      .Lelse116
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
    jne     .Lallocok118
    jmp     .Lruntimeerror
.Lallocok118:
    movq    %rax, -944(%rbp)
    movq    $0, %rax
    movq    %rax, -808(%rbp)
.Lwtop119:
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend120
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
    jmp     .Lwtop119
.Lwend120:
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
    je      .Lscshort130
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
    je      .Lscshort132
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
    je      .Lscshort134
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
    je      .Lscshort136
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
    jmp     .Lendif129
.Lelse128:
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
    je      .Lscshort140
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
    je      .Lscshort142
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
    je      .Lscshort144
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
    je      .Lscshort146
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
    je      .Lscshort148
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
    je      .Lelse150
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
    je      .Lelse154
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
    jne     .Lallocok166
    jmp     .Lruntimeerror
.Lallocok166:
    movq    %rax, -688(%rbp)
    movq    $0, %rax
    movq    %rax, -968(%rbp)
    movq    $0, %rax
    movq    %rax, -976(%rbp)
    movq    $0, %rax
    movq    %rax, -984(%rbp)
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
.Lmaptop169:
    movq    -848(%rbp), %rax
    pushq   %rax
    movq    -656(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend170
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
    je      .Lelse171
    movq    -976(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -976(%rbp)
    jmp     .Lendif172
.Lelse171:
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
.Lendif172:
    incq    -848(%rbp)
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
.Lmaptop177:
    movq    -856(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend178
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
.Lendif180:
    incq    -856(%rbp)
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
    jmp     .Lwtop201
.Lwend202:
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
    movq    -680(%rbp), %rax
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
    je      .Lelse669
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -128(%rbp)
    jmp     .Lendif670
.Lelse669:
.Lendif670:
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
    je      .Lelse671
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
.Lwtop673:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend674
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
    jmp     .Lwtop673
.Lwend674:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop675:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend676
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
    jmp     .Lwtop675
.Lwend676:
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
    jmp     .Lendif672
.Lelse671:
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
    jne     .Lallocok677
    jmp     .Lruntimeerror
.Lallocok677:
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
.Lwtop678:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend679
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
    jmp     .Lwtop678
.Lwend679:
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
    jne     .Ldivok682
    jmp     .Ldivzero
.Ldivok682:
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
    je      .Lternelse680
    movq    $1, %rax
    jmp     .Lternend681
.Lternelse680:
    movq    $0, %rax
.Lternend681:
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
    je      .Lelse683
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
    jmp     .Lendif684
.Lelse683:
.Lendif684:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop685:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend686
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
    jmp     .Lwtop685
.Lwend686:
    movq    $0, %rax
    movq    %rax, -120(%rbp)
.Lwtop687:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend688
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
    jmp     .Lwtop687
.Lwend688:
    movq    $5, %rax
    movq    %rax, -120(%rbp)
.Lwtop689:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend690
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
    jmp     .Lwtop689
.Lwend690:
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
    jne     .Lallocok691
    jmp     .Lruntimeerror
.Lallocok691:
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
.Lendif672:
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
.Lwtop692:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort694
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
    jmp     .Lscend695
.Lscshort694:
    movq    $0, %rax
.Lscend695:
    testq   %rax, %rax
    je      .Lwend693
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
    je      .Lelse696
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif697
.Lelse696:
.Lendif697:
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
    je      .Lelse698
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif699
.Lelse698:
.Lendif699:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop692
.Lwend693:
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
    je      .Lelse700
    movq    $0, %rax
    jmp     .Lret_streq_ptr
    jmp     .Lendif701
.Lelse700:
.Lendif701:
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop702:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort704
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
    jmp     .Lscend705
.Lscshort704:
    movq    $0, %rax
.Lscend705:
    testq   %rax, %rax
    je      .Lwend703
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
    je      .Lelse706
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif707
.Lelse706:
.Lendif707:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop702
.Lwend703:
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
.Lwtop708:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort710
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
    jmp     .Lscend711
.Lscshort710:
    movq    $0, %rax
.Lscend711:
    testq   %rax, %rax
    je      .Lwend709
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
    je      .Lelse712
    movq    -48(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif713
.Lelse712:
.Lendif713:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop708
.Lwend709:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse714
    movq    -40(%rbp), %rax
    jmp     .Lret_string_label_num
    jmp     .Lendif715
.Lelse714:
.Lendif715:
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
    je      .Lelse716
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif717
.Lelse716:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse718
    leaq    aicstr_67(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif719
.Lelse718:
    leaq    aicstr_92(%rip), %rax
    jmp     .Lret_fopen_mode_value
.Lendif719:
.Lendif717:
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
    je      .Lelse720
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif721
.Lelse720:
.Lendif721:
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse722
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
    je      .Lelse724
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif725
.Lelse724:
.Lendif725:
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
    je      .Lelse726
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif727
.Lelse726:
.Lendif727:
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
    je      .Lelse728
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif729
.Lelse728:
.Lendif729:
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
    jmp     .Lendif723
.Lelse722:
.Lendif723:
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
    je      .Lelse730
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
    jmp     .Lendif731
.Lelse730:
.Lendif731:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse732
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
    jmp     .Lendif733
.Lelse732:
.Lendif733:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse734
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
    jmp     .Lendif735
.Lelse734:
.Lendif735:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse736
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
    jmp     .Lendif737
.Lelse736:
.Lendif737:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort740
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
    jmp     .Lscend741
.Lscshort740:
    movq    $0, %rax
.Lscend741:
    testq   %rax, %rax
    je      .Lelse738
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
    jmp     .Lendif739
.Lelse738:
.Lendif739:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse742
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort744
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
    jmp     .Lscend745
.Lscshort744:
    movq    $0, %rax
.Lscend745:
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse746
    movq    $1, %rax
    jmp     .Lternend747
.Lternelse746:
    movq    $0, %rax
.Lternend747:
    jmp     .Lret_static_type
    jmp     .Lendif743
.Lelse742:
.Lendif743:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort752
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
    jmp     .Lscend753
.Lscshort752:
    movq    $1, %rax
.Lscend753:
    testq   %rax, %rax
    jne      .Lscshort750
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort754
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort756
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
    jmp     .Lscend757
.Lscshort756:
    movq    $1, %rax
.Lscend757:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend755
.Lscshort754:
    movq    $1, %rax
.Lscend755:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend751
.Lscshort750:
    movq    $1, %rax
.Lscend751:
    testq   %rax, %rax
    je      .Lelse748
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif749
.Lelse748:
.Lendif749:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort760
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
    jmp     .Lscend761
.Lscshort760:
    movq    $0, %rax
.Lscend761:
    testq   %rax, %rax
    je      .Lelse758
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
    je      .Lelse762
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
    je      .Lelse764
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
    je      .Lelse766
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
    je      .Lelse768
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif769
.Lelse768:
.Lendif769:
    jmp     .Lendif767
.Lelse766:
.Lendif767:
    jmp     .Lendif765
.Lelse764:
.Lendif765:
    jmp     .Lendif763
.Lelse762:
.Lendif763:
    jmp     .Lendif759
.Lelse758:
.Lendif759:
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
    je      .Lelse770
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif771
.Lelse770:
.Lendif771:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort774
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
    jmp     .Lscend775
.Lscshort774:
    movq    $0, %rax
.Lscend775:
    testq   %rax, %rax
    je      .Lelse772
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
    je      .Lelse776
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif777
.Lelse776:
.Lendif777:
    jmp     .Lendif773
.Lelse772:
.Lendif773:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort780
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
    jmp     .Lscend781
.Lscshort780:
    movq    $0, %rax
.Lscend781:
    testq   %rax, %rax
    je      .Lelse778
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
    je      .Lelse782
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
    je      .Lelse784
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif785
.Lelse784:
.Lendif785:
    jmp     .Lendif783
.Lelse782:
.Lendif783:
    jmp     .Lendif779
.Lelse778:
.Lendif779:
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse786
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
    jmp     .Lendif787
.Lelse786:
.Lendif787:
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
    je      .Lelse788
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
    jmp     .Lendif789
.Lelse788:
.Lendif789:
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
    je      .Lelse790
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
    jne     .Lallocok792
    jmp     .Lruntimeerror
.Lallocok792:
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
    jmp     .Lendif791
.Lelse790:
.Lendif791:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse793
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
    jmp     .Lendif794
.Lelse793:
.Lendif794:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse795
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
    jne     .Lallocok797
    jmp     .Lruntimeerror
.Lallocok797:
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
    jmp     .Lendif796
.Lelse795:
.Lendif796:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
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
    jmp     .Lendif799
.Lelse798:
.Lendif799:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse800
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
    jne     .Lallocok802
    jmp     .Lruntimeerror
.Lallocok802:
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
    jmp     .Lendif801
.Lelse800:
.Lendif801:
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
    leaq    aicstr_151(%rip), %rax
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
    jmp     .Lendif927
.Lelse926:
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
.Lendif927:
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
    leaq    aicstr_160(%rip), %rax
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
    leaq    aicstr_151(%rip), %rax
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
    jmp     .Lendif949
.Lelse948:
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
    jmp     .Lendif974
.Lelse973:
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
    jmp     .Lendif986
.Lelse985:
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
.Lendif986:
    jmp     .Lendif984
.Lelse983:
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse987
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
    jmp     .Lendif988
.Lelse987:
    movq    -64(%rbp), %rax
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
.Lendif988:
.Lendif984:
    movq    -64(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    leaq    aicstr_212(%rip), %rax
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
    leaq    aicstr_214(%rip), %rax
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
    leaq    aicstr_225(%rip), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_265(%rip), %rax
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
    leaq    aicstr_266(%rip), %rax
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
    jne     .Lopenok1225
    jmp     .Lruntimeerror
.Lopenok1225:
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
    jne     .Lallocok1226
    jmp     .Lruntimeerror
.Lallocok1226:
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

    leaq    aicstr_267(%rip), %rax
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
    je      .Lelse1227
    jmp     .Lendif1228
.Lelse1227:
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
    je      .Lelse1229
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
    jmp     .Lendif1230
.Lelse1229:
.Lendif1230:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1231
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
    jmp     .Lendif1232
.Lelse1231:
.Lendif1232:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1233
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
    jmp     .Lendif1234
.Lelse1233:
.Lendif1234:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1235
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
    jmp     .Lendif1236
.Lelse1235:
.Lendif1236:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1239
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
    jmp     .Lscend1240
.Lscshort1239:
    movq    $0, %rax
.Lscend1240:
    testq   %rax, %rax
    je      .Lelse1237
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
    jmp     .Lendif1238
.Lelse1237:
.Lendif1238:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1241
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
    je      .Lelse1243
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
    jmp     .Lendif1244
.Lelse1243:
.Lendif1244:
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
    je      .Lscshort1245
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
    jmp     .Lscend1246
.Lscshort1245:
    movq    $0, %rax
.Lscend1246:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse1247
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
    jmp     .Lternend1248
.Lternelse1247:
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
.Lternend1248:
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
.Lwtop1249:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1250
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
    jmp     .Lwtop1249
.Lwend1250:
    jmp     .Lendif1242
.Lelse1241:
.Lendif1242:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1251
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
    jmp     .Lendif1252
.Lelse1251:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1253
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
    je      .Lelse1255
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
    jmp     .Lendif1256
.Lelse1255:
.Lendif1256:
    jmp     .Lendif1254
.Lelse1253:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1257
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
.Lwtop1259:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1260
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
    jmp     .Lwtop1259
.Lwend1260:
    jmp     .Lendif1258
.Lelse1257:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1261
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
.Lwtop1263:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1264
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
    jmp     .Lwtop1263
.Lwend1264:
    jmp     .Lendif1262
.Lelse1261:
.Lendif1262:
.Lendif1258:
.Lendif1254:
.Lendif1252:
.Lendif1228:
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
.Lwtop1265:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1266
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
.Lwtop1267:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1269
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
    jmp     .Lscend1270
.Lscshort1269:
    movq    $0, %rax
.Lscend1270:
    testq   %rax, %rax
    je      .Lwend1268
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
    je      .Lelse1271
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
    je      .Lscshort1275
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
    je      .Lscshort1277
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
    je      .Lscshort1279
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
    je      .Lscshort1281
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
    je      .Lscshort1283
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
    je      .Lscshort1285
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
    je      .Lscshort1287
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
    jmp     .Lscend1288
.Lscshort1287:
    movq    $0, %rax
.Lscend1288:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1286
.Lscshort1285:
    movq    $0, %rax
.Lscend1286:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1284
.Lscshort1283:
    movq    $0, %rax
.Lscend1284:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1282
.Lscshort1281:
    movq    $0, %rax
.Lscend1282:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1280
.Lscshort1279:
    movq    $0, %rax
.Lscend1280:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1278
.Lscshort1277:
    movq    $0, %rax
.Lscend1278:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1276
.Lscshort1275:
    movq    $0, %rax
.Lscend1276:
    testq   %rax, %rax
    je      .Lelse1273
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lendif1274
.Lelse1273:
.Lendif1274:
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
    je      .Lscshort1291
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
    je      .Lscshort1293
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
    je      .Lscshort1295
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
    je      .Lscshort1297
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
    je      .Lscshort1299
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
    jmp     .Lscend1300
.Lscshort1299:
    movq    $0, %rax
.Lscend1300:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1298
.Lscshort1297:
    movq    $0, %rax
.Lscend1298:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1296
.Lscshort1295:
    movq    $0, %rax
.Lscend1296:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1294
.Lscshort1293:
    movq    $0, %rax
.Lscend1294:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend1292
.Lscshort1291:
    movq    $0, %rax
.Lscend1292:
    testq   %rax, %rax
    je      .Lelse1289
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lendif1290
.Lelse1289:
.Lendif1290:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1301
    movq    -168(%rbp), %rax
    movq    %rax, -184(%rbp)
.Lwtop1303:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1305
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
    jmp     .Lscend1306
.Lscshort1305:
    movq    $0, %rax
.Lscend1306:
    testq   %rax, %rax
    je      .Lwend1304
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
    jmp     .Lwtop1303
.Lwend1304:
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1307
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
.Lwtop1309:
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1311
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
    jmp     .Lscend1312
.Lscshort1311:
    movq    $0, %rax
.Lscend1312:
    testq   %rax, %rax
    je      .Lwend1310
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -176(%rbp)
    jmp     .Lwtop1309
.Lwend1310:
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1313
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
    jmp     .Lendif1314
.Lelse1313:
.Lendif1314:
    jmp     .Lendif1308
.Lelse1307:
.Lendif1308:
    jmp     .Lendif1302
.Lelse1301:
.Lendif1302:
    jmp     .Lendif1272
.Lelse1271:
.Lendif1272:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -144(%rbp)
    jmp     .Lwtop1267
.Lwend1268:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1315
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
    testq   %rax, %rax
    jne     .Lopenok1317
    jmp     .Lruntimeerror
.Lopenok1317:
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
    jne     .Lallocok1318
    jmp     .Lruntimeerror
.Lallocok1318:
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
    jne     .Lallocok1319
    jmp     .Lruntimeerror
.Lallocok1319:
    movq    %rax, -128(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop1320:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1321
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
    jmp     .Lmaptop1320
.Lmapend1321:
    movq    $0, -96(%rbp)
.Lmaptop1322:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1323
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
    jmp     .Lmaptop1322
.Lmapend1323:
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
.Lmaptop1324:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend1325
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
    jmp     .Lmaptop1324
.Lmapend1325:
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
    jmp     .Lendif1316
.Lelse1315:
.Lendif1316:
    jmp     .Lwtop1265
.Lwend1266:
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
