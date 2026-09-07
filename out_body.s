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

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 0(%rbx,%rcx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 16(%rbx,%rcx)
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
    jne     .Lallocok254
    jmp     .Lruntimeerror
.Lallocok254:
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop255:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend256
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
    jmp     .Lwtop255
.Lwend256:
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
    je      .Lelse257
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif258
.Lelse257:
.Lendif258:
    movq    $0, %rax
    movq    %rax, -48(%rbp)
.Lwtop259:
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort261
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
    jmp     .Lscend262
.Lscshort261:
    movq    $0, %rax
.Lscend262:
    testq   %rax, %rax
    je      .Lwend260
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
    je      .Lelse263
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif264
.Lelse263:
.Lendif264:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop259
.Lwend260:
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
.Lwtop265:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort267
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
    jmp     .Lscend268
.Lscshort267:
    movq    $0, %rax
.Lscend268:
    testq   %rax, %rax
    je      .Lwend266
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
    je      .Lelse269
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif270
.Lelse269:
.Lendif270:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop265
.Lwend266:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse271
    jmp     .Lendif272
.Lelse271:
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
.Lendif272:
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
    je      .Lternelse273
    movq    $1, %rax
    jmp     .Lternend274
.Lternelse273:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse275
    movq    $2, %rax
    jmp     .Lternend276
.Lternelse275:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $63, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse277
    movq    $3, %rax
    jmp     .Lternend278
.Lternelse277:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $87, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse279
    movq    $4, %rax
    jmp     .Lternend280
.Lternelse279:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $68, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse281
    movq    $5, %rax
    jmp     .Lternend282
.Lternelse281:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse283
    movq    $6, %rax
    jmp     .Lternend284
.Lternelse283:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse285
    movq    $7, %rax
    jmp     .Lternend286
.Lternelse285:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse287
    movq    $22, %rax
    jmp     .Lternend288
.Lternelse287:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $72, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse289
    movq    $13, %rax
    jmp     .Lternend290
.Lternelse289:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $76, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse291
    movq    $14, %rax
    jmp     .Lternend292
.Lternelse291:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $78, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse293
    movq    $15, %rax
    jmp     .Lternend294
.Lternelse293:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $86, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse295
    movq    $16, %rax
    jmp     .Lternend296
.Lternelse295:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $79, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse297
    movq    $17, %rax
    jmp     .Lternend298
.Lternelse297:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $90, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse299
    movq    $18, %rax
    jmp     .Lternend300
.Lternelse299:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $82, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse301
    movq    $19, %rax
    jmp     .Lternend302
.Lternelse301:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $75, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse303
    movq    $20, %rax
    jmp     .Lternend304
.Lternelse303:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $88, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse305
    movq    $21, %rax
    jmp     .Lternend306
.Lternelse305:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $65, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse307
    movq    $23, %rax
    jmp     .Lternend308
.Lternelse307:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $73, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse309
    movq    $24, %rax
    jmp     .Lternend310
.Lternelse309:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $70, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse311
    movq    $25, %rax
    jmp     .Lternend312
.Lternelse311:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $84, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse313
    movq    $26, %rax
    jmp     .Lternend314
.Lternelse313:
    movq    $-2, %rax
.Lternend314:
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
    je      .Lscshort317
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
    jmp     .Lscend318
.Lscshort317:
    movq    $0, %rax
.Lscend318:
    testq   %rax, %rax
    je      .Lternelse315
    movq    $8, %rax
    jmp     .Lternend316
.Lternelse315:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort321
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
    jmp     .Lscend322
.Lscshort321:
    movq    $0, %rax
.Lscend322:
    testq   %rax, %rax
    je      .Lternelse319
    movq    $9, %rax
    jmp     .Lternend320
.Lternelse319:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $194, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort325
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
    jmp     .Lscend326
.Lscshort325:
    movq    $0, %rax
.Lscend326:
    testq   %rax, %rax
    je      .Lternelse323
    movq    $22, %rax
    jmp     .Lternend324
.Lternelse323:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $58, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort329
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
    jmp     .Lscend330
.Lscshort329:
    movq    $0, %rax
.Lscend330:
    testq   %rax, %rax
    je      .Lternelse327
    movq    $27, %rax
    jmp     .Lternend328
.Lternelse327:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort333
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
    jmp     .Lscend334
.Lscshort333:
    movq    $0, %rax
.Lscend334:
    testq   %rax, %rax
    je      .Lternelse331
    movq    $28, %rax
    jmp     .Lternend332
.Lternelse331:
    movq    $-2, %rax
.Lternend332:
.Lternend328:
.Lternend324:
.Lternend320:
.Lternend316:
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
    je      .Lscshort337
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort339
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
    jmp     .Lscend340
.Lscshort339:
    movq    $0, %rax
.Lscend340:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend338
.Lscshort337:
    movq    $0, %rax
.Lscend338:
    testq   %rax, %rax
    je      .Lternelse335
    movq    $10, %rax
    jmp     .Lternend336
.Lternelse335:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort343
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort345
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
    jmp     .Lscend346
.Lscshort345:
    movq    $0, %rax
.Lscend346:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend344
.Lscshort343:
    movq    $0, %rax
.Lscend344:
    testq   %rax, %rax
    je      .Lternelse341
    movq    $11, %rax
    jmp     .Lternend342
.Lternelse341:
    movq    $-2, %rax
.Lternend342:
.Lternend336:
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
    je      .Lscshort349
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $64, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort351
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort353
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
    jmp     .Lscend354
.Lscshort353:
    movq    $0, %rax
.Lscend354:
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
    je      .Lternelse347
    movq    $12, %rax
    jmp     .Lternend348
.Lternelse347:
    movq    $-2, %rax
.Lternend348:
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
    jne      .Lscshort357
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
    jmp     .Lscend358
.Lscshort357:
    movq    $1, %rax
.Lscend358:
    testq   %rax, %rax
    je      .Lelse355
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif356
.Lelse355:
.Lendif356:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse359
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif360
.Lelse359:
.Lendif360:
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
    je      .Lelse361
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif362
.Lelse361:
.Lendif362:
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
    je      .Lscshort365
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
    jmp     .Lscend366
.Lscshort365:
    movq    $0, %rax
.Lscend366:
    testq   %rax, %rax
    je      .Lelse363
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif364
.Lelse363:
.Lendif364:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort369
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
    jmp     .Lscend370
.Lscshort369:
    movq    $0, %rax
.Lscend370:
    testq   %rax, %rax
    je      .Lelse367
    movq    $29, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif368
.Lelse367:
.Lendif368:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse371
    movq    $-2, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif372
.Lelse371:
.Lendif372:
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
    je      .Lscshort375
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort377
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
    jmp     .Lscend378
.Lscshort377:
    movq    $0, %rax
.Lscend378:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend376
.Lscshort375:
    movq    $0, %rax
.Lscend376:
    testq   %rax, %rax
    je      .Lelse373
    movq    $30, %rax
    jmp     .Lret_classify_record_op
    jmp     .Lendif374
.Lelse373:
.Lendif374:
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
    je      .Lelse379
    movq    $3, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif380
.Lelse379:
.Lendif380:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse381
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif382
.Lelse381:
.Lendif382:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse383
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
    je      .Lelse385
    movq    $4, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif386
.Lelse385:
.Lendif386:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse387
    movq    $5, %rax
    jmp     .Lret_record_op_prefix_len
    jmp     .Lendif388
.Lelse387:
.Lendif388:
    jmp     .Lendif384
.Lelse383:
.Lendif384:
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
.Lwtop389:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend390
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
    jne      .Lscshort393
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
    jmp     .Lscend394
.Lscshort393:
    movq    $1, %rax
.Lscend394:
    testq   %rax, %rax
    je      .Lelse391
    movq    $1, %rax
    jmp     .Lret_is_record_symbol
    jmp     .Lendif392
.Lelse391:
.Lendif392:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop389
.Lwend390:
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
    je      .Lelse395
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif396
.Lelse395:
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
    je      .Lelse397
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif398
.Lelse397:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
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
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -64(%rbp)
    jmp     .Lendif400
.Lelse399:
.Lendif400:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
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
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -64(%rbp)
    jmp     .Lendif402
.Lelse401:
.Lendif402:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
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
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op3
    movq    %rax, -64(%rbp)
    jmp     .Lendif404
.Lelse403:
.Lendif404:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse405
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
    jmp     .Lendif406
.Lelse405:
.Lendif406:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort409
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
    jmp     .Lscend410
.Lscshort409:
    movq    $0, %rax
.Lscend410:
    testq   %rax, %rax
    je      .Lelse407
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
    jmp     .Lendif408
.Lelse407:
.Lendif408:
.Lendif398:
.Lendif396:
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
    je      .Lternelse411
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lternend412
.Lternelse411:
    movq    -24(%rbp), %rax
.Lternend412:
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
    je      .Lelse413
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
.Lwtop415:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend416
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
    jmp     .Lwtop415
.Lwend416:
    jmp     .Lendif414
.Lelse413:
.Lendif414:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse417
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
    je      .Lscshort419
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
    jmp     .Lscend420
.Lscshort419:
    movq    $0, %rax
.Lscend420:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse421
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
    jmp     .Lternend422
.Lternelse421:
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
.Lternend422:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    movq    %rax, -120(%rbp)
.Lwtop423:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend424
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
    jmp     .Lwtop423
.Lwend424:
    jmp     .Lendif418
.Lelse417:
.Lendif418:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse425
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -120(%rbp)
.Lwtop427:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend428
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
    jmp     .Lwtop427
.Lwend428:
    jmp     .Lendif426
.Lelse425:
.Lendif426:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse429
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
    je      .Lelse433
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
    jmp     .Lendif434
.Lelse433:
.Lendif434:
    jmp     .Lendif432
.Lelse431:
.Lendif432:
    jmp     .Lendif430
.Lelse429:
.Lendif430:
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
    je      .Lternelse435
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
    jmp     .Lternend436
.Lternelse435:
    movq    $0, %rax
.Lternend436:
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
    je      .Lscshort439
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
    jmp     .Lscend440
.Lscshort439:
    movq    $0, %rax
.Lscend440:
    testq   %rax, %rax
    jne      .Lscshort437
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort441
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort443
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort445
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
    jmp     .Lscend446
.Lscshort445:
    movq    $0, %rax
.Lscend446:
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
    jmp     .Lscend438
.Lscshort437:
    movq    $1, %rax
.Lscend438:
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
.Lwtop447:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort449
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
    jmp     .Lscend450
.Lscshort449:
    movq    $0, %rax
.Lscend450:
    testq   %rax, %rax
    je      .Lwend448
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
    je      .Lelse451
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif452
.Lelse451:
.Lendif452:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop447
.Lwend448:
    movq    -48(%rbp), %rax
    jmp     .Lret_decl_contains
    movq    $0, %rax
.Lret_decl_contains:
    leave
    ret

aicfn_collect_reads:
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
    movq    $0, -176(%rbp)
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
    movq    %rax, -176(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse453
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
    je      .Lscshort455
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
    je      .Lscshort459
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
    jmp     .Lscend460
.Lscshort459:
    movq    $0, %rax
.Lscend460:
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
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse461
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif462
.Lelse461:
.Lendif462:
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
    je      .Lscshort463
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
    je      .Lscshort465
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
    jmp     .Lscend466
.Lscshort465:
    movq    $0, %rax
.Lscend466:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend464
.Lscshort463:
    movq    $0, %rax
.Lscend464:
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
    je      .Lscshort467
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
    je      .Lscshort471
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
    jmp     .Lscend472
.Lscshort471:
    movq    $0, %rax
.Lscend472:
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
    movq    %rax, -128(%rbp)
    movq    $-1, %rax
    movq    %rax, -168(%rbp)
    movq    -128(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse473
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
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
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
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
    je      .Lscshort475
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
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
    jmp     .Lscend476
.Lscshort475:
    movq    $0, %rax
.Lscend476:
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse477
    movq    -160(%rbp), %rax
    jmp     .Lternend478
.Lternelse477:
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
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
.Lternend478:
    movq    %rax, -168(%rbp)
    jmp     .Lendif474
.Lelse473:
.Lendif474:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -144(%rbp)
    movq    $1, %rax
    movq    %rax, -96(%rbp)
.Lwtop479:
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend480
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_next_child_end
    movq    %rax, -72(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort485
    movq    -96(%rbp), %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend486
.Lscshort485:
    movq    $0, %rax
.Lscend486:
    testq   %rax, %rax
    jne      .Lscshort483
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend484
.Lscshort483:
    movq    $1, %rax
.Lscend484:
    testq   %rax, %rax
    je      .Lelse481
    jmp     .Lendif482
.Lelse481:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
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
.Lendif482:
    movq    $0, %rax
    movq    %rax, -96(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -144(%rbp)
    jmp     .Lwtop479
.Lwend480:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif454
.Lelse453:
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse487
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
    jne      .Lscshort491
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
    jmp     .Lscend492
.Lscshort491:
    movq    $1, %rax
.Lscend492:
    testq   %rax, %rax
    je      .Lelse489
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
    jmp     .Lendif490
.Lelse489:
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
.Lendif490:
    jmp     .Lendif488
.Lelse487:
    movq    -48(%rbp), %rax
    jmp     .Lret_collect_reads
.Lendif488:
.Lendif454:
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
    je      .Lelse493
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif494
.Lelse493:
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
    je      .Lelse495
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif496
.Lelse495:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse497
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
    jmp     .Lendif498
.Lelse497:
.Lendif498:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse499
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
    jmp     .Lendif500
.Lelse499:
.Lendif500:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
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
    jmp     .Lendif502
.Lelse501:
.Lendif502:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    jmp     .Lendif504
.Lelse503:
.Lendif504:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort507
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
    jmp     .Lscend508
.Lscshort507:
    movq    $0, %rax
.Lscend508:
    testq   %rax, %rax
    je      .Lelse505
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
    jmp     .Lendif506
.Lelse505:
.Lendif506:
.Lendif496:
.Lendif494:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse509
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $-1, %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
.Lwtop511:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort513
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
    jmp     .Lscend514
.Lscshort513:
    movq    $0, %rax
.Lscend514:
    testq   %rax, %rax
    je      .Lwend512
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
    je      .Lelse515
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif516
.Lelse515:
.Lendif516:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop511
.Lwend512:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse517
    movq    $0, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lendif518
.Lelse517:
    movq    $-1, %rax
    movq    %rax, -112(%rbp)
.Lendif518:
    jmp     .Lendif510
.Lelse509:
.Lendif510:
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
.Lwtop519:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort521
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
    jmp     .Lscend522
.Lscshort521:
    movq    $0, %rax
.Lscend522:
    testq   %rax, %rax
    je      .Lwend520
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
    je      .Lelse523
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif524
.Lelse523:
.Lendif524:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop519
.Lwend520:
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
    je      .Lternelse525
    movq    -24(%rbp), %rax
    jmp     .Lternend526
.Lternelse525:
    movq    -40(%rbp), %rax
.Lternend526:
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -64(%rbp)
    movq    $-1, %rax
    movq    %rax, -80(%rbp)
.Lwtop527:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort529
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
    jmp     .Lscend530
.Lscshort529:
    movq    $0, %rax
.Lscend530:
    testq   %rax, %rax
    je      .Lwend528
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
    je      .Lelse531
    movq    $1, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif532
.Lelse531:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse533
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif534
.Lelse533:
.Lendif534:
.Lendif532:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lwtop527
.Lwend528:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse535
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse537
    movq    $1, %rax
    jmp     .Lternend538
.Lternelse537:
    movq    $0, %rax
.Lternend538:
    movq    %rax, -80(%rbp)
    jmp     .Lendif536
.Lelse535:
.Lendif536:
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
.Lwtop539:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend540
    movq    -40(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
.Lwtop541:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend542
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
    je      .Lelse543
    movq    -48(%rbp), %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif544
.Lelse543:
.Lendif544:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop541
.Lwend542:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse545
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
    jmp     .Lendif546
.Lelse545:
.Lendif546:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop539
.Lwend540:
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
.Lwtop547:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend548
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
    jmp     .Lwtop547
.Lwend548:
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
    je      .Lternelse549
    leaq    aicstr_72(%rip), %rax
    jmp     .Lternend550
.Lternelse549:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse551
    leaq    aicstr_73(%rip), %rax
    jmp     .Lternend552
.Lternelse551:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse553
    leaq    aicstr_74(%rip), %rax
    jmp     .Lternend554
.Lternelse553:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse555
    leaq    aicstr_75(%rip), %rax
    jmp     .Lternend556
.Lternelse555:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse557
    leaq    aicstr_76(%rip), %rax
    jmp     .Lternend558
.Lternelse557:
    leaq    aicstr_77(%rip), %rax
.Lternend558:
.Lternend556:
.Lternend554:
.Lternend552:
.Lternend550:
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
    je      .Lternelse559
    movq    $1, %rax
    jmp     .Lternend560
.Lternelse559:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse561
    movq    $2, %rax
    jmp     .Lternend562
.Lternelse561:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $42, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse563
    movq    $3, %rax
    jmp     .Lternend564
.Lternelse563:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $47, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse565
    movq    $4, %rax
    jmp     .Lternend566
.Lternelse565:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $37, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse567
    movq    $5, %rax
    jmp     .Lternend568
.Lternelse567:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse569
    movq    $6, %rax
    jmp     .Lternend570
.Lternelse569:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse571
    movq    $7, %rax
    jmp     .Lternend572
.Lternelse571:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse573
    movq    $8, %rax
    jmp     .Lternend574
.Lternelse573:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse575
    movq    $9, %rax
    jmp     .Lternend576
.Lternelse575:
    movq    $-1, %rax
.Lternend576:
.Lternend574:
.Lternend572:
.Lternend570:
.Lternend568:
.Lternend566:
.Lternend564:
.Lternend562:
.Lternend560:
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
    je      .Lscshort579
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
    jmp     .Lscend580
.Lscshort579:
    movq    $0, %rax
.Lscend580:
    testq   %rax, %rax
    je      .Lternelse577
    movq    $10, %rax
    jmp     .Lternend578
.Lternelse577:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
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
    movq    $11, %rax
    jmp     .Lternend582
.Lternelse581:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
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
    movq    $12, %rax
    jmp     .Lternend586
.Lternelse585:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
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
    movq    $13, %rax
    jmp     .Lternend590
.Lternelse589:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $94, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort595
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
    jmp     .Lscend596
.Lscshort595:
    movq    $0, %rax
.Lscend596:
    testq   %rax, %rax
    je      .Lternelse593
    movq    $14, %rax
    jmp     .Lternend594
.Lternelse593:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $60, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort599
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
    jmp     .Lscend600
.Lscshort599:
    movq    $0, %rax
.Lscend600:
    testq   %rax, %rax
    je      .Lternelse597
    movq    $15, %rax
    jmp     .Lternend598
.Lternelse597:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $62, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort603
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
    jmp     .Lscend604
.Lscshort603:
    movq    $0, %rax
.Lscend604:
    testq   %rax, %rax
    je      .Lternelse601
    movq    $16, %rax
    jmp     .Lternend602
.Lternelse601:
    movq    $-1, %rax
.Lternend602:
.Lternend598:
.Lternend594:
.Lternend590:
.Lternend586:
.Lternend582:
.Lternend578:
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
    je      .Lelse605
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_binop_code1
    movq    %rax, -48(%rbp)
    jmp     .Lendif606
.Lelse605:
.Lendif606:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse607
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
    jmp     .Lendif608
.Lelse607:
.Lendif608:
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
    je      .Lelse609
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif610
.Lelse609:
.Lendif610:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse611
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif612
.Lelse611:
.Lendif612:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
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
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort615
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
    jmp     .Lscend616
.Lscshort615:
    movq    $0, %rax
.Lscend616:
    jmp     .Lret_can_fold_binop
    jmp     .Lendif614
.Lelse613:
.Lendif614:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
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
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort625
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
    jmp     .Lscend626
.Lscshort625:
    movq    $0, %rax
.Lscend626:
    testq   %rax, %rax
    jne      .Lscshort623
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort627
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort629
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
    jmp     .Lscend630
.Lscshort629:
    movq    $1, %rax
.Lscend630:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend628
.Lscshort627:
    movq    $1, %rax
.Lscend628:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend624
.Lscshort623:
    movq    $1, %rax
.Lscend624:
    testq   %rax, %rax
    je      .Lelse621
    movq    $1, %rax
    jmp     .Lret_can_fold_binop
    jmp     .Lendif622
.Lelse621:
.Lendif622:
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
    je      .Lelse631
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif632
.Lelse631:
.Lendif632:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse633
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif634
.Lelse633:
.Lendif634:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
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
    imulq   %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif636
.Lelse635:
.Lendif636:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
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
    testq   %rbx, %rbx
    jne     .Ldivok639
    jmp     .Ldivzero
.Ldivok639:
    cqto
    idivq   %rbx
    jmp     .Lret_fold_binop
    jmp     .Lendif638
.Lelse637:
.Lendif638:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
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
    testq   %rbx, %rbx
    jne     .Ldivok642
    jmp     .Ldivzero
.Ldivok642:
    cqto
    idivq   %rbx
    movq    %rdx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif641
.Lelse640:
.Lendif641:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse643
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif644
.Lelse643:
.Lendif644:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
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
    orq     %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif646
.Lelse645:
.Lendif646:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
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
    xorq    %rbx, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif648
.Lelse647:
.Lendif648:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
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
    movq    %rbx, %rcx
    shlq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif650
.Lelse649:
.Lendif650:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
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
    movq    %rbx, %rcx
    sarq    %cl, %rax
    jmp     .Lret_fold_binop
    jmp     .Lendif652
.Lelse651:
.Lendif652:
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
    je      .Lelse653
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
    jmp     .Lendif654
.Lelse653:
.Lendif654:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse655
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
    jmp     .Lendif656
.Lelse655:
.Lendif656:
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
    jne      .Lscshort659
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
    jmp     .Lscend660
.Lscshort659:
    movq    $1, %rax
.Lscend660:
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
    jmp     .Lendif658
.Lelse657:
.Lendif658:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort663
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
    jmp     .Lendif662
.Lelse661:
.Lendif662:
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
    je      .Lelse665
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lendif666
.Lelse665:
.Lendif666:
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
.Lwtop667:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend668
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
    jmp     .Lwtop667
.Lwend668:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -88(%rbp)
.Lwtop669:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend670
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
    jmp     .Lwtop669
.Lwend670:
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
.Lwtop671:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort673
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
    jmp     .Lscend674
.Lscshort673:
    movq    $0, %rax
.Lscend674:
    testq   %rax, %rax
    je      .Lwend672
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
    je      .Lelse675
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif676
.Lelse675:
.Lendif676:
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
    je      .Lelse677
    movq    -56(%rbp), %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif678
.Lelse677:
.Lendif678:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop671
.Lwend672:
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
    je      .Lelse679
    movq    $0, %rax
    jmp     .Lret_streq_ptr
    jmp     .Lendif680
.Lelse679:
.Lendif680:
    movq    $1, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop681:
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort683
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
    jmp     .Lscend684
.Lscshort683:
    movq    $0, %rax
.Lscend684:
    testq   %rax, %rax
    je      .Lwend682
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
    je      .Lelse685
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif686
.Lelse685:
.Lendif686:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop681
.Lwend682:
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
.Lwtop687:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort689
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
    jmp     .Lscend690
.Lscshort689:
    movq    $0, %rax
.Lscend690:
    testq   %rax, %rax
    je      .Lwend688
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
    je      .Lelse691
    movq    -48(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif692
.Lelse691:
.Lendif692:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lwtop687
.Lwend688:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse693
    movq    -40(%rbp), %rax
    jmp     .Lret_string_label_num
    jmp     .Lendif694
.Lelse693:
.Lendif694:
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
    je      .Lelse695
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif696
.Lelse695:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse697
    leaq    aicstr_67(%rip), %rax
    jmp     .Lret_fopen_mode_value
    jmp     .Lendif698
.Lelse697:
    leaq    aicstr_89(%rip), %rax
    jmp     .Lret_fopen_mode_value
.Lendif698:
.Lendif696:
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
    movq    $0, -176(%rbp)
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
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse699
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif700
.Lelse699:
.Lendif700:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse701
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
    je      .Lelse703
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif704
.Lelse703:
.Lendif704:
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
    je      .Lelse705
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif706
.Lelse705:
.Lendif706:
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
    je      .Lelse707
    movq    $0, %rax
    jmp     .Lret_static_type
    jmp     .Lendif708
.Lelse707:
.Lendif708:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -176(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_static_type
    jmp     .Lendif702
.Lelse701:
.Lendif702:
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
    movq    %rax, -120(%rbp)
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
    movq    %rax, -112(%rbp)
    movq    $-2, %rax
    movq    %rax, -152(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse709
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -152(%rbp)
    jmp     .Lendif710
.Lelse709:
.Lendif710:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse711
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
    movq    %rax, -152(%rbp)
    jmp     .Lendif712
.Lelse711:
.Lendif712:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse713
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
    movq    %rax, -152(%rbp)
    jmp     .Lendif714
.Lelse713:
.Lendif714:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse715
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
    movq    %rax, -152(%rbp)
    jmp     .Lendif716
.Lelse715:
.Lendif716:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort719
    movq    -112(%rbp), %rax
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
    jmp     .Lscend720
.Lscshort719:
    movq    $0, %rax
.Lscend720:
    testq   %rax, %rax
    je      .Lelse717
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -152(%rbp)
    jmp     .Lendif718
.Lelse717:
.Lendif718:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse721
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort723
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
    movq    $36, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend724
.Lscshort723:
    movq    $0, %rax
.Lscend724:
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse725
    movq    $1, %rax
    jmp     .Lternend726
.Lternelse725:
    movq    $0, %rax
.Lternend726:
    jmp     .Lret_static_type
    jmp     .Lendif722
.Lelse721:
.Lendif722:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort731
    movq    -152(%rbp), %rax
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
    jmp     .Lscend732
.Lscshort731:
    movq    $1, %rax
.Lscend732:
    testq   %rax, %rax
    jne      .Lscshort729
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort733
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort735
    movq    -152(%rbp), %rax
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
    jmp     .Lscend736
.Lscshort735:
    movq    $1, %rax
.Lscend736:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend734
.Lscshort733:
    movq    $1, %rax
.Lscend734:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend730
.Lscshort729:
    movq    $1, %rax
.Lscend730:
    testq   %rax, %rax
    je      .Lelse727
    movq    $1, %rax
    jmp     .Lret_static_type
    jmp     .Lendif728
.Lelse727:
.Lendif728:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse737
    movq    -144(%rbp), %rax
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
    movq    %rax, -168(%rbp)
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
    call    aicfn_static_type
    jmp     .Lret_static_type
    jmp     .Lendif738
.Lelse737:
.Lendif738:
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
    je      .Lelse739
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
    jmp     .Lendif740
.Lelse739:
.Lendif740:
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
    je      .Lelse741
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
    jne     .Lallocok743
    jmp     .Lruntimeerror
.Lallocok743:
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
    jmp     .Lendif742
.Lelse741:
.Lendif742:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse744
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
    jmp     .Lendif745
.Lelse744:
.Lendif745:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse746
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
    jne     .Lallocok748
    jmp     .Lruntimeerror
.Lallocok748:
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
    jmp     .Lendif747
.Lelse746:
.Lendif747:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse749
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
    jmp     .Lendif750
.Lelse749:
.Lendif750:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse751
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
    jne     .Lallocok753
    jmp     .Lruntimeerror
.Lallocok753:
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
    jne     .Lallocok754
    jmp     .Lruntimeerror
.Lallocok754:
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
    jmp     .Lendif752
.Lelse751:
.Lendif752:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse755
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
    jmp     .Lendif756
.Lelse755:
.Lendif756:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse757
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
    jne     .Lallocok759
    jmp     .Lruntimeerror
.Lallocok759:
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
    jmp     .Lendif758
.Lelse757:
.Lendif758:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse760
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
    jmp     .Lendif761
.Lelse760:
.Lendif761:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse762
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
    jmp     .Lendif763
.Lelse762:
.Lendif763:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse764
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
    jmp     .Lendif765
.Lelse764:
.Lendif765:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse766
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
    jmp     .Lendif767
.Lelse766:
.Lendif767:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse768
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
    jmp     .Lendif769
.Lelse768:
.Lendif769:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse770
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
    jmp     .Lendif771
.Lelse770:
.Lendif771:
    movq    $0, %rax
    jmp     .Lret_emit_libc_op
    movq    $0, %rax
.Lret_emit_libc_op:
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
.Lwtop772:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort774
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
    jmp     .Lscend775
.Lscshort774:
    movq    $0, %rax
.Lscend775:
    testq   %rax, %rax
    je      .Lwend773
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
    je      .Lscshort778
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
    jmp     .Lscend779
.Lscshort778:
    movq    $0, %rax
.Lscend779:
    testq   %rax, %rax
    je      .Lelse776
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
    jmp     .Lendif777
.Lelse776:
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
    je      .Lelse780
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
    jne      .Lscshort784
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
    jmp     .Lscend785
.Lscshort784:
    movq    $1, %rax
.Lscend785:
    testq   %rax, %rax
    je      .Lelse782
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
    je      .Lscshort788
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
    jmp     .Lscend789
.Lscshort788:
    movq    $0, %rax
.Lscend789:
    testq   %rax, %rax
    je      .Lelse786
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
    jmp     .Lendif787
.Lelse786:
.Lendif787:
    jmp     .Lendif783
.Lelse782:
.Lendif783:
    jmp     .Lendif781
.Lelse780:
.Lendif781:
.Lendif777:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    jmp     .Lwtop772
.Lwend773:
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
.Lwtop790:
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort792
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
    jmp     .Lscend793
.Lscshort792:
    movq    $0, %rax
.Lscend793:
    testq   %rax, %rax
    je      .Lwend791
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
    je      .Lelse794
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
    jne      .Lscshort798
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
    jmp     .Lscend799
.Lscshort798:
    movq    $1, %rax
.Lscend799:
    testq   %rax, %rax
    je      .Lelse796
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
    je      .Lelse800
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
    je      .Lscshort804
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
    je      .Lscshort806
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
    je      .Lscshort808
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
    jmp     .Lscend809
.Lscshort808:
    movq    $0, %rax
.Lscend809:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend807
.Lscshort806:
    movq    $0, %rax
.Lscend807:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend805
.Lscshort804:
    movq    $0, %rax
.Lscend805:
    testq   %rax, %rax
    je      .Lelse802
    movq    -104(%rbp), %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif803
.Lelse802:
.Lendif803:
    jmp     .Lendif801
.Lelse800:
.Lendif801:
    jmp     .Lendif797
.Lelse796:
.Lendif797:
    jmp     .Lendif795
.Lelse794:
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
    je      .Lelse810
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
    jne      .Lscshort814
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
    jmp     .Lscend815
.Lscshort814:
    movq    $1, %rax
.Lscend815:
    testq   %rax, %rax
    je      .Lelse812
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
    je      .Lelse816
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
    je      .Lscshort820
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
    je      .Lscshort822
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
    je      .Lscshort824
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
    je      .Lscshort826
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
    jmp     .Lscend827
.Lscshort826:
    movq    $0, %rax
.Lscend827:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend825
.Lscshort824:
    movq    $0, %rax
.Lscend825:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend823
.Lscshort822:
    movq    $0, %rax
.Lscend823:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend821
.Lscshort820:
    movq    $0, %rax
.Lscend821:
    testq   %rax, %rax
    je      .Lelse818
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -88(%rbp)
    jmp     .Lendif819
.Lelse818:
.Lendif819:
    jmp     .Lendif817
.Lelse816:
.Lendif817:
    jmp     .Lendif813
.Lelse812:
.Lendif813:
    jmp     .Lendif811
.Lelse810:
.Lendif811:
.Lendif795:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lwtop790
.Lwend791:
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
    je      .Lelse828
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
    je      .Lelse830
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
    jmp     .Lendif831
.Lelse830:
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
    je      .Lelse832
    movq    -56(%rbp), %rax
    jmp     .Lret_get_int_constant
    jmp     .Lendif833
.Lelse832:
.Lendif833:
.Lendif831:
    jmp     .Lendif829
.Lelse828:
.Lendif829:
    movq    $-999999999, %rax
    jmp     .Lret_get_int_constant
    movq    $0, %rax
.Lret_get_int_constant:
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
    jne     .Lallocok834
    jmp     .Lruntimeerror
.Lallocok834:
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
    je      .Lelse835
    leaq    aicstr_140(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_get
    jmp     .Lendif836
.Lelse835:
.Lendif836:
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
    je      .Lelse837
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
    jne     .Lallocok839
    jmp     .Lruntimeerror
.Lallocok839:
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
    jmp     .Lendif838
.Lelse837:
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
    je      .Lelse840
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
    jne     .Lallocok842
    jmp     .Lruntimeerror
.Lallocok842:
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
    jmp     .Lendif841
.Lelse840:
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
    je      .Lelse843
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
    jne     .Lallocok845
    jmp     .Lruntimeerror
.Lallocok845:
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
    jne     .Lallocok846
    jmp     .Lruntimeerror
.Lallocok846:
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
    jmp     .Lendif844
.Lelse843:
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
    jne     .Lallocok847
    jmp     .Lruntimeerror
.Lallocok847:
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
.Lendif844:
.Lendif841:
.Lendif838:
    movq    $0, %rax
    jmp     .Lret_emit_record_get
    movq    $0, %rax
.Lret_emit_record_get:
    leave
    ret

aicfn_emit_record_set:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $240, %rsp
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
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -160(%rbp)
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
    movq    %rax, -128(%rbp)
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
    movq    %rax, -120(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_record_op_prefix_len
    movq    %rax, -176(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -224(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -216(%rbp)
    movq    $16, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok848
    jmp     .Lruntimeerror
.Lallocok848:
    movq    %rax, -104(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_resolve_record_field
    movq    %rax, -152(%rbp)
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse849
    leaq    aicstr_140(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_emit_record_set
    jmp     .Lendif850
.Lelse849:
.Lendif850:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -208(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -184(%rbp)
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
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
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
    movq    %rax, -96(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse851
    movq    -48(%rbp), %rax
    movq    %rax, -232(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
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
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok853
    jmp     .Lruntimeerror
.Lallocok853:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
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
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    jmp     .Lendif852
.Lelse851:
    movq    -48(%rbp), %rax
    movq    %rax, -136(%rbp)
    movq    -64(%rbp), %rax
    movq    %rax, -232(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -72(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse854
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -208(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok856
    jmp     .Lruntimeerror
.Lallocok856:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
    jmp     .Lendif855
.Lelse854:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
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
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse857
    movq    -208(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok859
    jmp     .Lruntimeerror
.Lallocok859:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -200(%rbp)
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
    movq    %rax, %r12
    movq    -200(%rbp), %rax
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
    jmp     .Lendif858
.Lelse857:
    movq    -112(%rbp), %rax
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
.Lendif858:
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
    movq    -112(%rbp), %rax
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
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok860
    jmp     .Lruntimeerror
.Lallocok860:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -88(%rbp)
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
    movq    -112(%rbp), %rax
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
    movq    -112(%rbp), %rax
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
.Lendif855:
.Lendif852:
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
    je      .Lscshort861
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
    jmp     .Lscend862
.Lscshort861:
    movq    $0, %rax
.Lscend862:
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse863
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif864
.Lelse863:
.Lendif864:
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
    je      .Lscshort865
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
    jmp     .Lscend866
.Lscshort865:
    movq    $0, %rax
.Lscend866:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse867
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_get_map_var_tok
    jmp     .Lendif868
.Lelse867:
.Lendif868:
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
    je      .Lscshort869
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
    jmp     .Lscend870
.Lscshort869:
    movq    $0, %rax
.Lscend870:
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse871
    movq    $0, %rax
    jmp     .Lternend872
.Lternelse871:
    movq    $1, %rax
.Lternend872:
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse873
    movq    -176(%rbp), %rax
    jmp     .Lternend874
.Lternelse873:
    movq    $0, %rax
.Lternend874:
    movq    %rax, -192(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse875
    movq    -184(%rbp), %rax
    jmp     .Lternend876
.Lternelse875:
    movq    -176(%rbp), %rax
.Lternend876:
    movq    %rax, -152(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse877
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
    jmp     .Lternend878
.Lternelse877:
    movq    $0, %rax
.Lternend878:
    movq    %rax, -64(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse879
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lternend880
.Lternelse879:
    movq    -184(%rbp), %rax
.Lternend880:
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
    movq    %rax, -240(%rbp)
    movq    -104(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse882
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
    jmp     .Lendif883
.Lelse882:
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
.Lendif883:
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
    jne     .Lallocok884
    jmp     .Lruntimeerror
.Lallocok884:
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
    movq    %rax, -144(%rbp)
    movq    -96(%rbp), %rax
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
    movq    -96(%rbp), %rax
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
.Lwtop886:
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend887
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
    jmp     .Lwtop886
.Lwend887:
    movq    -96(%rbp), %rax
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
    je      .Lelse888
    movq    -64(%rbp), %rax
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
    jmp     .Lendif889
.Lelse888:
    movq    -56(%rbp), %rax
    movq    %rax, -104(%rbp)
.Lwtop890:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend891
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
    je      .Lelse892
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse894
    movq    -64(%rbp), %rax
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
    jmp     .Lendif895
.Lelse894:
    movq    -64(%rbp), %rax
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
.Lendif895:
    jmp     .Lendif893
.Lelse892:
    movq    -72(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse896
    movq    -64(%rbp), %rax
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
    jmp     .Lendif897
.Lelse896:
    movq    -64(%rbp), %rax
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
.Lendif897:
.Lendif893:
    movq    -64(%rbp), %rax
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
    movq    -88(%rbp), %rax
    movq    %rax, -104(%rbp)
    jmp     .Lwtop890
.Lwend891:
.Lendif889:
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
    movq    %rax, -104(%rbp)
    movq    -48(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse900
    movq    $0, %rax
    jmp     .Lternend901
.Lternelse900:
    movq    $1, %rax
.Lternend901:
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
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
    je      .Lelse903
    movq    -72(%rbp), %rax
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
    jmp     .Lendif904
.Lelse903:
    movq    -72(%rbp), %rax
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
.Lendif904:
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
    movq    -72(%rbp), %rax
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
    movq    -72(%rbp), %rax
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
    jne     .Lallocok905
    jmp     .Lruntimeerror
.Lallocok905:
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
    jne     .Lallocok906
    jmp     .Lruntimeerror
.Lallocok906:
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
    je      .Lelse907
    movq    -24(%rbp), %rax
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
    jmp     .Lendif908
.Lelse907:
.Lendif908:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse909
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
    jmp     .Lendif910
.Lelse909:
.Lendif910:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse911
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
    jmp     .Lendif912
.Lelse911:
.Lendif912:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort915
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
    jmp     .Lscend916
.Lscshort915:
    movq    $1, %rax
.Lscend916:
    testq   %rax, %rax
    je      .Lelse913
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
    jne     .Lallocok917
    jmp     .Lruntimeerror
.Lallocok917:
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
    movq    -24(%rbp), %rax
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
    movq    -24(%rbp), %rax
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
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse918
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
    jmp     .Lendif919
.Lelse918:
.Lendif919:
    jmp     .Lendif914
.Lelse913:
.Lendif914:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse920
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
    jmp     .Lendif921
.Lelse920:
.Lendif921:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse922
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
    jmp     .Lendif923
.Lelse922:
.Lendif923:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse924
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
    jmp     .Lendif925
.Lelse924:
.Lendif925:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse926
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
    jmp     .Lendif927
.Lelse926:
.Lendif927:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse928
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
    jmp     .Lendif929
.Lelse928:
.Lendif929:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse930
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
    jmp     .Lendif931
.Lelse930:
.Lendif931:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse932
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
    jmp     .Lendif933
.Lelse932:
.Lendif933:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse934
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
    jmp     .Lendif935
.Lelse934:
.Lendif935:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse936
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
    jmp     .Lendif937
.Lelse936:
.Lendif937:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse938
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
    jmp     .Lendif939
.Lelse938:
.Lendif939:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse940
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
    jmp     .Lendif941
.Lelse940:
.Lendif941:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort944
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
    jmp     .Lscend945
.Lscshort944:
    movq    $1, %rax
.Lscend945:
    testq   %rax, %rax
    je      .Lelse942
    leaq    aicstr_201(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif943
.Lelse942:
.Lendif943:
    movq    $0, %rax
    jmp     .Lret_emit_binop_tail
    movq    $0, %rax
.Lret_emit_binop_tail:
    leave
    ret

aicfn_emit_expr:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $336, %rsp
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
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
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
    movq    %rax, -296(%rbp)
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse946
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
    movq    %rax, -280(%rbp)
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
    movq    %rax, -184(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -280(%rbp), %rax
    pushq   %rax
    movq    -184(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_slice_str
    movq    %rax, -288(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -288(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_string_label_num
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok948
    jmp     .Lruntimeerror
.Lallocok948:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -200(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
    movq    %rax, %r12
    movq    -200(%rbp), %rax
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
    jmp     .Lendif947
.Lelse946:
    movq    -296(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse949
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
    je      .Lelse951
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
    movq    %rax, -304(%rbp)
    movq    -304(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok953
    jmp     .Lruntimeerror
.Lallocok953:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -328(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
    movq    %rax, %r12
    movq    -328(%rbp), %rax
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
    jmp     .Lendif952
.Lelse951:
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
    movq    %rax, -240(%rbp)
    movq    -240(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse954
    movq    -240(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok956
    jmp     .Lruntimeerror
.Lallocok956:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -248(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    jmp     .Lendif955
.Lelse954:
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
    movq    %rax, -144(%rbp)
    movq    $-8, %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -208(%rbp)
    movq    -208(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok957
    jmp     .Lruntimeerror
.Lallocok957:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -216(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
    movq    %rax, %r12
    movq    -216(%rbp), %rax
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
.Lendif955:
.Lendif952:
    jmp     .Lendif950
.Lelse949:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -224(%rbp)
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
    movq    %rax, -136(%rbp)
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
    movq    %rax, -128(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -64(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse958
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lternend959
.Lternelse958:
    movq    $0, %rax
.Lternend959:
    movq    %rax, -72(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort960
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $38, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort962
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
    jmp     .Lscend963
.Lscshort962:
    movq    $0, %rax
.Lscend963:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend961
.Lscshort960:
    movq    $0, %rax
.Lscend961:
    movq    %rax, -152(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort964
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $124, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort966
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
    jmp     .Lscend967
.Lscshort966:
    movq    $0, %rax
.Lscend967:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend965
.Lscshort964:
    movq    $0, %rax
.Lscend965:
    movq    %rax, -160(%rbp)
    movq    $-2, %rax
    movq    %rax, -232(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse968
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_classify_op1
    movq    %rax, -232(%rbp)
    jmp     .Lendif969
.Lelse968:
.Lendif969:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse970
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_op2
    movq    %rax, -232(%rbp)
    jmp     .Lendif971
.Lelse970:
.Lendif971:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse972
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    movq    -136(%rbp), %rax
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
    movq    %rax, -232(%rbp)
    jmp     .Lendif973
.Lelse972:
.Lendif973:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse974
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    movq    -136(%rbp), %rax
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
    movq    -136(%rbp), %rax
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
    movq    %rax, -232(%rbp)
    jmp     .Lendif975
.Lelse974:
.Lendif975:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort978
    movq    -128(%rbp), %rax
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
    jmp     .Lscend979
.Lscshort978:
    movq    $0, %rax
.Lscend979:
    testq   %rax, %rax
    je      .Lelse976
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_classify_record_op
    movq    %rax, -232(%rbp)
    jmp     .Lendif977
.Lelse976:
.Lendif977:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse980
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
    jmp     .Lendif981
.Lelse980:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $30, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse982
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
    jmp     .Lendif983
.Lelse982:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse984
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
    jmp     .Lendif985
.Lelse984:
    movq    -152(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse986
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
    jmp     .Lendif987
.Lelse986:
    movq    -160(%rbp), %rax
    testq   %rax, %rax
    je      .Lelse988
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
    jmp     .Lendif989
.Lelse988:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort992
    movq    -232(%rbp), %rax
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
    jmp     .Lscend993
.Lscshort992:
    movq    $1, %rax
.Lscend993:
    testq   %rax, %rax
    je      .Lelse990
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
    movq    -232(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_byte_op
    jmp     .Lendif991
.Lelse990:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort998
    movq    -232(%rbp), %rax
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
    jmp     .Lscend999
.Lscshort998:
    movq    $1, %rax
.Lscend999:
    testq   %rax, %rax
    jne      .Lscshort996
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1000
    movq    -232(%rbp), %rax
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
    jmp     .Lscend1001
.Lscshort1000:
    movq    $1, %rax
.Lscend1001:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend997
.Lscshort996:
    movq    $1, %rax
.Lscend997:
    testq   %rax, %rax
    je      .Lelse994
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
    movq    -232(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_word_op
    jmp     .Lendif995
.Lelse994:
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1004
    movq    -232(%rbp), %rax
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
    jmp     .Lscend1005
.Lscshort1004:
    movq    $0, %rax
.Lscend1005:
    testq   %rax, %rax
    je      .Lelse1002
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
    movq    -232(%rbp), %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_emit_libc_op
    jmp     .Lendif1003
.Lelse1002:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
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
    je      .Lelse1006
    movq    -224(%rbp), %rax
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
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -272(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -312(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -272(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_get_int_constant
    movq    %rax, -320(%rbp)
    movq    $0, %rax
    movq    %rax, -104(%rbp)
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    $-999999999, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1010
    movq    -320(%rbp), %rax
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
    jmp     .Lscend1011
.Lscshort1010:
    movq    $0, %rax
.Lscend1011:
    testq   %rax, %rax
    je      .Lelse1008
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -320(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_can_fold_binop
    testq   %rax, %rax
    je      .Lelse1012
    movq    $1, %rax
    movq    %rax, -104(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -312(%rbp), %rax
    pushq   %rax
    movq    -320(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_fold_binop
    movq    %rax, -256(%rbp)
    movq    -256(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1014
    jmp     .Lruntimeerror
.Lallocok1014:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    movq    %rax, -264(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
    movq    %rax, %r12
    movq    -264(%rbp), %rax
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
    jmp     .Lendif1013
.Lelse1012:
.Lendif1013:
    jmp     .Lendif1009
.Lelse1008:
.Lendif1009:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1015
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -176(%rbp), %rax
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
    movq    -272(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    jmp     .Lendif1016
.Lelse1015:
.Lendif1016:
    jmp     .Lendif1007
.Lelse1006:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    call    aicfn_resolve_func
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1017
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
    call    aicfn_emit_call
    jmp     .Lendif1018
.Lelse1017:
    leaq    aicstr_203(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1018:
.Lendif1007:
.Lendif1003:
.Lendif995:
.Lendif991:
.Lendif989:
.Lendif987:
.Lendif985:
.Lendif983:
.Lendif981:
.Lendif950:
.Lendif947:
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
    jne     .Lallocok1019
    jmp     .Lruntimeerror
.Lallocok1019:
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
    je      .Lelse1020
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
    je      .Lelse1022
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
    jmp     .Lendif1023
.Lelse1022:
.Lendif1023:
    movq    -72(%rbp), %rax
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
    jmp     .Lendif1021
.Lelse1020:
    movq    -72(%rbp), %rax
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
.Lendif1021:
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
.Lwtop1024:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1025
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
    jmp     .Lwtop1024
.Lwend1025:
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
    jne     .Lallocok1026
    jmp     .Lruntimeerror
.Lallocok1026:
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
    movq    %rax, -104(%rbp)
    movq    -72(%rbp), %rax
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
.Lwtop1028:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1029
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
    jmp     .Lwtop1028
.Lwend1029:
    movq    -72(%rbp), %rax
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
    je      .Lelse1032
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
    jmp     .Lendif1033
.Lelse1032:
.Lendif1033:
    movq    -80(%rbp), %rax
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
    je      .Lelse1034
    jmp     .Lendif1035
.Lelse1034:
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
    je      .Lelse1036
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
    jmp     .Lendif1037
.Lelse1036:
.Lendif1037:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1038
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
    jmp     .Lendif1039
.Lelse1038:
.Lendif1039:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1040
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
    jmp     .Lendif1041
.Lelse1040:
.Lendif1041:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1042
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
    jmp     .Lendif1043
.Lelse1042:
.Lendif1043:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1046
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
    jmp     .Lscend1047
.Lscshort1046:
    movq    $0, %rax
.Lscend1047:
    testq   %rax, %rax
    je      .Lelse1044
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
    jmp     .Lendif1045
.Lelse1044:
.Lendif1045:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $27, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1048
    jmp     .Lendif1049
.Lelse1048:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1050
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
    jmp     .Lendif1051
.Lelse1050:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort1054
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
    jmp     .Lscend1055
.Lscshort1054:
    movq    $1, %rax
.Lscend1055:
    testq   %rax, %rax
    je      .Lelse1052
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
    jmp     .Lendif1053
.Lelse1052:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1056
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
    jmp     .Lendif1057
.Lelse1056:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1058
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
    jmp     .Lendif1059
.Lelse1058:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1060
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
    jmp     .Lendif1061
.Lelse1060:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1062
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
    jmp     .Lendif1063
.Lelse1062:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1064
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
    jmp     .Lendif1065
.Lelse1064:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1066
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
    jmp     .Lendif1067
.Lelse1066:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1070
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
    jmp     .Lscend1071
.Lscshort1070:
    movq    $0, %rax
.Lscend1071:
    testq   %rax, %rax
    je      .Lelse1068
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
    jmp     .Lendif1069
.Lelse1068:
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
    je      .Lelse1072
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
    jmp     .Lendif1073
.Lelse1072:
    leaq    aicstr_214(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif1073:
.Lendif1069:
.Lendif1067:
.Lendif1065:
.Lendif1063:
.Lendif1061:
.Lendif1059:
.Lendif1057:
.Lendif1053:
.Lendif1051:
.Lendif1049:
.Lendif1035:
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
    jne     .Ldivok1074
    jmp     .Ldivzero
.Ldivok1074:
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
    je      .Lelse1075
    movq    $16, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif1076
.Lelse1075:
.Lendif1076:
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
    jne     .Lallocok1077
    jmp     .Lruntimeerror
.Lallocok1077:
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
.Lwtop1078:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1079
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
    jmp     .Lwtop1078
.Lwend1079:
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
.Lwtop1080:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1081
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
    jmp     .Lwtop1080
.Lwend1081:
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
    jne     .Lallocok1082
    jmp     .Lruntimeerror
.Lallocok1082:
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
    je      .Lelse1083
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -64(%rbp)
    jmp     .Lendif1084
.Lelse1083:
.Lendif1084:
    movq    -48(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok1085
    jmp     .Lruntimeerror
.Lallocok1085:
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
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
.Lwtop1086:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1087
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
    jne     .Lallocok1088
    jmp     .Lruntimeerror
.Lallocok1088:
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
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop1086
.Lwend1087:
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
    je      .Lelse1089
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -48(%rbp)
    jmp     .Lendif1090
.Lelse1089:
.Lendif1090:
    movq    -40(%rbp), %rax
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
    movq    -40(%rbp), %rax
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
    jne     .Lallocok1091
    jmp     .Lruntimeerror
.Lallocok1091:
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
.Lwtop1092:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1093
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
    jne     .Lallocok1094
    jmp     .Lruntimeerror
.Lallocok1094:
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
    jmp     .Lwtop1092
.Lwend1093:
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
    jne     .Lopenok1095
    jmp     .Lruntimeerror
.Lopenok1095:
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
    jne     .Lallocok1096
    jmp     .Lruntimeerror
.Lallocok1096:
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

    leaq    aicstr_257(%rip), %rax
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
    je      .Lelse1097
    jmp     .Lendif1098
.Lelse1097:
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
    je      .Lelse1099
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
    jmp     .Lendif1100
.Lelse1099:
.Lendif1100:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1101
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
    jmp     .Lendif1102
.Lelse1101:
.Lendif1102:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1103
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
    jmp     .Lendif1104
.Lelse1103:
.Lendif1104:
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1105
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
    jmp     .Lendif1106
.Lelse1105:
.Lendif1106:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $-2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort1109
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
    jmp     .Lscend1110
.Lscshort1109:
    movq    $0, %rax
.Lscend1110:
    testq   %rax, %rax
    je      .Lelse1107
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
    jmp     .Lendif1108
.Lelse1107:
.Lendif1108:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
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
    je      .Lelse1113
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
    jmp     .Lendif1114
.Lelse1113:
.Lendif1114:
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
    je      .Lscshort1115
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
    jmp     .Lscend1116
.Lscshort1115:
    movq    $0, %rax
.Lscend1116:
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse1117
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
    jmp     .Lternend1118
.Lternelse1117:
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
.Lternend1118:
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
.Lwtop1119:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1120
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
    jmp     .Lwtop1119
.Lwend1120:
    jmp     .Lendif1112
.Lelse1111:
.Lendif1112:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1121
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
    jmp     .Lendif1122
.Lelse1121:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1123
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
    je      .Lelse1125
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
    jmp     .Lendif1126
.Lelse1125:
.Lendif1126:
    jmp     .Lendif1124
.Lelse1123:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1127
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
.Lwtop1129:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1130
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
    jmp     .Lwtop1129
.Lwend1130:
    jmp     .Lendif1128
.Lelse1127:
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1131
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
.Lwtop1133:
    movq    -200(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend1134
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
    jmp     .Lwtop1133
.Lwend1134:
    jmp     .Lendif1132
.Lelse1131:
.Lendif1132:
.Lendif1128:
.Lendif1124:
.Lendif1122:
.Lendif1098:
    movq    $0, %rax
    jmp     .Lret_infer_stmt_types
    movq    $0, %rax
.Lret_infer_stmt_types:
    leave
    ret
