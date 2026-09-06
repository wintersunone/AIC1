    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $864, %rsp
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
    movq    $1, %rax
    movq    %rax, %rdi
    call    aic_arg
    movq    %rax, -448(%rbp)
    movq    -448(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -440(%rbp)
    movq    -440(%rbp), %rax
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
    movq    %rax, -448(%rbp)
    jmp     .Lendif2
.Lelse1:
.Lendif2:
    movq    $2, %rax
    movq    %rax, %rdi
    call    aic_arg
    movq    %rax, -592(%rbp)
    movq    -592(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -584(%rbp)
    movq    -584(%rbp), %rax
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
    movq    %rax, -592(%rbp)
    jmp     .Lendif4
.Lelse3:
.Lendif4:
    movq    -448(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok5
    jmp     .Lruntimeerror
.Lopenok5:
    movq    %rax, -392(%rbp)
    movq    -392(%rbp), %rax
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
    movq    %rax, -544(%rbp)
    movq    -392(%rbp), %rax
    movq    %rax, %r12
    movq    -544(%rbp), %rax
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
    movq    %rax, -792(%rbp)
    movq    -544(%rbp), %rax
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
    movq    %rax, -840(%rbp)
    movq    $0, %rax
    movq    %rax, -416(%rbp)
    movq    $0, %rax
    movq    %rax, -832(%rbp)
    movq    $0, %rax
    movq    %rax, -432(%rbp)
    movq    $0, %rax
    movq    %rax, -456(%rbp)
    movq    $0, %rax
    movq    %rax, -808(%rbp)
    movq    $0, %rax
    movq    %rax, -8(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop8:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend9
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -416(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -48(%rbp)
    movq    -432(%rbp), %rax
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
    movq    %rax, -432(%rbp)
    jmp     .Lendif13
.Lelse12:
.Lendif13:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
    jmp     .Lendif11
.Lelse10:
    movq    -456(%rbp), %rax
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    -808(%rbp), %rax
    pushq   %rax
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -808(%rbp), %rax
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
    movq    %rax, -832(%rbp)
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -832(%rbp)
    movq    $0, %rax
    movq    %rax, -456(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
    jmp     .Lendif17
.Lelse16:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
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
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_write_token
    movq    %rax, -832(%rbp)
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -832(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
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
    movq    %rax, -456(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -808(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
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
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort30
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -416(%rbp), %rax
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
    movq    %rax, -432(%rbp)
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
    jmp     .Lendif27
.Lelse26:
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_is_space
    testq   %rax, %rax
    je      .Lelse32
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
    jmp     .Lendif33
.Lelse32:
    movq    -416(%rbp), %rax
    movq    %rax, -8(%rbp)
.Lwtop34:
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    -544(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort36
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -416(%rbp), %rax
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
    movq    -416(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -416(%rbp)
    jmp     .Lwtop34
.Lwend35:
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -416(%rbp), %rax
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
    movq    %rax, -832(%rbp)
    movq    -832(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -832(%rbp)
.Lendif33:
.Lendif27:
.Lendif25:
.Lendif19:
.Lendif15:
.Lendif11:
    jmp     .Lwtop8
.Lwend9:
    movq    -392(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -832(%rbp), %rax
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
    movq    %rax, -800(%rbp)
    movq    -832(%rbp), %rax
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
    movq    %rax, -512(%rbp)
    movq    $0, %rax
    movq    %rax, -776(%rbp)
    movq    $0, %rax
    movq    %rax, -248(%rbp)
    movq    $0, %rax
    movq    %rax, -616(%rbp)
    movq    $0, %rax
    movq    %rax, -472(%rbp)
    movq    $0, %rax
    movq    %rax, -816(%rbp)
    movq    $0, %rax
    movq    %rax, -464(%rbp)
.Lwtop40:
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend41
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -816(%rbp)
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse42
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -776(%rbp)
    jmp     .Lendif43
.Lelse42:
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse44
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse46
    movq    -248(%rbp), %rax
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
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
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    movq    %rax, -248(%rbp)
    jmp     .Lendif49
.Lelse48:
.Lendif49:
    jmp     .Lendif47
.Lelse46:
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -776(%rbp)
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    -776(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -472(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -472(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    -472(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -616(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -616(%rbp)
.Lendif47:
    jmp     .Lendif45
.Lelse44:
.Lendif45:
.Lendif43:
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -464(%rbp)
    jmp     .Lwtop40
.Lwend41:
    movq    -248(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort52
    movq    -776(%rbp), %rax
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
    movq    -800(%rbp), %rax
    pushq   %rax
    movq    -776(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -472(%rbp)
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -472(%rbp), %rax
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
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    movq    %rax, -248(%rbp)
    jmp     .Lendif51
.Lelse50:
.Lendif51:
    movq    -832(%rbp), %rax
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
    jne     .Lallocok54
    jmp     .Lruntimeerror
.Lallocok54:
    movq    %rax, -384(%rbp)
    movq    -832(%rbp), %rax
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
    jne     .Lallocok55
    jmp     .Lruntimeerror
.Lallocok55:
    movq    %rax, -504(%rbp)
    movq    $0, %rax
    movq    %rax, -376(%rbp)
    movq    $0, %rax
    movq    %rax, -480(%rbp)
    movq    $0, %rax
    movq    %rax, -368(%rbp)
    movq    $0, %rax
    movq    %rax, -552(%rbp)
    movq    $0, %rax
    movq    %rax, -624(%rbp)
    movq    $0, %rax
    movq    %rax, -464(%rbp)
.Lwtop56:
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend57
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -816(%rbp)
    movq    -816(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse58
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -368(%rbp)
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -552(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -464(%rbp), %rax
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
    je      .Lelse60
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
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
    je      .Lelse62
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -624(%rbp)
    jmp     .Lendif63
.Lelse62:
    movq    -552(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -624(%rbp)
.Lendif63:
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -552(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -624(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -368(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -376(%rbp)
    jmp     .Lendif61
.Lelse60:
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
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
    movq    -368(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -480(%rbp)
.Lendif61:
    movq    -368(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -464(%rbp)
    jmp     .Lendif59
.Lelse58:
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
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
    movq    -464(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -480(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -480(%rbp)
    movq    -464(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -464(%rbp)
.Lendif59:
    jmp     .Lwtop56
.Lwend57:
    movq    -376(%rbp), %rax
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
    movq    %rax, -304(%rbp)
    movq    -376(%rbp), %rax
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
    movq    %rax, -312(%rbp)
    movq    -376(%rbp), %rax
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
    movq    %rax, -288(%rbp)
    movq    -376(%rbp), %rax
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
    jne     .Lallocok67
    jmp     .Lruntimeerror
.Lallocok67:
    movq    %rax, -296(%rbp)
    movq    -376(%rbp), %rax
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
    jne     .Lallocok68
    jmp     .Lruntimeerror
.Lallocok68:
    movq    %rax, -352(%rbp)
    movq    -376(%rbp), %rax
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
    jne     .Lallocok69
    jmp     .Lruntimeerror
.Lallocok69:
    movq    %rax, -344(%rbp)
    movq    $0, %rax
    movq    %rax, -280(%rbp)
    movq    $0, %rax
    movq    %rax, -688(%rbp)
    movq    $0, %rax
    movq    %rax, -640(%rbp)
    movq    $0, %rax
    movq    %rax, -608(%rbp)
    movq    $0, %rax
    movq    %rax, -672(%rbp)
    movq    $0, %rax
    movq    %rax, -712(%rbp)
    movq    $0, %rax
    movq    %rax, -680(%rbp)
    movq    $0, %rax
    movq    %rax, -784(%rbp)
    movq    $0, %rax
    movq    %rax, -664(%rbp)
    movq    $0, %rax
    movq    %rax, -232(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -256(%rbp)
    movq    $0, %rax
    movq    %rax, -720(%rbp)
.Lwtop70:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend71
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -688(%rbp)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -256(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -688(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -640(%rbp)
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -784(%rbp)
    movq    -784(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok72
    jmp     .Lruntimeerror
.Lallocok72:
    movq    %rax, -632(%rbp)
    movq    -784(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok73
    jmp     .Lruntimeerror
.Lallocok73:
    movq    %rax, -216(%rbp)
    movq    $0, %rax
    movq    %rax, -664(%rbp)
    movq    $0, %rax
    movq    %rax, -232(%rbp)
    movq    -688(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -608(%rbp)
.Lwtop74:
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    -640(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend75
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
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
    je      .Lelse76
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -672(%rbp)
    movq    $1, %rax
    movq    %rax, -712(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -608(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -680(%rbp)
    jmp     .Lendif77
.Lelse76:
    movq    -608(%rbp), %rax
    movq    %rax, -672(%rbp)
    movq    $0, %rax
    movq    %rax, -712(%rbp)
    movq    -608(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -680(%rbp)
.Lendif77:
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -672(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
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
    movq    -712(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -664(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -664(%rbp)
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -672(%rbp), %rax
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -672(%rbp), %rax
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
    movq    %rax, -232(%rbp)
    movq    -680(%rbp), %rax
    movq    %rax, -608(%rbp)
    jmp     .Lwtop74
.Lwend75:
    movq    -640(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    movq    %rax, -16(%rbp)
.Lwtop78:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -256(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend79
    movq    -840(%rbp), %rax
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
    je      .Lscshort82
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -256(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort84
    movq    -840(%rbp), %rax
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
    je      .Lscshort86
    movq    -840(%rbp), %rax
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
    je      .Lscshort88
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
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
    jmp     .Lscend89
.Lscshort88:
    movq    $0, %rax
.Lscend89:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend87
.Lscshort86:
    movq    $0, %rax
.Lscend87:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend85
.Lscshort84:
    movq    $0, %rax
.Lscend85:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend83
.Lscshort82:
    movq    $0, %rax
.Lscend83:
    testq   %rax, %rax
    je      .Lelse80
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
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
    movq    -840(%rbp), %rax
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
    movq    %rax, -232(%rbp)
    jmp     .Lendif81
.Lelse80:
.Lendif81:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop78
.Lwend79:
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_sort_decls
    movq    -232(%rbp), %rax
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
    jne     .Lallocok90
    jmp     .Lruntimeerror
.Lallocok90:
    movq    %rax, -824(%rbp)
    movq    $0, %rax
    movq    %rax, -720(%rbp)
.Lwtop91:
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend92
    movq    -824(%rbp), %rax
    pushq   %rax
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    pushq   %rax
    movq    -720(%rbp), %rax
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
    movq    -720(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -720(%rbp)
    jmp     .Lwtop91
.Lwend92:
    movq    -304(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -632(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -664(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -352(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -824(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -560(%rbp)
    movq    -344(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -560(%rbp), %rax
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
    je      .Lternelse93
    movq    $1, %rax
    jmp     .Lternend94
.Lternelse93:
    movq    $0, %rax
.Lternend94:
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -280(%rbp)
    jmp     .Lwtop70
.Lwend71:
    movq    -832(%rbp), %rax
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
    jne     .Lallocok95
    jmp     .Lruntimeerror
.Lallocok95:
    movq    %rax, -488(%rbp)
    movq    $0, %rax
    movq    %rax, -496(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
    movq    $0, %rax
    movq    %rax, -520(%rbp)
.Lwtop96:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend97
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -536(%rbp)
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
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
    movq    %rax, -520(%rbp)
    movq    -536(%rbp), %rax
    movq    %rax, -16(%rbp)
.Lwtop98:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -520(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend99
    movq    -840(%rbp), %rax
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
    je      .Lscshort102
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -832(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort104
    movq    -840(%rbp), %rax
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
    je      .Lscshort106
    movq    -840(%rbp), %rax
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
    je      .Lscshort108
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
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
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend105
.Lscshort104:
    movq    $0, %rax
.Lscend105:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend103
.Lscshort102:
    movq    $0, %rax
.Lscend103:
    testq   %rax, %rax
    je      .Lelse100
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
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
    movq    -840(%rbp), %rax
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
    movq    %rax, -496(%rbp)
    jmp     .Lendif101
.Lelse100:
.Lendif101:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop98
.Lwend99:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -528(%rbp)
    jmp     .Lwtop96
.Lwend97:
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_sort_decls
    leaq    aicstr_5(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -376(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_6(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -480(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    movq    %rax, -280(%rbp)
.Lwtop110:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend111
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -552(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
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
    je      .Lelse112
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -552(%rbp), %rax
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
    movq    %rax, -360(%rbp)
    jmp     .Lendif113
.Lelse112:
    leaq    aicstr_7(%rip), %rax
    movq    %rax, -360(%rbp)
.Lendif113:
    leaq    aicstr_8(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -280(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -360(%rbp), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_10(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -280(%rbp)
    jmp     .Lwtop110
.Lwend111:
    leaq    aicstr_11(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -496(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $26, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok114
    jmp     .Lruntimeerror
.Lallocok114:
    movq    %rax, -400(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
    movq    $0, %rax
    movq    %rax, -536(%rbp)
    movq    $0, %rax
    movq    %rax, -520(%rbp)
    movq    $0, %rax
    movq    %rax, -208(%rbp)
    movq    $0, %rax
    movq    %rax, -424(%rbp)
.Lwtop115:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend116
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -536(%rbp)
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
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
    movq    %rax, -520(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -520(%rbp), %rax
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
    movq    %rax, -424(%rbp)
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    -424(%rbp), %rax
    pushq   %rax
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    -424(%rbp), %rax
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
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -528(%rbp)
    jmp     .Lwtop115
.Lwend116:
    leaq    aicstr_12(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $22, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
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
    movq    -400(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $26, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok117
    jmp     .Lruntimeerror
.Lallocok117:
    movq    %rax, -408(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
.Lwtop118:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend119
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -536(%rbp)
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
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
    movq    %rax, -520(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -520(%rbp), %rax
    pushq   %rax
    movq    -408(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_recurse_stmt
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -528(%rbp)
    jmp     .Lwtop118
.Lwend119:
    movq    $0, %rax
    movq    %rax, -280(%rbp)
.Lwtop120:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend121
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -696(%rbp)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -264(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -696(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -648(%rbp)
    movq    -648(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
.Lwtop122:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -264(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend123
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -56(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -408(%rbp), %rax
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
    jmp     .Lwtop122
.Lwend123:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -280(%rbp)
    jmp     .Lwtop120
.Lwend121:
    leaq    aicstr_37(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_38(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_41(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_42(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
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
    movq    -408(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -832(%rbp), %rax
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
    jne     .Lallocok124
    jmp     .Lruntimeerror
.Lallocok124:
    movq    %rax, -600(%rbp)
    movq    $0, %rax
    movq    %rax, -848(%rbp)
    movq    $0, %rax
    movq    %rax, -856(%rbp)
    movq    $0, %rax
    movq    %rax, -864(%rbp)
    movq    $0, %rax
    movq    %rax, -528(%rbp)
.Lwtop125:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend126
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -536(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -536(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
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
    movq    %rax, -568(%rbp)
    movq    $0, %rax
    movq    %rax, -728(%rbp)
.Lwtop127:
    movq    -728(%rbp), %rax
    pushq   %rax
    movq    -568(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend128
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -728(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -760(%rbp)
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -728(%rbp), %rax
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
    movq    %rax, -744(%rbp)
    movq    -848(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -848(%rbp)
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    pushq   %rax
    movq    -760(%rbp), %rax
    pushq   %rax
    movq    -744(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse129
    movq    -856(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -856(%rbp)
    jmp     .Lendif130
.Lelse129:
    movq    -864(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -864(%rbp)
    leaq    aicstr_52(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -760(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_53(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -744(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif130:
    movq    -728(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -728(%rbp)
    jmp     .Lwtop127
.Lwend128:
    movq    -528(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -528(%rbp)
    jmp     .Lwtop125
.Lwend126:
    leaq    aicstr_54(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_55(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -848(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_56(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -856(%rbp), %rax
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
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    movq    %rax, -280(%rbp)
    movq    $0, %rax
    movq    %rax, -328(%rbp)
    movq    $0, %rax
    movq    %rax, -320(%rbp)
    movq    $0, %rax
    movq    %rax, -336(%rbp)
.Lwtop131:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend132
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -704(%rbp)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -272(%rbp)
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -704(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -656(%rbp)
    movq    -656(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -224(%rbp)
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -240(%rbp)
.Lwtop133:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend134
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -64(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -600(%rbp), %rax
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
    movq    %rax, -576(%rbp)
    movq    $0, %rax
    movq    %rax, -736(%rbp)
.Lwtop135:
    movq    -736(%rbp), %rax
    pushq   %rax
    movq    -576(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend136
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -736(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -768(%rbp)
    movq    -600(%rbp), %rax
    pushq   %rax
    movq    -736(%rbp), %rax
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
    movq    %rax, -752(%rbp)
    movq    -328(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -328(%rbp)
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -768(%rbp), %rax
    pushq   %rax
    movq    -752(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_contains
    testq   %rax, %rax
    je      .Lelse137
    movq    -320(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -320(%rbp)
    jmp     .Lendif138
.Lelse137:
    movq    -336(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -336(%rbp)
    leaq    aicstr_58(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -280(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_59(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -768(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_53(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -752(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif138:
    movq    -736(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -736(%rbp)
    jmp     .Lwtop135
.Lwend136:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop133
.Lwend134:
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -280(%rbp)
    jmp     .Lwtop131
.Lwend132:
    leaq    aicstr_60(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_61(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -328(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_56(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -320(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_57(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -336(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -496(%rbp), %rax
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
    jne     .Lallocok139
    jmp     .Lruntimeerror
.Lallocok139:
    movq    %rax, -128(%rbp)
    leaq    aicstr_62(%rip), %rax
    movq    %rax, %rdi
    leaq    aicstr_63(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok140
    jmp     .Lruntimeerror
.Lopenok140:
    movq    %rax, -80(%rbp)
    movq    -832(%rbp), %rax
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
    jne     .Lallocok141
    jmp     .Lruntimeerror
.Lallocok141:
    movq    %rax, -184(%rbp)
    movq    $120, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok142
    jmp     .Lruntimeerror
.Lallocok142:
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
    movq    -488(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    -384(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    -312(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    leaq    aicstr_64(%rip), %rax
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
    movq    -344(%rbp), %rax
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
    movq    $0, %rax
    movq    %rax, -136(%rbp)
.Lwtop143:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend144
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
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
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    jmp     .Lwtop143
.Lwend144:
    movq    $0, %rax
    movq    %rax, -120(%rbp)
.Lwtop145:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend146
    movq    -352(%rbp), %rax
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
    movq    -288(%rbp), %rax
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
    movq    -296(%rbp), %rax
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
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -176(%rbp)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -512(%rbp), %rax
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
.Lwtop147:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend148
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
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
    jmp     .Lwtop147
.Lwend148:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop145
.Lwend146:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    -488(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    -496(%rbp), %rax
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
    movq    -496(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_frame_size_for
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_main_prologue
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -496(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_zero_slots
    movq    $0, %rax
    movq    %rax, -136(%rbp)
.Lwtop149:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -480(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend150
    movq    -504(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
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
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -136(%rbp)
    jmp     .Lwtop149
.Lwend150:
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_main_epilogue
    movq    -376(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse151
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif152
.Lelse151:
.Lendif152:
    movq    $0, %rax
    movq    %rax, -120(%rbp)
.Lwtop153:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend154
    movq    -288(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -104(%rbp)
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -352(%rbp), %rax
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
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -384(%rbp), %rax
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
    je      .Lelse155
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif156
.Lelse155:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_arg_copies
.Lendif156:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse157
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif158
.Lelse157:
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
.Lendif158:
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    movq    %rax, -176(%rbp)
    movq    -384(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -512(%rbp), %rax
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
.Lwtop159:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend160
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -88(%rbp)
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -512(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
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
    jmp     .Lwtop159
.Lwend160:
    movq    -840(%rbp), %rax
    pushq   %rax
    movq    -792(%rbp), %rax
    pushq   %rax
    movq    -384(%rbp), %rax
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
    movq    -376(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse161
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif162
.Lelse161:
.Lendif162:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
    jmp     .Lwtop153
.Lwend154:
    movq    -80(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    -592(%rbp), %rax
    movq    %rax, %rdi
    leaq    aicstr_63(%rip), %rsi
    call    aic_fopen
    testq   %rax, %rax
    jne     .Lopenok163
    jmp     .Lruntimeerror
.Lopenok163:
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
    je      .Lelse164
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_divzero
    jmp     .Lendif165
.Lelse164:
.Lendif165:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort168
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend169
.Lscshort168:
    movq    $0, %rax
.Lscend169:
    testq   %rax, %rax
    je      .Lelse166
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif167
.Lelse166:
.Lendif167:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse170
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_rodata_runtime
    jmp     .Lendif171
.Lelse170:
.Lendif171:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lscshort174
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend175
.Lscshort174:
    movq    $0, %rax
.Lscend175:
    testq   %rax, %rax
    je      .Lelse172
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif173
.Lelse172:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_66(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif173:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_67(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    leaq    aicstr_62(%rip), %rax
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
    je      .Lelse176
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_divzero_handler
    jmp     .Lendif177
.Lelse176:
.Lendif177:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    je      .Lelse178
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_runtime_handler
    jmp     .Lendif179
.Lelse178:
.Lendif179:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    jne      .Lscshort182
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend183
.Lscshort182:
    movq    $1, %rax
.Lscend183:
    testq   %rax, %rax
    je      .Lelse180
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif181
.Lelse180:
    movq    -152(%rbp), %rax
    movq    %rax, %r12
    leaq    aicstr_66(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif181:
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_emit_note_section
    movq    -152(%rbp), %rax
    movq    %rax, %rdi
    call    aic_fclose
    movq    $0, %rax
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
    jne      .Lscshort184
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort186
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort188
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
    jmp     .Lscend189
.Lscshort188:
    movq    $1, %rax
.Lscend189:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend187
.Lscshort186:
    movq    $1, %rax
.Lscend187:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend185
.Lscshort184:
    movq    $1, %rax
.Lscend185:
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
    jne      .Lscshort190
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort192
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort194
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
    jmp     .Lscend195
.Lscshort194:
    movq    $1, %rax
.Lscend195:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend193
.Lscshort192:
    movq    $1, %rax
.Lscend193:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend191
.Lscshort190:
    movq    $1, %rax
.Lscend191:
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

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
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
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
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
    pushq   %rax
    movq    -40(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
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
    je      .Lscshort196
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort198
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
    je      .Lscshort200
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
    jmp     .Lscend201
.Lscshort200:
    movq    $0, %rax
.Lscend201:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend199
.Lscshort198:
    movq    $0, %rax
.Lscend199:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend197
.Lscshort196:
    movq    $0, %rax
.Lscend197:
    jmp     .Lret_is_section
    movq    $0, %rax
.Lret_is_section:
    leave
    ret

aicfn_slice_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -24(%rbp), %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok202
    jmp     .Lruntimeerror
.Lallocok202:
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop203:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend204
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
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
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop203
.Lwend204:
    movq    -32(%rbp), %rax
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
    je      .Lelse205
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif206
.Lelse205:
.Lendif206:
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop207:
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort209
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
    jmp     .Lscend210
.Lscshort209:
    movq    $0, %rax
.Lscend210:
    testq   %rax, %rax
    je      .Lwend208
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
    je      .Lelse211
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif212
.Lelse211:
.Lendif212:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop207
.Lwend208:
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
.Lwtop213:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort215
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
    jmp     .Lscend216
.Lscshort215:
    movq    $0, %rax
.Lscend216:
    testq   %rax, %rax
    je      .Lwend214
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
    je      .Lelse217
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif218
.Lelse217:
.Lendif218:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop213
.Lwend214:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse219
    jmp     .Lendif220
.Lelse219:
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
.Lendif220:
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
    je      .Lternelse221
    movq    $1, %rax
    jmp     .Lternend222
.Lternelse221:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse223
    movq    $2, %rax
    jmp     .Lternend224
.Lternelse223:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $63, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse225
    movq    $3, %rax
    jmp     .Lternend226
.Lternelse225:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $87, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse227
    movq    $4, %rax
    jmp     .Lternend228
.Lternelse227:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $68, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse229
    movq    $5, %rax
    jmp     .Lternend230
.Lternelse229:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse231
    movq    $6, %rax
    jmp     .Lternend232
.Lternelse231:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse233
    movq    $7, %rax
    jmp     .Lternend234
.Lternelse233:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $72, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse235
    movq    $13, %rax
    jmp     .Lternend236
.Lternelse235:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $76, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse237
    movq    $14, %rax
    jmp     .Lternend238
.Lternelse237:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $78, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse239
    movq    $15, %rax
    jmp     .Lternend240
.Lternelse239:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $86, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse241
    movq    $16, %rax
    jmp     .Lternend242
.Lternelse241:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $79, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse243
    movq    $17, %rax
    jmp     .Lternend244
.Lternelse243:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $90, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse245
    movq    $18, %rax
    jmp     .Lternend246
.Lternelse245:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $82, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse247
    movq    $19, %rax
    jmp     .Lternend248
.Lternelse247:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $75, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse249
    movq    $20, %rax
    jmp     .Lternend250
.Lternelse249:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $88, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse251
    movq    $21, %rax
    jmp     .Lternend252
.Lternelse251:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $65, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse253
    movq    $23, %rax
    jmp     .Lternend254
.Lternelse253:
    movq    $-2, %rax
.Lternend254:
.Lternend252:
.Lternend250:
.Lternend248:
.Lternend246:
.Lternend244:
.Lternend242:
.Lternend240:
.Lternend238:
.Lternend236:
.Lternend234:
.Lternend232:
.Lternend230:
.Lternend228:
.Lternend226:
.Lternend224:
.Lternend222:
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
    je      .Lscshort257
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
    jmp     .Lscend258
.Lscshort257:
    movq    $0, %rax
.Lscend258:
    testq   %rax, %rax
    je      .Lternelse255
    movq    $8, %rax
    jmp     .Lternend256
.Lternelse255:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort261
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
    jmp     .Lscend262
.Lscshort261:
    movq    $0, %rax
.Lscend262:
    testq   %rax, %rax
    je      .Lternelse259
    movq    $9, %rax
    jmp     .Lternend260
.Lternelse259:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $194, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort265
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
    jmp     .Lscend266
.Lscshort265:
    movq    $0, %rax
.Lscend266:
    testq   %rax, %rax
    je      .Lternelse263
    movq    $22, %rax
    jmp     .Lternend264
.Lternelse263:
    movq    $-2, %rax
.Lternend264:
.Lternend260:
.Lternend256:
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
    je      .Lscshort269
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort271
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
    jmp     .Lscend272
.Lscshort271:
    movq    $0, %rax
.Lscend272:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend270
.Lscshort269:
    movq    $0, %rax
.Lscend270:
    testq   %rax, %rax
    je      .Lternelse267
    movq    $10, %rax
    jmp     .Lternend268
.Lternelse267:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort275
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort277
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
    jmp     .Lscend278
.Lscshort277:
    movq    $0, %rax
.Lscend278:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend276
.Lscshort275:
    movq    $0, %rax
.Lscend276:
    testq   %rax, %rax
    je      .Lternelse273
    movq    $11, %rax
    jmp     .Lternend274
.Lternelse273:
    movq    $-2, %rax
.Lternend274:
.Lternend268:
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
    je      .Lscshort281
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort283
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort285
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
    jmp     .Lscend286
.Lscshort285:
    movq    $0, %rax
.Lscend286:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend284
.Lscshort283:
    movq    $0, %rax
.Lscend284:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend282
.Lscshort281:
    movq    $0, %rax
.Lscend282:
    testq   %rax, %rax
    je      .Lternelse279
    movq    $12, %rax
    jmp     .Lternend280
.Lternelse279:
    movq    $-2, %rax
.Lternend280:
    jmp     .Lret_classify_op4
    movq    $0, %rax
.Lret_classify_op4:
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
    je      .Lelse287
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif288
.Lelse287:
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
    je      .Lelse289
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif290
.Lelse289:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse291
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
    jmp     .Lendif292
.Lelse291:
.Lendif292:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse293
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
    jmp     .Lendif294
.Lelse293:
.Lendif294:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse295
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
    jmp     .Lendif296
.Lelse295:
.Lendif296:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse297
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
    jmp     .Lendif298
.Lelse297:
.Lendif298:
.Lendif290:
.Lendif288:
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
    je      .Lternelse299
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lternend300
.Lternelse299:
    movq    -24(%rbp), %rax
.Lternend300:
    jmp     .Lret_next_child_end
    movq    $0, %rax
.Lret_next_child_end:
    leave
    ret

aicfn_recurse_stmt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $96, %rsp
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
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
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
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse301
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
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
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
.Lwtop303:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend304
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
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
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
    movq    %rax, -96(%rbp)
    jmp     .Lwtop303
.Lwend304:
    jmp     .Lendif302
.Lelse301:
.Lendif302:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse305
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
.Lwtop307:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend308
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
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
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
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lwtop307
.Lwend308:
    jmp     .Lendif306
.Lelse305:
.Lendif306:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse309
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
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
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse311
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
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
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
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse313
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
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
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
    jmp     .Lendif314
.Lelse313:
.Lendif314:
    jmp     .Lendif312
.Lelse311:
.Lendif312:
    jmp     .Lendif310
.Lelse309:
.Lendif310:
    movq    -80(%rbp), %rax
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
    je      .Lternelse315
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
    jmp     .Lternend316
.Lternelse315:
    movq    $0, %rax
.Lternend316:
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
    je      .Lscshort319
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
    jmp     .Lscend320
.Lscshort319:
    movq    $0, %rax
.Lscend320:
    testq   %rax, %rax
    jne      .Lscshort317
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort321
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort323
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort325
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
    jmp     .Lscend326
.Lscshort325:
    movq    $0, %rax
.Lscend326:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend324
.Lscshort323:
    movq    $0, %rax
.Lscend324:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend322
.Lscshort321:
    movq    $0, %rax
.Lscend322:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend318
.Lscshort317:
    movq    $1, %rax
.Lscend318:
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
.Lwtop327:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort329
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
    jmp     .Lscend330
.Lscshort329:
    movq    $0, %rax
.Lscend330:
    testq   %rax, %rax
    je      .Lwend328
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
    je      .Lelse331
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif332
.Lelse331:
.Lendif332:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop327
.Lwend328:
    movq    -48(%rbp), %rax
    jmp     .Lret_decl_contains
    movq    $0, %rax
.Lret_decl_contains:
    leave
    ret

aicfn_collect_reads:
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
    je      .Lelse333
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
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
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort335
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
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort337
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
    movq    %rax, -88(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    movq    $1, %rax
    movq    %rax, -72(%rbp)
.Lwtop339:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend340
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
    movq    %rax, -56(%rbp)
    movq    -88(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort343
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend344
.Lscshort343:
    movq    $0, %rax
.Lscend344:
    testq   %rax, %rax
    je      .Lelse341
    jmp     .Lendif342
.Lelse341:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
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
.Lendif342:
    movq    $0, %rax
    movq    %rax, -72(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lwtop339
.Lwend340:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif334
.Lelse333:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse345
    movq    -24(%rbp), %rax
    pushq   %rax
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
    pushq   %rax
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
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_is_numeric_atom
    testq   %rax, %rax
    je      .Lelse347
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif348
.Lelse347:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
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
.Lendif348:
    jmp     .Lendif346
.Lelse345:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
.Lendif346:
.Lendif334:
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
    je      .Lelse349
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif350
.Lelse349:
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
    je      .Lelse351
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif352
.Lelse351:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse353
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
    jmp     .Lendif354
.Lelse353:
.Lendif354:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse355
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
    jmp     .Lendif356
.Lelse355:
.Lendif356:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse357
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
    jmp     .Lendif358
.Lelse357:
.Lendif358:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse359
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
    jmp     .Lendif360
.Lelse359:
.Lendif360:
.Lendif352:
.Lendif350:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse361
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
.Lwtop363:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort365
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
    jmp     .Lscend366
.Lscshort365:
    movq    $0, %rax
.Lscend366:
    testq   %rax, %rax
    je      .Lwend364
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse367
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif368
.Lelse367:
.Lendif368:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop363
.Lwend364:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse369
    movq    $0, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif370
.Lelse369:
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
.Lendif370:
    jmp     .Lendif362
.Lelse361:
.Lendif362:
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
.Lwtop371:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort373
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
    jmp     .Lscend374
.Lscshort373:
    movq    $0, %rax
.Lscend374:
    testq   %rax, %rax
    je      .Lwend372
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
    je      .Lelse375
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif376
.Lelse375:
.Lendif376:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop371
.Lwend372:
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
    je      .Lternelse377
    movq    -24(%rbp), %rax
    jmp     .Lternend378
.Lternelse377:
    movq    -40(%rbp), %rax
.Lternend378:
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -64(%rbp)
    movq    $-1, %rax
    movq    %rax, -80(%rbp)
.Lwtop379:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort381
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
    jmp     .Lscend382
.Lscshort381:
    movq    $0, %rax
.Lscend382:
    testq   %rax, %rax
    je      .Lwend380
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
    je      .Lelse383
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif384
.Lelse383:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse385
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif386
.Lelse385:
.Lendif386:
.Lendif384:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lwtop379
.Lwend380:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse387
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse389
    movq    $1, %rax
    jmp     .Lternend390
.Lternelse389:
    movq    $0, %rax
.Lternend390:
    movq    %rax, -80(%rbp)
    jmp     .Lendif388
.Lelse387:
.Lendif388:
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
.Lwtop391:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend392
    movq    -40(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
.Lwtop393:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend394
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
    je      .Lelse395
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif396
.Lelse395:
.Lendif396:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop393
.Lwend394:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse397
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
    jmp     .Lendif398
.Lelse397:
.Lendif398:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop391
.Lwend392:
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
.Lwtop399:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend400
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
    jmp     .Lwtop399
.Lwend400:
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
    je      .Lternelse401
    leaq    aicstr_68(%rip), %rax
    jmp     .Lternend402
.Lternelse401:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse403
    leaq    aicstr_69(%rip), %rax
    jmp     .Lternend404
.Lternelse403:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse405
    leaq    aicstr_70(%rip), %rax
    jmp     .Lternend406
.Lternelse405:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse407
    leaq    aicstr_71(%rip), %rax
    jmp     .Lternend408
.Lternelse407:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse409
    leaq    aicstr_72(%rip), %rax
    jmp     .Lternend410
.Lternelse409:
    leaq    aicstr_73(%rip), %rax
.Lternend410:
.Lternend408:
.Lternend406:
.Lternend404:
.Lternend402:
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
    je      .Lternelse411
    movq    $1, %rax
    jmp     .Lternend412
.Lternelse411:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse413
    movq    $2, %rax
    jmp     .Lternend414
.Lternelse413:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $42, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse415
    movq    $3, %rax
    jmp     .Lternend416
.Lternelse415:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse417
    movq    $4, %rax
    jmp     .Lternend418
.Lternelse417:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $37, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse419
    movq    $5, %rax
    jmp     .Lternend420
.Lternelse419:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse421
    movq    $6, %rax
    jmp     .Lternend422
.Lternelse421:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse423
    movq    $7, %rax
    jmp     .Lternend424
.Lternelse423:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse425
    movq    $8, %rax
    jmp     .Lternend426
.Lternelse425:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse427
    movq    $9, %rax
    jmp     .Lternend428
.Lternelse427:
    movq    $-1, %rax
.Lternend428:
.Lternend426:
.Lternend424:
.Lternend422:
.Lternend420:
.Lternend418:
.Lternend416:
.Lternend414:
.Lternend412:
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
    je      .Lscshort431
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
    jmp     .Lscend432
.Lscshort431:
    movq    $0, %rax
.Lscend432:
    testq   %rax, %rax
    je      .Lternelse429
    movq    $10, %rax
    jmp     .Lternend430
.Lternelse429:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort435
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
    jmp     .Lscend436
.Lscshort435:
    movq    $0, %rax
.Lscend436:
    testq   %rax, %rax
    je      .Lternelse433
    movq    $11, %rax
    jmp     .Lternend434
.Lternelse433:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort439
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
    jmp     .Lscend440
.Lscshort439:
    movq    $0, %rax
.Lscend440:
    testq   %rax, %rax
    je      .Lternelse437
    movq    $12, %rax
    jmp     .Lternend438
.Lternelse437:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort443
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
    jmp     .Lscend444
.Lscshort443:
    movq    $0, %rax
.Lscend444:
    testq   %rax, %rax
    je      .Lternelse441
    movq    $13, %rax
    jmp     .Lternend442
.Lternelse441:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort447
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
    jmp     .Lscend448
.Lscshort447:
    movq    $0, %rax
.Lscend448:
    testq   %rax, %rax
    je      .Lternelse445
    movq    $14, %rax
    jmp     .Lternend446
.Lternelse445:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort451
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
    jmp     .Lscend452
.Lscshort451:
    movq    $0, %rax
.Lscend452:
    testq   %rax, %rax
    je      .Lternelse449
    movq    $15, %rax
    jmp     .Lternend450
.Lternelse449:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort455
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
    jmp     .Lscend456
.Lscshort455:
    movq    $0, %rax
.Lscend456:
    testq   %rax, %rax
    je      .Lternelse453
    movq    $16, %rax
    jmp     .Lternend454
.Lternelse453:
    movq    $-1, %rax
.Lternend454:
.Lternend450:
.Lternend446:
.Lternend442:
.Lternend438:
.Lternend434:
.Lternend430:
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
    je      .Lelse457
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_binop_code1
    movq    %rax, -48(%rbp)
    jmp     .Lendif458
.Lelse457:
.Lendif458:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse459
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
    jmp     .Lendif460
.Lelse459:
.Lendif460:
    movq    -48(%rbp), %rax
    jmp     .Lret_binop_classify
    movq    $0, %rax
.Lret_binop_classify:
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
    je      .Lelse461
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_75(%rip), %rax
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
    leaq    aicstr_76(%rip), %rax
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
    leaq    aicstr_77(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif462
.Lelse461:
.Lendif462:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse463
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    jmp     .Lendif464
.Lelse463:
.Lendif464:
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
    jne      .Lscshort467
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
    jmp     .Lscend468
.Lscshort467:
    movq    $1, %rax
.Lscend468:
    testq   %rax, %rax
    je      .Lelse465
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_75(%rip), %rax
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
    leaq    aicstr_76(%rip), %rax
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
    jmp     .Lendif466
.Lelse465:
.Lendif466:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort471
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
    jmp     .Lscend472
.Lscshort471:
    movq    $1, %rax
.Lscend472:
    testq   %rax, %rax
    je      .Lelse469
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    jmp     .Lendif470
.Lelse469:
.Lendif470:
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
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse473
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lendif474
.Lelse473:
.Lendif474:
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
.Lwtop475:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend476
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    jmp     .Lwtop475
.Lwend476:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -88(%rbp)
.Lwtop477:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend478
    movq    -80(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
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
    jmp     .Lwtop477
.Lwend478:
    movq    -80(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
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
.Lwtop479:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort481
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
    jmp     .Lscend482
.Lscshort481:
    movq    $0, %rax
.Lscend482:
    testq   %rax, %rax
    je      .Lwend480
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse483
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif484
.Lelse483:
.Lendif484:
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
    je      .Lelse485
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif486
.Lelse485:
.Lendif486:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop479
.Lwend480:
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
    je      .Lelse487
    movq    $0, %rax
    jmp     .Lret_streq_ptr
    jmp     .Lendif488
.Lelse487:
.Lendif488:
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop489:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort491
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
    jmp     .Lscend492
.Lscshort491:
    movq    $0, %rax
.Lscend492:
    testq   %rax, %rax
    je      .Lwend490
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
    je      .Lelse493
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif494
.Lelse493:
.Lendif494:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop489
.Lwend490:
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
.Lwtop495:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort497
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
    jmp     .Lscend498
.Lscshort497:
    movq    $0, %rax
.Lscend498:
    testq   %rax, %rax
    je      .Lwend496
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
    je      .Lelse499
    movq    -48(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif500
.Lelse499:
.Lendif500:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop495
.Lwend496:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse501
    movq    -40(%rbp), %rax
    jmp     .Lret_string_label_num
    jmp     .Lendif502
.Lelse501:
.Lendif502:
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
    je      .Lelse503
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif504
.Lelse503:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse505
    leaq    aicstr_63(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif506
.Lelse505:
    leaq    aicstr_85(%rip), %rax
    jmp     .Lret_fopen_mode_value
.Lendif506:
.Lendif504:
    movq    $0, %rax
.Lret_fopen_mode_value:
    leave
    ret

aicfn_static_type:
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
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse507
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif508
.Lelse507:
.Lendif508:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse509
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
    je      .Lelse511
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif512
.Lelse511:
.Lendif512:
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
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse513
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif514
.Lelse513:
.Lendif514:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_static_type
    jmp     .Lendif510
.Lelse509:
.Lendif510:
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
    movq    %rax, -120(%rbp)
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
    movq    %rax, -112(%rbp)
    movq    $-2, %rax
    movq    %rax, -144(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse515
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -144(%rbp)
    jmp     .Lendif516
.Lelse515:
.Lendif516:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse517
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    movq    %rax, -144(%rbp)
    jmp     .Lendif518
.Lelse517:
.Lendif518:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse519
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    %rax, -144(%rbp)
    jmp     .Lendif520
.Lelse519:
.Lendif520:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse521
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    %rax, -144(%rbp)
    jmp     .Lendif522
.Lelse521:
.Lendif522:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort527
    movq    -144(%rbp), %rax
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
    jmp     .Lscend528
.Lscshort527:
    movq    $1, %rax
.Lscend528:
    testq   %rax, %rax
    jne      .Lscshort525
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort529
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend530
.Lscshort529:
    movq    $1, %rax
.Lscend530:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend526
.Lscshort525:
    movq    $1, %rax
.Lscend526:
    testq   %rax, %rax
    je      .Lelse523
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif524
.Lelse523:
.Lendif524:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse531
    movq    -136(%rbp), %rax
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
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
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
    call    aicfn_static_type
    jmp     .Lret_static_type
    jmp     .Lendif532
.Lelse531:
.Lendif532:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    call    aicfn_resolve_func
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
    je      .Lelse533
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_static_type
    jmp     .Lendif534
.Lelse533:
.Lendif534:
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
    je      .Lelse535
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
    jne     .Lallocok537
    jmp     .Lruntimeerror
.Lallocok537:
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
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
    jmp     .Lendif536
.Lelse535:
.Lendif536:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse538
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
    jmp     .Lendif539
.Lelse538:
.Lendif539:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse540
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
    jne     .Lallocok542
    jmp     .Lruntimeerror
.Lallocok542:
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
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
    jmp     .Lendif541
.Lelse540:
.Lendif541:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse543
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
    jmp     .Lendif544
.Lelse543:
.Lendif544:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse545
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
    jne     .Lallocok547
    jmp     .Lruntimeerror
.Lallocok547:
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
    jne     .Lallocok548
    jmp     .Lruntimeerror
.Lallocok548:
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
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
    jmp     .Lendif546
.Lelse545:
.Lendif546:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse549
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
    jmp     .Lendif550
.Lelse549:
.Lendif550:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse551
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
    jne     .Lallocok553
    jmp     .Lruntimeerror
.Lallocok553:
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
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
    jmp     .Lendif552
.Lelse551:
.Lendif552:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse554
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
    jmp     .Lendif555
.Lelse554:
.Lendif555:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse556
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
    jmp     .Lendif557
.Lelse556:
.Lendif557:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse558
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
    jmp     .Lendif559
.Lelse558:
.Lendif559:
    movq    $0, %rax
    jmp     .Lret_emit_libc_op
    movq    $0, %rax
.Lret_emit_libc_op:
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
    je      .Lelse560
    movq    -64(%rbp), %rax
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
    movq    -64(%rbp), %rax
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
    movq    -64(%rbp), %rax
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
    jmp     .Lendif561
.Lelse560:
    movq    -56(%rbp), %rax
    movq    %rax, -104(%rbp)
.Lwtop562:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend563
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
    je      .Lelse564
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse566
    movq    -64(%rbp), %rax
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
    jmp     .Lendif567
.Lelse566:
    movq    -64(%rbp), %rax
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
.Lendif567:
    jmp     .Lendif565
.Lelse564:
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse568
    movq    -64(%rbp), %rax
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
    jmp     .Lendif569
.Lelse568:
    movq    -64(%rbp), %rax
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
.Lendif569:
.Lendif565:
    movq    -64(%rbp), %rax
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
    movq    -64(%rbp), %rax
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
    movq    -64(%rbp), %rax
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
    movq    -88(%rbp), %rax
    movq    %rax, -104(%rbp)
    jmp     .Lwtop562
.Lwend563:
.Lendif561:
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
    jne     .Lallocok570
    jmp     .Lruntimeerror
.Lallocok570:
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
    jne     .Lallocok571
    jmp     .Lruntimeerror
.Lallocok571:
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
    je      .Lternelse572
    movq    $0, %rax
    jmp     .Lternend573
.Lternelse572:
    movq    $1, %rax
.Lternend573:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok574
    jmp     .Lruntimeerror
.Lallocok574:
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
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse575
    movq    -72(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    jmp     .Lendif576
.Lelse575:
    movq    -72(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
.Lendif576:
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
    movq    -72(%rbp), %rax
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
    movq    -72(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
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
    jne     .Lallocok577
    jmp     .Lruntimeerror
.Lallocok577:
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
    jne     .Lallocok578
    jmp     .Lruntimeerror
.Lallocok578:
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
    movq    -72(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_65(%rip), %rax
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
    je      .Lelse579
    movq    -24(%rbp), %rax
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
    jmp     .Lendif580
.Lelse579:
.Lendif580:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse581
    movq    -24(%rbp), %rax
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
    jmp     .Lendif582
.Lelse581:
.Lendif582:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse583
    movq    -24(%rbp), %rax
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
    jmp     .Lendif584
.Lelse583:
.Lendif584:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort587
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
    jmp     .Lscend588
.Lscshort587:
    movq    $1, %rax
.Lscend588:
    testq   %rax, %rax
    je      .Lelse585
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
    jne     .Lallocok589
    jmp     .Lruntimeerror
.Lallocok589:
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
    leaq    aicstr_65(%rip), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse590
    movq    -24(%rbp), %rax
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
    jmp     .Lendif591
.Lelse590:
.Lendif591:
    jmp     .Lendif586
.Lelse585:
.Lendif586:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse592
    movq    -24(%rbp), %rax
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
    jmp     .Lendif593
.Lelse592:
.Lendif593:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse594
    movq    -24(%rbp), %rax
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
    jmp     .Lendif595
.Lelse594:
.Lendif595:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse596
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
    jmp     .Lendif597
.Lelse596:
.Lendif597:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse598
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
    jmp     .Lendif599
.Lelse598:
.Lendif599:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse600
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
    jmp     .Lendif601
.Lelse600:
.Lendif601:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse602
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif603
.Lelse602:
.Lendif603:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse604
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif605
.Lelse604:
.Lendif605:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse606
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif607
.Lelse606:
.Lendif607:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse608
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif609
.Lelse608:
.Lendif609:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse610
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif611
.Lelse610:
.Lendif611:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse612
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    jmp     .Lendif613
.Lelse612:
.Lendif613:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort616
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
    jmp     .Lscend617
.Lscshort616:
    movq    $1, %rax
.Lscend617:
    testq   %rax, %rax
    je      .Lelse614
    leaq    aicstr_176(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif615
.Lelse614:
.Lendif615:
    movq    $0, %rax
    jmp     .Lret_emit_binop_tail
    movq    $0, %rax
.Lret_emit_binop_tail:
    leave
    ret

aicfn_emit_expr:
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
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
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
    movq    %rax, -256(%rbp)
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse618
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
    movq    %rax, -240(%rbp)
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
    movq    %rax, -176(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, -248(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -248(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_string_label_num
    movq    %rax, -184(%rbp)
    movq    -184(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok620
    jmp     .Lruntimeerror
.Lallocok620:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -192(%rbp)
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -192(%rbp), %rax
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
    jmp     .Lendif619
.Lelse618:
    movq    -256(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse621
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
    je      .Lelse623
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
    movq    %rax, -264(%rbp)
    movq    -264(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok625
    jmp     .Lruntimeerror
.Lallocok625:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -272(%rbp)
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -272(%rbp), %rax
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
    jmp     .Lendif624
.Lelse623:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -88(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
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
    movq    %rax, -136(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -200(%rbp)
    movq    -200(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok626
    jmp     .Lruntimeerror
.Lallocok626:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -208(%rbp)
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -208(%rbp), %rax
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
.Lendif624:
    jmp     .Lendif622
.Lelse621:
    movq    -32(%rbp), %rax
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
    movq    -216(%rbp), %rax
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
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -64(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse627
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
    jmp     .Lternend628
.Lternelse627:
    movq    $0, %rax
.Lternend628:
    movq    %rax, -72(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort629
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort631
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
    jmp     .Lscend632
.Lscshort631:
    movq    $0, %rax
.Lscend632:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend630
.Lscshort629:
    movq    $0, %rax
.Lscend630:
    movq    %rax, -144(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort633
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort635
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
    jmp     .Lscend636
.Lscshort635:
    movq    $0, %rax
.Lscend636:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend634
.Lscshort633:
    movq    $0, %rax
.Lscend634:
    movq    %rax, -152(%rbp)
    movq    $-2, %rax
    movq    %rax, -224(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse637
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -224(%rbp)
    jmp     .Lendif638
.Lelse637:
.Lendif638:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse639
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -224(%rbp)
    jmp     .Lendif640
.Lelse639:
.Lendif640:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse641
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
    movq    %rax, -224(%rbp)
    jmp     .Lendif642
.Lelse641:
.Lendif642:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse643
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
    movq    %rax, -224(%rbp)
    jmp     .Lendif644
.Lelse643:
.Lendif644:
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse645
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
    jmp     .Lendif646
.Lelse645:
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse647
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
    jmp     .Lendif648
.Lelse647:
    movq    -152(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse649
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
    jmp     .Lendif650
.Lelse649:
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort653
    movq    -224(%rbp), %rax
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
    jmp     .Lscend654
.Lscshort653:
    movq    $1, %rax
.Lscend654:
    testq   %rax, %rax
    je      .Lelse651
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
    movq    -224(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_byte_op
    jmp     .Lendif652
.Lelse651:
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort659
    movq    -224(%rbp), %rax
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
    jmp     .Lscend660
.Lscshort659:
    movq    $1, %rax
.Lscend660:
    testq   %rax, %rax
    jne      .Lscshort657
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort661
    movq    -224(%rbp), %rax
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
    jmp     .Lscend662
.Lscshort661:
    movq    $1, %rax
.Lscend662:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend658
.Lscshort657:
    movq    $1, %rax
.Lscend658:
    testq   %rax, %rax
    je      .Lelse655
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
    movq    -224(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_word_op
    jmp     .Lendif656
.Lelse655:
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort665
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend666
.Lscshort665:
    movq    $0, %rax
.Lscend666:
    testq   %rax, %rax
    je      .Lelse663
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
    movq    -224(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_libc_op
    jmp     .Lendif664
.Lelse663:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
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
    je      .Lelse667
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
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
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -232(%rbp)
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
    leaq    aicstr_74(%rip), %rax
    movq    %rax, %r13
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
    movq    -232(%rbp), %rax
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
    leaq    aicstr_75(%rip), %rax
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
    leaq    aicstr_76(%rip), %rax
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
    jmp     .Lendif668
.Lelse667:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
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
    call    aicfn_resolve_func
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
    je      .Lelse669
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
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_call
    jmp     .Lendif670
.Lelse669:
    leaq    aicstr_180(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif670:
.Lendif668:
.Lendif664:
.Lendif656:
.Lendif652:
.Lendif650:
.Lendif648:
.Lendif646:
.Lendif622:
.Lendif619:
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
    jne     .Lallocok671
    jmp     .Lruntimeerror
.Lallocok671:
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
    je      .Lelse672
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
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse674
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif675
.Lelse674:
.Lendif675:
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
    leaq    aicstr_65(%rip), %rax
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
    leaq    aicstr_65(%rip), %rax
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
.Lwtop676:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend677
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
    jmp     .Lwtop676
.Lwend677:
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
    jne     .Lallocok678
    jmp     .Lruntimeerror
.Lallocok678:
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
    jne     .Lallocok679
    jmp     .Lruntimeerror
.Lallocok679:
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
    leaq    aicstr_65(%rip), %rax
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
.Lwtop680:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend681
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
    jmp     .Lwtop680
.Lwend681:
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
    leaq    aicstr_65(%rip), %rax
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
    jne     .Lallocok682
    jmp     .Lruntimeerror
.Lallocok682:
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
    jne     .Lallocok683
    jmp     .Lruntimeerror
.Lallocok683:
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
    movq    -80(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    aic_strlen
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    aic_fwrite
    movq    -80(%rbp), %rax
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
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse684
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
    jmp     .Lendif685
.Lelse684:
.Lendif685:
    movq    -80(%rbp), %rax
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
    je      .Lelse686
    jmp     .Lendif687
.Lelse686:
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
    je      .Lelse688
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
    jmp     .Lendif689
.Lelse688:
.Lendif689:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse690
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
    jmp     .Lendif691
.Lelse690:
.Lendif691:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse692
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
    jmp     .Lendif693
.Lelse692:
.Lendif693:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse694
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
    jmp     .Lendif695
.Lelse694:
.Lendif695:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse696
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
    jmp     .Lendif697
.Lelse696:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse698
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
    jmp     .Lendif699
.Lelse698:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse700
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
    jmp     .Lendif701
.Lelse700:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse702
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
    jmp     .Lendif703
.Lelse702:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse704
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
    jmp     .Lendif705
.Lelse704:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse706
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
    jmp     .Lendif707
.Lelse706:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort710
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend711
.Lscshort710:
    movq    $0, %rax
.Lscend711:
    testq   %rax, %rax
    je      .Lelse708
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
    jmp     .Lendif709
.Lelse708:
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
    je      .Lelse712
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
    jmp     .Lendif713
.Lelse712:
    leaq    aicstr_193(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif713:
.Lendif709:
.Lendif707:
.Lendif705:
.Lendif703:
.Lendif701:
.Lendif699:
.Lendif697:
.Lendif687:
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
    jne     .Ldivok714
    jmp     .Ldivzero
.Ldivok714:
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
    je      .Lelse715
    movq    $16, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif716
.Lelse715:
.Lendif716:
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
    jne     .Lallocok717
    jmp     .Lruntimeerror
.Lallocok717:
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
.Lwtop718:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend719
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
    jmp     .Lwtop718
.Lwend719:
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
.Lwtop720:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend721
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
    jmp     .Lwtop720
.Lwend721:
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
    jne     .Lallocok722
    jmp     .Lruntimeerror
.Lallocok722:
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse723
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif724
.Lelse723:
.Lendif724:
    movq    -48(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok725
    jmp     .Lruntimeerror
.Lallocok725:
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
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
.Lwtop726:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend727
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
    jne     .Lallocok728
    jmp     .Lruntimeerror
.Lallocok728:
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
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop726
.Lwend727:
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
    pushq   %rax
    movq    $4, %rax
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
    je      .Lelse729
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif730
.Lelse729:
.Lendif730:
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
    jne     .Lallocok731
    jmp     .Lruntimeerror
.Lallocok731:
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
    movq    -8(%rbp), %rax
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
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
.Lwtop732:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend733
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
    jne     .Lallocok734
    jmp     .Lruntimeerror
.Lallocok734:
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
    leaq    aicstr_65(%rip), %rax
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
    jmp     .Lwtop732
.Lwend733:
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
    movq    -8(%rbp), %rax
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    leaq    aicstr_65(%rip), %rax
    movq    %rax, %r13
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
    jne     .Lopenok735
    jmp     .Lruntimeerror
.Lopenok735:
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
    jne     .Lallocok736
    jmp     .Lruntimeerror
.Lallocok736:
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

    movq    $0, %rax
    jmp     .Lret_emit_note_section
    movq    $0, %rax
.Lret_emit_note_section:
    leave
    ret

aicfn_infer_stmt_types:
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
    movq    $0, -208(%rbp)
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
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse737
    jmp     .Lendif738
.Lelse737:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
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
    movq    %rax, -112(%rbp)
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
    movq    %rax, -104(%rbp)
    movq    $-2, %rax
    movq    %rax, -160(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse739
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -160(%rbp)
    jmp     .Lendif740
.Lelse739:
.Lendif740:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse741
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
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
    movq    %rax, -160(%rbp)
    jmp     .Lendif742
.Lelse741:
.Lendif742:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse743
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    %rax, -160(%rbp)
    jmp     .Lendif744
.Lelse743:
.Lendif744:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse745
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    %rax, -160(%rbp)
    jmp     .Lendif746
.Lelse745:
.Lendif746:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse747
    movq    -152(%rbp), %rax
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
    movq    %rax, -96(%rbp)
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
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -72(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_decl_index
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_static_type
    movq    %rax, -176(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -208(%rbp)
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif748
.Lelse747:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse749
    movq    -152(%rbp), %rax
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
    movq    %rax, -200(%rbp)
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
    movq    %rax, -192(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -192(%rbp), %rax
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
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse751
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
    call    aicfn_infer_stmt_types
    jmp     .Lendif752
.Lelse751:
.Lendif752:
    jmp     .Lendif750
.Lelse749:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse753
    movq    -152(%rbp), %rax
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
    movq    %rax, -80(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
.Lwtop755:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend756
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
    call    aicfn_infer_stmt_types
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
    jmp     .Lwtop755
.Lwend756:
    jmp     .Lendif754
.Lelse753:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse757
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -168(%rbp)
.Lwtop759:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend760
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
    call    aicfn_infer_stmt_types
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
    jmp     .Lwtop759
.Lwend760:
    jmp     .Lendif758
.Lelse757:
.Lendif758:
.Lendif754:
.Lendif750:
.Lendif748:
.Lendif738:
    movq    $0, %rax
    jmp     .Lret_infer_stmt_types
    movq    $0, %rax
.Lret_infer_stmt_types:
    leave
    ret
