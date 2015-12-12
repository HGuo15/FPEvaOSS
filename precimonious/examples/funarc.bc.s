	.file	"funarc.bc_opt.bc"
	.text
	.globl	cov_check
	.align	16, 0x90
	.type	cov_check,@function
cov_check:                              # @cov_check
.Ltmp3:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1000168, %rsp          # imm = 0xF42E8
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movl	%edx, %r13d
	movq	%rsi, -1000168(%rbp)    # 8-byte Spill
	movq	%r13, %rcx
	shlq	$4, %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000176(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000152(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movl	$.L.str1, %esi
	callq	fopen
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	%rax, %rdx
	movq	%rax, %r12
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_4
# BB#1:                                 # %.lr.ph33
	leaq	-100(%rbp), %r14
	.align	16, 0x90
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	cmpb	$35, -1000144(%rbp)
	jne	.LBB0_8
.LBB0_3:                                # %.backedge32
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB0_2
	jmp	.LBB0_4
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$.L.str, %esi
	leaq	-136(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_3
# BB#9:                                 #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_10:                               # %.lr.ph31
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, %ebx
	jge	.LBB0_12
# BB#11:                                # %cov_deserialize.exit
                                        #   in Loop: Header=BB0_10 Depth=2
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -128(%rbp)
	leaq	2(%r15), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -127(%rbp)
	leaq	4(%r15), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -126(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -125(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -124(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -123(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -122(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%r15), %rdi
	movb	-100(%rbp), %al
	movb	%al, -121(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %r15
	movb	-100(%rbp), %al
	movb	%al, -120(%rbp)
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%ebx, %rbx
	movq	%rbx, %rax
	shlq	$4, %rax
	movb	-100(%rbp), %cl
	movb	%cl, -119(%rbp)
	fldt	-128(%rbp)
	movq	-1000176(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%ebx
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	leaq	-136(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_3
	jmp	.LBB0_10
.LBB0_4:                                # %._crit_edge
	movq	%r12, %rdi
	callq	fclose
	movq	-1000168(%rbp), %rdi    # 8-byte Reload
	movl	$.L.str1, %esi
	callq	fopen
	movq	%rax, -1000168(%rbp)    # 8-byte Spill
	fldz
	fstpt	-1000188(%rbp)          # 10-byte Folded Spill
	leaq	-1000144(%rbp), %rbx
	leaq	-68(%rbp), %r12
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_13:                               # %.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	cmpl	%r13d, %r15d
	jge	.LBB0_15
# BB#14:                                # %cov_deserialize.exit11
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -96(%rbp)
	leaq	2(%r14), %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -95(%rbp)
	leaq	4(%r14), %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -94(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -93(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -92(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -91(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -90(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%r14), %rdi
	movb	-68(%rbp), %al
	movb	%al, -89(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %r14
	movb	-68(%rbp), %al
	movb	%al, -88(%rbp)
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%r15d, %r15
	movq	%r15, %rax
	shlq	$4, %rax
	movb	-68(%rbp), %cl
	movb	%cl, -87(%rbp)
	fldt	-96(%rbp)
	movq	-1000152(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%r15d
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r14
.LBB0_16:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r14, %r14
	jne	.LBB0_13
.LBB0_5:                                # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	%rbx, %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_19
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %rdi
	movl	$.L.str2, %esi
	movl	$6, %edx
	callq	strncmp
	movq	%rbx, %rdi
	testl	%eax, %eax
	jne	.LBB0_17
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r14
	xorl	%r15d, %r15d
	jmp	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str3, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_5
# BB#18:                                # %cov_deserialize.exit22
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	leaq	-44(%rbp), %r14
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -64(%rbp)
	leaq	-1000142(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -63(%rbp)
	leaq	-1000140(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -62(%rbp)
	leaq	-1000138(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -61(%rbp)
	leaq	-1000136(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -60(%rbp)
	leaq	-1000134(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -59(%rbp)
	leaq	-1000132(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -58(%rbp)
	leaq	-1000130(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -57(%rbp)
	leaq	-1000128(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -56(%rbp)
	leaq	-1000126(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -55(%rbp)
	fldt	-64(%rbp)
	fstpt	-1000188(%rbp)          # 10-byte Folded Spill
	jmp	.LBB0_5
.LBB0_19:
	movq	-1000168(%rbp), %rdi    # 8-byte Reload
	callq	fclose
	movl	$-1, %ebx
	.align	16, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	incl	%ebx
	cmpl	%r13d, %ebx
	jge	.LBB0_29
# BB#21:                                #   in Loop: Header=BB0_20 Depth=1
	movq	-1000176(%rbp), %rax    # 8-byte Reload
	fldt	(%rax)
	fld	%st(0)
	fstpt	-1000168(%rbp)          # 10-byte Folded Spill
	subq	$16, %rsp
	fstpt	(%rsp)
	callq	__isnanl
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.LBB0_27
# BB#22:                                #   in Loop: Header=BB0_20 Depth=1
	subq	$16, %rsp
	fldt	-1000168(%rbp)          # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	__isinfl
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.LBB0_27
# BB#23:                                #   in Loop: Header=BB0_20 Depth=1
	addq	$16, -1000176(%rbp)     # 8-byte Folded Spill
	movq	-1000152(%rbp), %rax    # 8-byte Reload
	fldt	(%rax)
	leaq	16(%rax), %rax
	movq	%rax, -1000152(%rbp)    # 8-byte Spill
	fldt	-1000168(%rbp)          # 10-byte Folded Reload
	fucomi
	jbe	.LBB0_25
# BB#24:                                #   in Loop: Header=BB0_20 Depth=1
	fsubp
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=1
	fsubrp
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=1
	fldt	-1000188(%rbp)          # 10-byte Folded Reload
	fxch
	fucompi
	fstp	%st(0)
	jbe	.LBB0_20
.LBB0_27:
	movl	$str1, %edi
	callq	puts
	movl	$.L.str6, %edi
	movl	$.L.str821, %esi
	callq	fopen
	movl	$.L.str5, %edi
	movl	$6, %esi
.LBB0_28:
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_29:
	movl	$str, %edi
	callq	puts
	movl	$.L.str6, %edi
	movl	$.L.str821, %esi
	callq	fopen
	movl	$.L.str4, %edi
	movl	$5, %esi
	jmp	.LBB0_28
.Ltmp12:
	.size	cov_check, .Ltmp12-cov_check
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:

	.globl	cov_check_
	.align	16, 0x90
	.type	cov_check_,@function
cov_check_:                             # @cov_check_
.Ltmp17:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1000168, %rsp          # imm = 0xF42E8
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movl	(%rdi), %r14d
	movq	%r14, %rax
	shlq	$4, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000176(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000152(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movl	$.L.str518, %edi
	movl	$.L.str1, %esi
	callq	fopen
	movq	%rax, -1000168(%rbp)    # 8-byte Spill
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	%rax, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_4
# BB#1:                                 # %.lr.ph33
	leaq	-136(%rbp), %r12
	leaq	-100(%rbp), %r13
	.align	16, 0x90
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	cmpb	$35, -1000144(%rbp)
	jne	.LBB1_8
.LBB1_3:                                # %.backedge32
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	testq	%rax, %rax
	jne	.LBB1_2
	jmp	.LBB1_4
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$.L.str, %esi
	movq	%r12, %rdx
	callq	strtok_r
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_3
# BB#9:                                 #   in Loop: Header=BB1_2 Depth=1
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_10:                               # %.lr.ph31
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r14d, %r15d
	jge	.LBB1_12
# BB#11:                                # %cov_deserialize.exit
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -128(%rbp)
	leaq	2(%rbx), %rdi
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -127(%rbp)
	leaq	4(%rbx), %rdi
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -126(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -125(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -124(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -123(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -122(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%rbx), %rdi
	movb	-100(%rbp), %al
	movb	%al, -121(%rbp)
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %rbx
	movb	-100(%rbp), %al
	movb	%al, -120(%rbp)
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%r15d, %r15
	movq	%r15, %rax
	shlq	$4, %rax
	movb	-100(%rbp), %cl
	movb	%cl, -119(%rbp)
	fldt	-128(%rbp)
	movq	-1000176(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%r15d
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	movq	%r12, %rdx
	callq	strtok_r
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_3
	jmp	.LBB1_10
.LBB1_4:                                # %._crit_edge
	movq	-1000168(%rbp), %rdi    # 8-byte Reload
	callq	fclose
	movl	$.L.str619, %edi
	movl	$.L.str1, %esi
	callq	fopen
	movq	%rax, -1000168(%rbp)    # 8-byte Spill
	fldz
	fstpt	-1000188(%rbp)          # 10-byte Folded Spill
	leaq	-1000144(%rbp), %rbx
	leaq	-68(%rbp), %r12
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_13:                               # %.lr.ph
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	%r14d, %r15d
	jge	.LBB1_15
# BB#14:                                # %cov_deserialize.exit11
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	%r13, %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -96(%rbp)
	leaq	2(%r13), %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -95(%rbp)
	leaq	4(%r13), %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -94(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -93(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -92(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -91(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -90(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%r13), %rdi
	movb	-68(%rbp), %al
	movb	%al, -89(%rbp)
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %r13
	movb	-68(%rbp), %al
	movb	%al, -88(%rbp)
	movq	%r13, %rdi
	movl	$.L.str217, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%r15d, %r15
	movq	%r15, %rax
	shlq	$4, %rax
	movb	-68(%rbp), %cl
	movb	%cl, -87(%rbp)
	fldt	-96(%rbp)
	movq	-1000152(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%r15d
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r13
.LBB1_16:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r13, %r13
	jne	.LBB1_13
.LBB1_5:                                # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	movq	%rbx, %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_19
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=1
	movq	%rbx, %rdi
	movl	$.L.str2, %esi
	movl	$6, %edx
	callq	strncmp
	movq	%rbx, %rdi
	testl	%eax, %eax
	jne	.LBB1_17
# BB#7:                                 #   in Loop: Header=BB1_5 Depth=1
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r13
	xorl	%r15d, %r15d
	jmp	.LBB1_16
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=1
	movl	$.L.str3, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB1_5
# BB#18:                                # %cov_deserialize.exit22
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	-1000168(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	leaq	-44(%rbp), %r15
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -64(%rbp)
	leaq	-1000142(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -63(%rbp)
	leaq	-1000140(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -62(%rbp)
	leaq	-1000138(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -61(%rbp)
	leaq	-1000136(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -60(%rbp)
	leaq	-1000134(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -59(%rbp)
	leaq	-1000132(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -58(%rbp)
	leaq	-1000130(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -57(%rbp)
	leaq	-1000128(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -56(%rbp)
	leaq	-1000126(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -55(%rbp)
	fldt	-64(%rbp)
	fstpt	-1000188(%rbp)          # 10-byte Folded Spill
	jmp	.LBB1_5
.LBB1_19:
	movq	-1000168(%rbp), %rdi    # 8-byte Reload
	callq	fclose
	movl	$-1, %ebx
	.align	16, 0x90
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	incl	%ebx
	cmpl	%r14d, %ebx
	jge	.LBB1_29
# BB#21:                                #   in Loop: Header=BB1_20 Depth=1
	movq	-1000176(%rbp), %rax    # 8-byte Reload
	fldt	(%rax)
	fld	%st(0)
	fstpt	-1000168(%rbp)          # 10-byte Folded Spill
	subq	$16, %rsp
	fstpt	(%rsp)
	callq	__isnanl
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.LBB1_27
# BB#22:                                #   in Loop: Header=BB1_20 Depth=1
	subq	$16, %rsp
	fldt	-1000168(%rbp)          # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	__isinfl
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.LBB1_27
# BB#23:                                #   in Loop: Header=BB1_20 Depth=1
	addq	$16, -1000176(%rbp)     # 8-byte Folded Spill
	movq	-1000152(%rbp), %rax    # 8-byte Reload
	fldt	(%rax)
	leaq	16(%rax), %rax
	movq	%rax, -1000152(%rbp)    # 8-byte Spill
	fldt	-1000168(%rbp)          # 10-byte Folded Reload
	fucomi
	jbe	.LBB1_25
# BB#24:                                #   in Loop: Header=BB1_20 Depth=1
	fsubp
	jmp	.LBB1_26
.LBB1_25:                               #   in Loop: Header=BB1_20 Depth=1
	fsubrp
.LBB1_26:                               #   in Loop: Header=BB1_20 Depth=1
	fldt	-1000188(%rbp)          # 10-byte Folded Reload
	fxch
	fucompi
	fstp	%st(0)
	jbe	.LBB1_20
.LBB1_27:
	movl	$str3, %edi
	callq	puts
	movl	$.L.str6, %edi
	movl	$.L.str821, %esi
	callq	fopen
	movl	$.L.str5, %edi
	movl	$6, %esi
.LBB1_28:
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB1_29:
	movl	$str2, %edi
	callq	puts
	movl	$.L.str6, %edi
	movl	$.L.str821, %esi
	callq	fopen
	movl	$.L.str4, %edi
	movl	$5, %esi
	jmp	.LBB1_28
.Ltmp26:
	.size	cov_check_, .Ltmp26-cov_check_
.Ltmp27:
	.cfi_endproc
.Leh_func_end1:

	.globl	cov_check_par
	.align	16, 0x90
	.type	cov_check_par,@function
cov_check_par:                          # @cov_check_par
.Ltmp31:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1000168, %rsp          # imm = 0xF42E8
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
	movq	%rcx, -1000192(%rbp)    # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, -1000160(%rbp)    # 8-byte Spill
	movq	%r13, %rcx
	shlq	$4, %rcx
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000168(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -1000152(%rbp)    # 8-byte Spill
	movq	%rcx, %rsp
	movl	$.L.str1, %esi
	callq	fopen
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	%rax, %rdx
	movq	%rax, %rbx
	callq	fgets
	testq	%rax, %rax
	je	.LBB2_4
# BB#1:                                 # %.lr.ph35
	leaq	-100(%rbp), %r14
	.align	16, 0x90
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	cmpb	$35, -1000144(%rbp)
	jne	.LBB2_8
.LBB2_3:                                # %.backedge34
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	%rbx, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB2_2
	jmp	.LBB2_4
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	-1000144(%rbp), %rdi
	movl	$.L.str, %esi
	leaq	-136(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_3
# BB#9:                                 #   in Loop: Header=BB2_2 Depth=1
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_10:                               # %.lr.ph33
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, %r15d
	jge	.LBB2_12
# BB#11:                                # %cov_deserialize.exit
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	%r12, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -128(%rbp)
	leaq	2(%r12), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-100(%rbp), %al
	movb	%al, -127(%rbp)
	leaq	4(%r12), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -126(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -125(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -124(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -123(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -122(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%r12), %rdi
	movb	-100(%rbp), %al
	movb	%al, -121(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %r12
	movb	-100(%rbp), %al
	movb	%al, -120(%rbp)
	movq	%r12, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%r15d, %r15
	movq	%r15, %rax
	shlq	$4, %rax
	movb	-100(%rbp), %cl
	movb	%cl, -119(%rbp)
	fldt	-128(%rbp)
	movq	-1000168(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%r15d
.LBB2_12:                               #   in Loop: Header=BB2_10 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	leaq	-136(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_3
	jmp	.LBB2_10
.LBB2_4:                                # %._crit_edge
	movq	%rbx, %rdi
	callq	fclose
	movq	-1000160(%rbp), %rdi    # 8-byte Reload
	movl	$.L.str1, %esi
	callq	fopen
	movq	%rax, -1000160(%rbp)    # 8-byte Spill
	fldz
	fstpt	-1000180(%rbp)          # 10-byte Folded Spill
	leaq	-1000144(%rbp), %rbx
	leaq	-68(%rbp), %r14
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_13:                               # %.lr.ph
                                        #   in Loop: Header=BB2_16 Depth=2
	cmpl	%r13d, %r12d
	jge	.LBB2_15
# BB#14:                                # %cov_deserialize.exit11
                                        #   in Loop: Header=BB2_16 Depth=2
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -96(%rbp)
	leaq	2(%r15), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-68(%rbp), %al
	movb	%al, -95(%rbp)
	leaq	4(%r15), %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	6(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -94(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	8(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -93(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -92(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -91(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -90(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%r15), %rdi
	movb	-68(%rbp), %al
	movb	%al, -89(%rbp)
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	addq	$18, %r15
	movb	-68(%rbp), %al
	movb	%al, -88(%rbp)
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	movq	%r14, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movslq	%r12d, %r12
	movq	%r12, %rax
	shlq	$4, %rax
	movb	-68(%rbp), %cl
	movb	%cl, -87(%rbp)
	fldt	-96(%rbp)
	movq	-1000152(%rbp), %rcx    # 8-byte Reload
	fstpt	(%rcx,%rax)
	incl	%r12d
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=2
	xorl	%edi, %edi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r15
.LBB2_16:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r15, %r15
	jne	.LBB2_13
.LBB2_5:                                # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
	movq	%rbx, %rdi
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000160(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	testq	%rax, %rax
	je	.LBB2_19
# BB#6:                                 #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	$.L.str2, %esi
	movl	$6, %edx
	callq	strncmp
	movq	%rbx, %rdi
	testl	%eax, %eax
	jne	.LBB2_17
# BB#7:                                 #   in Loop: Header=BB2_5 Depth=1
	movl	$1000000, %esi          # imm = 0xF4240
	movq	-1000160(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str, %esi
	leaq	-144(%rbp), %rdx
	callq	strtok_r
	movq	%rax, %r15
	xorl	%r12d, %r12d
	jmp	.LBB2_16
.LBB2_17:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str3, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB2_5
# BB#18:                                # %cov_deserialize.exit22
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	-1000160(%rbp), %rdx    # 8-byte Reload
	callq	fgets
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	leaq	-44(%rbp), %r15
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -64(%rbp)
	leaq	-1000142(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -63(%rbp)
	leaq	-1000140(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -62(%rbp)
	leaq	-1000138(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -61(%rbp)
	leaq	-1000136(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -60(%rbp)
	leaq	-1000134(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -59(%rbp)
	leaq	-1000132(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -58(%rbp)
	leaq	-1000130(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -57(%rbp)
	leaq	-1000128(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -56(%rbp)
	leaq	-1000126(%rbp), %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	-44(%rbp), %al
	movb	%al, -55(%rbp)
	fldt	-64(%rbp)
	fstpt	-1000180(%rbp)          # 10-byte Folded Spill
	jmp	.LBB2_5
.LBB2_19:
	movq	-1000160(%rbp), %rdi    # 8-byte Reload
	callq	fclose
	movl	$-1, %eax
	fldt	-1000180(%rbp)          # 10-byte Folded Reload
	.align	16, 0x90
.LBB2_20:                               # =>This Inner Loop Header: Depth=1
	incl	%eax
	cmpl	%r13d, %eax
	jge	.LBB2_30
# BB#21:                                #   in Loop: Header=BB2_20 Depth=1
	movq	-1000152(%rbp), %rcx    # 8-byte Reload
	fldt	(%rcx)
	leaq	16(%rcx), %rcx
	movq	%rcx, -1000152(%rbp)    # 8-byte Spill
	movq	-1000168(%rbp), %rcx    # 8-byte Reload
	fldt	(%rcx)
	leaq	16(%rcx), %rcx
	movq	%rcx, -1000168(%rbp)    # 8-byte Spill
	fucomi
	jbe	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_20 Depth=1
	fsubp
	jmp	.LBB2_24
.LBB2_23:                               #   in Loop: Header=BB2_20 Depth=1
	fsubrp
.LBB2_24:                               #   in Loop: Header=BB2_20 Depth=1
	fucompi
	jbe	.LBB2_20
# BB#25:
	fstp	%st(0)
	movl	$str5, %edi
	callq	puts
	xorb	%r14b, %r14b
.LBB2_26:
	movq	-1000192(%rbp), %r15    # 8-byte Reload
	movq	%r15, %rdi
	callq	strlen
	leaq	9(%rax), %rdi
	callq	malloc
	movq	%rax, %rbx
	movb	$0, (%rbx)
	movq	%rbx, %rdi
	callq	strlen
	movb	$0, 4(%rbx,%rax)
	movl	$1601462643, (%rbx,%rax) # imm = 0x5F746173
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcat
	movq	%rbx, %rdi
	callq	strlen
	movb	$0, 4(%rbx,%rax)
	movl	$1987011374, (%rbx,%rax) # imm = 0x766F632E
	movq	%rbx, %rdi
	movl	$.L.str821, %esi
	callq	fopen
	movq	%rax, %rcx
	cmpb	$1, %r14b
	jne	.LBB2_28
# BB#27:
	movl	$.L.str4, %edi
	movl	$5, %esi
	jmp	.LBB2_29
.LBB2_28:
	movl	$.L.str5, %edi
	movl	$6, %esi
.LBB2_29:
	movl	$1, %edx
	callq	fwrite
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB2_30:
	fstp	%st(0)
	movl	$str4, %edi
	callq	puts
	movb	$1, %r14b
	jmp	.LBB2_26
.Ltmp40:
	.size	cov_check_par, .Ltmp40-cov_check_par
.Ltmp41:
	.cfi_endproc
.Leh_func_end2:

	.globl	cov_serialize
	.align	16, 0x90
	.type	cov_serialize,@function
cov_serialize:                          # @cov_serialize
.Ltmp43:
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	fldt	32(%rsp)
	fstpt	(%rsp)
	testl	%eax, %eax
	jle	.LBB3_2
# BB#1:                                 # %.lr.ph
	decl	%eax
	incq	%rax
	leaq	(%rsp), %rsi
	movq	%rax, %rdx
	callq	memcpy
.LBB3_2:
	addq	$24, %rsp
	ret
.Ltmp45:
	.size	cov_serialize, .Ltmp45-cov_serialize
.Ltmp46:
	.cfi_endproc
.Leh_func_end3:

	.globl	cov_deserialize
	.align	16, 0x90
	.type	cov_deserialize,@function
cov_deserialize:                        # @cov_deserialize
.Ltmp52:
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 64
.Ltmp58:
	.cfi_offset %rbx, -40
.Ltmp59:
	.cfi_offset %r12, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	fldz
	testl	%ebx, %ebx
	jle	.LBB4_4
# BB#1:
	fstp	%st(0)
	leaq	(%rsp), %r12
	leaq	20(%rsp), %r15
	.align	16, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	20(%rsp), %al
	movb	%al, (%r12)
	addq	$2, %r14
	incq	%r12
	decl	%ebx
	jne	.LBB4_2
# BB#3:                                 # %._crit_edge
	fldt	(%rsp)
.LBB4_4:                                # %._crit_edge3
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.Ltmp62:
	.size	cov_deserialize, .Ltmp62-cov_deserialize
.Ltmp63:
	.cfi_endproc
.Leh_func_end4:

	.globl	cov_log
	.align	16, 0x90
	.type	cov_log,@function
cov_log:                                # @cov_log
.Ltmp68:
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 32
	subq	$240, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 272
.Ltmp73:
	.cfi_offset %rbx, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rdi, %r15
	testb	%al, %al
	je	.LBB5_2
# BB#1:
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm4, 128(%rsp)
	movaps	%xmm5, 144(%rsp)
	movaps	%xmm6, 160(%rsp)
	movaps	%xmm7, 176(%rsp)
.LBB5_2:
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rsi, %rdi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r14
	cmpb	$0, (%r15)
	je	.LBB5_4
# BB#3:
	movq	%r14, %rdi
	movl	$.L.str116, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB5_4:
	leaq	16(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 200(%rsp)
	movl	$48, 196(%rsp)
	movl	$24, 192(%rsp)
	testl	%ebx, %ebx
	jle	.LBB5_6
	.align	16, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 200(%rsp)
	fldt	(%rax)
	fstpt	4(%rsp)                 # 10-byte Folded Spill
	movl	$10, %edi
	callq	malloc
	movq	%rax, %r15
	fldt	4(%rsp)                 # 10-byte Folded Reload
	fstpt	224(%rsp)
	movw	232(%rsp), %ax
	movw	%ax, 8(%r15)
	movq	224(%rsp), %rax
	movq	%rax, (%r15)
	movzbl	(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%r15), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$32, %edi
	movq	%r14, %rsi
	callq	fputc
	decl	%ebx
	jne	.LBB5_5
.LBB5_6:                                # %._crit_edge
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	movq	%r14, %rdi
	callq	fclose
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp76:
	.size	cov_log, .Ltmp76-cov_log
.Ltmp77:
	.cfi_endproc
.Leh_func_end5:

	.globl	cov_log_
	.align	16, 0x90
	.type	cov_log_,@function
cov_log_:                               # @cov_log_
.Ltmp83:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 40
	subq	$232, %rsp
.Ltmp88:
	.cfi_def_cfa_offset 272
.Ltmp89:
	.cfi_offset %rbx, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB6_2
# BB#1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB6_2:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	$.L.str518, %edi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r14
	movl	$.L.str621, %edi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	(%rbx), %ebp
	leaq	272(%rsp), %rax
	leaq	(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	testl	%ebp, %ebp
	jle	.LBB6_7
	.align	16, 0x90
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movslq	176(%rsp), %rcx
	cmpq	$40, %rcx
	ja	.LBB6_5
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	192(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 176(%rsp)
	jmp	.LBB6_6
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=1
	movq	184(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 184(%rsp)
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=1
	movq	(%rax), %r15
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	fldt	(%r15)
	fstpt	208(%rsp)
	movw	216(%rsp), %ax
	movw	%ax, 8(%rbx)
	movq	208(%rsp), %rax
	movq	%rax, (%rbx)
	movzbl	(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$32, %edi
	movq	%r14, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB6_3
.LBB6_7:                                # %._crit_edge
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	movq	%r14, %rdi
	callq	fclose
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp93:
	.size	cov_log_, .Ltmp93-cov_log_
.Ltmp94:
	.cfi_endproc
.Leh_func_end6:

	.globl	cov_spec_log
	.align	16, 0x90
	.type	cov_spec_log,@function
cov_spec_log:                           # @cov_spec_log
.Ltmp100:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp105:
	.cfi_def_cfa_offset 320
.Ltmp106:
	.cfi_offset %rbx, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB7_2
# BB#1:
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm4, 160(%rsp)
	movaps	%xmm5, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm7, 208(%rsp)
.LBB7_2:
	movq	%r9, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r14, %rdi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r15
	movl	$.L.str722, %edi
	movl	$7, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	fldt	320(%rsp)
	fstpt	24(%rsp)                # 10-byte Folded Spill
	leaq	48(%rsp), %rax
	movq	%rax, 240(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 232(%rsp)
	movl	$48, 228(%rsp)
	movl	$16, 224(%rsp)
	testl	%ebp, %ebp
	jle	.LBB7_4
	.align	16, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	232(%rsp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 232(%rsp)
	fldt	(%rax)
	fstpt	36(%rsp)                # 10-byte Folded Spill
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	fldt	36(%rsp)                # 10-byte Folded Reload
	fstpt	256(%rsp)
	movw	264(%rsp), %ax
	movw	%ax, 8(%rbx)
	movq	256(%rsp), %rax
	movq	%rax, (%rbx)
	movzbl	(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$32, %edi
	movq	%r15, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB7_3
.LBB7_4:                                # %._crit_edge
	movl	$10, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	%r15, %rdi
	callq	fclose
	fldt	24(%rsp)                # 10-byte Folded Reload
	fstpt	(%rsp)
	movl	$.L.str823, %edi
	movq	%r14, %rsi
	movl	$1, %edx
	xorb	%al, %al
	callq	cov_log
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp110:
	.size	cov_spec_log, .Ltmp110-cov_spec_log
.Ltmp111:
	.cfi_endproc
.Leh_func_end7:

	.globl	cov_spec_log_
	.align	16, 0x90
	.type	cov_spec_log_,@function
cov_spec_log_:                          # @cov_spec_log_
.Ltmp117:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp122:
	.cfi_def_cfa_offset 304
.Ltmp123:
	.cfi_offset %rbx, -40
.Ltmp124:
	.cfi_offset %r14, -32
.Ltmp125:
	.cfi_offset %r15, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	testb	%al, %al
	je	.LBB8_2
# BB#1:
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.LBB8_2:
	movq	%r9, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movl	(%rsi), %ebp
	fldt	(%rdi)
	fstpt	20(%rsp)                # 10-byte Folded Spill
	movl	$.L.str619, %edi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r14
	movl	$.L.str722, %edi
	movl	$7, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	leaq	304(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 224(%rsp)
	movq	%rax, 216(%rsp)
	movl	$48, 212(%rsp)
	movl	$16, 208(%rsp)
	testl	%ebp, %ebp
	jle	.LBB8_7
	.align	16, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movslq	208(%rsp), %rcx
	cmpq	$40, %rcx
	ja	.LBB8_5
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=1
	movq	224(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 208(%rsp)
	jmp	.LBB8_6
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	216(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 216(%rsp)
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	movq	(%rax), %r15
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	fldt	(%r15)
	fstpt	240(%rsp)
	movw	248(%rsp), %ax
	movw	%ax, 8(%rbx)
	movq	240(%rsp), %rax
	movq	%rax, (%rbx)
	movzbl	(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$32, %edi
	movq	%r14, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB8_3
.LBB8_7:                                # %._crit_edge
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	movq	%r14, %rdi
	callq	fclose
	fldt	20(%rsp)                # 10-byte Folded Reload
	fstpt	(%rsp)
	movl	$.L.str823, %edi
	movl	$.L.str619, %esi
	movl	$1, %edx
	xorb	%al, %al
	callq	cov_log
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp127:
	.size	cov_spec_log_, .Ltmp127-cov_spec_log_
.Ltmp128:
	.cfi_endproc
.Leh_func_end8:

	.globl	cov_arr_log
	.align	16, 0x90
	.type	cov_arr_log,@function
cov_arr_log:                            # @cov_arr_log
.Ltmp135:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 64
.Ltmp142:
	.cfi_offset %rbx, -48
.Ltmp143:
	.cfi_offset %r12, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%rcx, %rdi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r15
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	cmpb	$0, (%r12)
	je	.LBB9_2
# BB#1:
	movq	%r15, %rdi
	movl	$.L.str116, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB9_2:                                # %.preheader5
	testl	%ebp, %ebp
	jle	.LBB9_7
# BB#3:                                 # %.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	fldt	(%r14)
	fstpt	(%rsp)
	movw	8(%rsp), %ax
	movw	%ax, 8(%rbx)
	movq	(%rsp), %rax
	movq	%rax, (%rbx)
	testl	%r12d, %r12d
	jle	.LBB9_6
# BB#5:                                 #   in Loop: Header=BB9_4 Depth=1
	movl	$32, %edi
	movq	%r15, %rsi
	callq	fputc
.LBB9_6:                                # %.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	movzbl	(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%rbx), %edx
	movq	%r15, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	addq	$16, %r14
	incl	%r12d
	cmpl	%r12d, %ebp
	jne	.LBB9_4
.LBB9_7:                                # %._crit_edge
	movl	$10, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	%r15, %rdi
	callq	fclose
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp147:
	.size	cov_arr_log, .Ltmp147-cov_arr_log
.Ltmp148:
	.cfi_endproc
.Leh_func_end9:

	.globl	cov_arr_log_
	.align	16, 0x90
	.type	cov_arr_log_,@function
cov_arr_log_:                           # @cov_arr_log_
.Ltmp155:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp159:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp161:
	.cfi_def_cfa_offset 64
.Ltmp162:
	.cfi_offset %rbx, -48
.Ltmp163:
	.cfi_offset %r12, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$.L.str619, %edi
	movl	$.L.str15, %esi
	callq	fopen
	movq	%rax, %r14
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$.L.str621, %edi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	(%r12), %ebp
	testl	%ebp, %ebp
	jle	.LBB10_5
# BB#1:                                 # %.lr.ph
	movq	(%r15), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	fldt	(%r15)
	fstpt	(%rsp)
	movw	8(%rsp), %ax
	movw	%ax, 8(%rbx)
	movq	(%rsp), %rax
	movq	%rax, (%rbx)
	testl	%r12d, %r12d
	jle	.LBB10_4
# BB#3:                                 #   in Loop: Header=BB10_2 Depth=1
	movl	$32, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB10_4:                               # %.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	1(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	2(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	3(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	4(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	5(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	6(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	7(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	8(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	movzbl	9(%rbx), %edx
	movq	%r14, %rdi
	movl	$.L.str217, %esi
	xorb	%al, %al
	callq	fprintf
	addq	$16, %r15
	incl	%r12d
	cmpl	%r12d, %ebp
	jne	.LBB10_2
.LBB10_5:                               # %._crit_edge
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	movq	%r14, %rdi
	callq	fclose
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp167:
	.size	cov_arr_log_, .Ltmp167-cov_arr_log_
.Ltmp168:
	.cfi_endproc
.Leh_func_end10:

	.globl	cov_arr_spec_log
	.align	16, 0x90
	.type	cov_arr_spec_log,@function
cov_arr_spec_log:                       # @cov_arr_spec_log
.Ltmp171:
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 32
.Ltmp174:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	movl	$.L.str1025, %edx
	movq	%rbx, %rcx
	callq	cov_arr_log
	fldt	32(%rsp)
	fstpt	(%rsp)
	movl	$.L.str823, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	xorb	%al, %al
	callq	cov_log
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp175:
	.size	cov_arr_spec_log, .Ltmp175-cov_arr_spec_log
.Ltmp176:
	.cfi_endproc
.Leh_func_end11:

	.globl	cov_arr_spec_log_
	.align	16, 0x90
	.type	cov_arr_spec_log_,@function
cov_arr_spec_log_:                      # @cov_arr_spec_log_
.Ltmp179:
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 32
.Ltmp182:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	(%rsi), %esi
	movq	(%rdx), %rdi
	movl	$.L.str1025, %edx
	movl	$.L.str619, %ecx
	callq	cov_arr_log
	fldt	(%rbx)
	fstpt	(%rsp)
	movl	$.L.str823, %edi
	movl	$.L.str619, %esi
	movl	$1, %edx
	xorb	%al, %al
	callq	cov_log
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp183:
	.size	cov_arr_spec_log_, .Ltmp183-cov_arr_spec_log_
.Ltmp184:
	.cfi_endproc
.Leh_func_end12:

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4467570830351532032     # double 4.656613e-10
.LCPI13_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	cov_rand
	.align	16, 0x90
	.type	cov_rand,@function
cov_rand:                               # @cov_rand
.Ltmp188:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp191:
	.cfi_def_cfa_offset 32
.Ltmp192:
	.cfi_offset %rbx, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	%edi, %ebx
	callq	rand
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI13_0(%rip), %xmm0
	addsd	.LCPI13_1(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	subl	%ebx, %ebp
	callq	rand
	cltd
	idivl	%ebp
	addl	%edx, %ebx
	movsd	.LCPI13_1(%rip), %xmm0
	movl	%ebx, %edi
	callq	ldexp
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp194:
	.size	cov_rand, .Ltmp194-cov_rand
.Ltmp195:
	.cfi_endproc
.Leh_func_end13:

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1.000000e+00
.LCPI14_1:
	.quad	4467570830351532032     # double 4.656613e-10
.LCPI14_2:
	.quad	-9223372036854775808    # double -0.000000e+00
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_3:
	.quad	-9223372036854775808    # double -0.000000e+00
	.quad	-9223372036854775808    # double -0.000000e+00
	.text
	.globl	cov_rand_sp
	.align	16, 0x90
	.type	cov_rand_sp,@function
cov_rand_sp:                            # @cov_rand_sp
.Ltmp198:
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp200:
	.cfi_def_cfa_offset 32
.Ltmp201:
	.cfi_offset %rbx, -16
                                        # kill: EDI<def> EDI<kill> RDI<def>
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_13:                              #   in Loop: Header=BB14_1 Depth=1
	movslq	%edi, %rdi
	imulq	$1717986919, %rdi, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	imull	$10, %eax, %eax
	subl	%eax, %edi
.LBB14_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, %edi
	ja	.LBB14_13
# BB#2:                                 # %tailrecurse
	movl	%edi, %eax
	pxor	%xmm0, %xmm0
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_3:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	64(%rax,%rcx), %edi
.LBB14_4:
	callq	ldexp
	movaps	%xmm0, %xmm1
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	xorpd	.LCPI14_3(%rip), %xmm0
	jmp	.LBB14_15
.LBB14_5:
	callq	rand
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	rand
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%eax, %ecx
	andl	$-64, %ecx
	subl	%ecx, %eax
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %edi
	callq	ldexp
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	xorpd	.LCPI14_3(%rip), %xmm0
	jmp	.LBB14_15
.LBB14_6:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	-63(%rax,%rcx), %edi
	jmp	.LBB14_4
.LBB14_7:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	-126(%rax,%rcx), %edi
	jmp	.LBB14_4
.LBB14_8:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	-126(%rax,%rcx), %edi
.LBB14_9:
	callq	ldexp
	movaps	%xmm0, %xmm1
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB14_15
.LBB14_10:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	-63(%rax,%rcx), %edi
	jmp	.LBB14_9
.LBB14_11:
	callq	rand
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	rand
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%eax, %ecx
	andl	$-64, %ecx
	subl	%ecx, %eax
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %edi
	callq	ldexp
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	jmp	.LBB14_15
.LBB14_12:
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movslq	%eax, %rax
	imulq	$-2113396605, %rax, %rdx # imm = 0xFFFFFFFF82082083
	shrq	$32, %rdx
	movsd	.LCPI14_0(%rip), %xmm0
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	imull	$63, %ecx, %ecx
	negl	%ecx
	leal	64(%rax,%rcx), %edi
	jmp	.LBB14_9
.LBB14_14:                              # %.loopexit1
	movsd	.LCPI14_2(%rip), %xmm0
.LBB14_15:
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp202:
	.size	cov_rand_sp, .Ltmp202-cov_rand_sp
.Ltmp203:
	.cfi_endproc
.Leh_func_end14:
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_3
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_15
	.quad	.LBB14_14
	.quad	.LBB14_8
	.quad	.LBB14_10
	.quad	.LBB14_11
	.quad	.LBB14_12

	.text
	.globl	rdtsc
	.align	16, 0x90
	.type	rdtsc,@function
rdtsc:                                  # @rdtsc
.Ltmp204:
	.cfi_startproc
# BB#0:
	#APP
	rdtsc
	#NO_APP
                                        # kill: EDX<def> EDX<kill> RDX<def>
	movl	%eax, %eax
	shlq	$32, %rdx
	orq	%rdx, %rax
	ret
.Ltmp205:
	.size	rdtsc, .Ltmp205-rdtsc
.Ltmp206:
	.cfi_endproc
.Leh_func_end15:

	.globl	current_time_ns
	.align	16, 0x90
	.type	current_time_ns,@function
current_time_ns:                        # @current_time_ns
.Ltmp208:
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp209:
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rdx
	movl	$228, %edi
	movl	$1, %esi
	xorb	%al, %al
	callq	syscall
	testq	%rax, %rax
	jne	.LBB16_2
# BB#1:                                 # %get_time.exit
	imulq	$1000000000, 8(%rsp), %rax # imm = 0x3B9ACA00
	addq	16(%rsp), %rax
	addq	$24, %rsp
	ret
.LBB16_2:
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	movl	$-1, %edi
	callq	exit
.Ltmp210:
	.size	current_time_ns, .Ltmp210-current_time_ns
.Ltmp211:
	.cfi_endproc
.Leh_func_end16:

	.globl	current_time_us
	.align	16, 0x90
	.type	current_time_us,@function
current_time_us:                        # @current_time_us
.Ltmp213:
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp214:
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rdx
	movl	$228, %edi
	movl	$1, %esi
	xorb	%al, %al
	callq	syscall
	testq	%rax, %rax
	jne	.LBB17_2
# BB#1:                                 # %get_time.exit
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	16(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000000, 8(%rsp), %rax # imm = 0xF4240
	addq	%rdx, %rax
	addq	$24, %rsp
	ret
.LBB17_2:
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	movl	$-1, %edi
	callq	exit
.Ltmp215:
	.size	current_time_us, .Ltmp215-current_time_us
.Ltmp216:
	.cfi_endproc
.Leh_func_end17:

	.globl	current_time_sec
	.align	16, 0x90
	.type	current_time_sec,@function
current_time_sec:                       # @current_time_sec
.Ltmp218:
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp219:
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rdx
	movl	$228, %edi
	movl	$1, %esi
	xorb	%al, %al
	callq	syscall
	testq	%rax, %rax
	jne	.LBB18_2
# BB#1:                                 # %get_time.exit
	movl	8(%rsp), %eax
	addq	$24, %rsp
	ret
.LBB18_2:
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	movl	$-1, %edi
	callq	exit
.Ltmp220:
	.size	current_time_sec, .Ltmp220-current_time_sec
.Ltmp221:
	.cfi_endproc
.Leh_func_end18:

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1107296256              # float 3.200000e+01
.LCPI19_1:
	.long	1098907648              # float 1.600000e+01
.LCPI19_2:
	.long	1090519040              # float 8.000000e+00
.LCPI19_3:
	.long	1082130432              # float 4.000000e+00
.LCPI19_4:
	.long	1073741824              # float 2.000000e+00
	.text
	.globl	fun
	.align	16, 0x90
	.type	fun,@function
fun:                                    # @fun
.Ltmp223:
	.cfi_startproc
# BB#0:
	subq	$168, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 176
	fldt	176(%rsp)
	fld	%st(0)
	fstpt	28(%rsp)                # 10-byte Folded Spill
	fld	%st(0)
	fadd	%st(1)
	fstpl	160(%rsp)
	flds	.LCPI19_0(%rip)
	fld	%st(0)
	fstpt	64(%rsp)                # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	152(%rsp)
	flds	.LCPI19_1(%rip)
	fld	%st(0)
	fstpt	76(%rsp)                # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	144(%rsp)
	flds	.LCPI19_2(%rip)
	fld	%st(0)
	fstpt	52(%rsp)                # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	136(%rsp)
	flds	.LCPI19_3(%rip)
	fld	%st(0)
	fstpt	40(%rsp)                # 10-byte Folded Spill
	fmulp
	fstpl	128(%rsp)
	movsd	160(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 120(%rsp)
	fldl	120(%rsp)
	fdivs	.LCPI19_4(%rip)
	fldt	28(%rsp)                # 10-byte Folded Reload
	faddp	%st(1)
	fstpt	28(%rsp)                # 10-byte Folded Spill
	movsd	152(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	144(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	136(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	128(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 88(%rsp)
	fldl	88(%rsp)
	fldt	40(%rsp)                # 10-byte Folded Reload
	fdivrp
	movsd	8(%rsp), %xmm0          # 8-byte Reload
	movsd	%xmm0, 112(%rsp)
	fldl	112(%rsp)
	fldt	64(%rsp)                # 10-byte Folded Reload
	fdivrp
	fldt	28(%rsp)                # 10-byte Folded Reload
	faddp	%st(2)
	movsd	(%rsp), %xmm0           # 8-byte Reload
	movsd	%xmm0, 96(%rsp)
	fldl	96(%rsp)
	fldt	52(%rsp)                # 10-byte Folded Reload
	fdivrp
	faddp	%st(2)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
	movsd	%xmm0, 104(%rsp)
	fldl	104(%rsp)
	fldt	76(%rsp)                # 10-byte Folded Reload
	fdivrp
	faddp	%st(2)
	faddp	%st(1)
	addq	$168, %rsp
	ret
.Ltmp225:
	.size	fun, .Ltmp225-fun
.Ltmp226:
	.cfi_endproc
.Leh_func_end19:

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_0:
	.quad	-3958705157555306496    # x86_fp80 ~= 3.141593e+00
	.short	16384
	.zero	6
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_1:
	.long	1107296256              # float 3.200000e+01
.LCPI20_2:
	.long	1098907648              # float 1.600000e+01
.LCPI20_3:
	.long	1090519040              # float 8.000000e+00
.LCPI20_4:
	.long	1082130432              # float 4.000000e+00
.LCPI20_5:
	.long	1073741824              # float 2.000000e+00
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Ltmp234:
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp236:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp237:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp238:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp239:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp241:
	.cfi_def_cfa_offset 592
.Ltmp242:
	.cfi_offset %rbx, -56
.Ltmp243:
	.cfi_offset %r12, -48
.Ltmp244:
	.cfi_offset %r13, -40
.Ltmp245:
	.cfi_offset %r14, -32
.Ltmp246:
	.cfi_offset %r15, -24
.Ltmp247:
	.cfi_offset %rbp, -16
	movl	$.L.str13, %edi
	movl	$.L.str114, %esi
	callq	fopen
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.LBB20_2
# BB#1:
	movl	$str6, %edi
	callq	puts
.LBB20_2:
	movl	$10, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	leaq	500(%rsp), %r15
	leaq	2(%rbx), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	4(%rbx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	6(%rbx), %rbp
	leaq	8(%rbx), %r12
	.align	16, 0x90
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	feof
	testl	%eax, %eax
	jne	.LBB20_5
# BB#4:                                 # %cov_deserialize.exit
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	%r14, %rdi
	movl	$.L.str316, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	__isoc99_fscanf
	movq	%rbx, %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	500(%rsp), %al
	movb	%al, 480(%rsp)
	movq	152(%rsp), %rdi         # 8-byte Reload
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	500(%rsp), %al
	movb	%al, 481(%rsp)
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	500(%rsp), %al
	movb	%al, 482(%rsp)
	movq	%rbp, %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	500(%rsp), %al
	movb	%al, 483(%rsp)
	movq	%r12, %rdi
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	10(%rbx), %rdi
	movb	500(%rsp), %al
	movb	%al, 484(%rsp)
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	12(%rbx), %rdi
	movb	500(%rsp), %al
	movb	%al, 485(%rsp)
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	14(%rbx), %rdi
	movb	500(%rsp), %al
	movb	%al, 486(%rsp)
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	16(%rbx), %rdi
	movb	500(%rsp), %al
	movb	%al, 487(%rsp)
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	leaq	18(%rbx), %rdi
	movb	500(%rsp), %al
	movb	%al, 488(%rsp)
	movl	$.L.str217, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	__isoc99_sscanf
	movb	500(%rsp), %al
	movb	%al, 489(%rsp)
	fldt	480(%rsp)
	fisttpl	268(%rsp)
	movl	268(%rsp), %eax
	movl	%eax, 272(%rsp,%r13,4)
.LBB20_5:                               #   in Loop: Header=BB20_3 Depth=1
	incq	%r13
	cmpl	$10, %r13d
	jne	.LBB20_3
# BB#6:
	pxor	%xmm0, %xmm0
	callq	acosf
	leaq	504(%rsp), %rdx
	movl	$228, %edi
	movl	$1, %esi
	xorb	%al, %al
	callq	syscall
	testq	%rax, %rax
	jne	.LBB20_14
# BB#7:                                 # %current_time_ns.exit
	xorl	%ebp, %ebp
	movq	504(%rsp), %r15
	movq	512(%rsp), %r14
	fldt	.LCPI20_0(%rip)
	fstpt	4(%rsp)                 # 10-byte Folded Spill
	fld1
	.align	16, 0x90
.LBB20_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_10 Depth 2
	fldz
	movl	272(%rsp,%rbp,4), %ebx
	movl	%ebx, 264(%rsp)
	fldt	4(%rsp)                 # 10-byte Folded Reload
	fidivl	264(%rsp)
	fstpt	28(%rsp)                # 10-byte Folded Spill
	testl	%ebx, %ebx
	fldz
	fldz
	jle	.LBB20_11
# BB#9:                                 # %.lr.ph
                                        #   in Loop: Header=BB20_8 Depth=1
	fstp	%st(1)
	fstp	%st(1)
	fstp	%st(0)
	fldz
	fldt	28(%rsp)                # 10-byte Folded Reload
	fmul	%st(0), %st(0)
	fstpt	16(%rsp)                # 10-byte Folded Spill
	fld	%st(0)
	fld	%st(2)
	.align	16, 0x90
.LBB20_10:                              #   Parent Loop BB20_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fxch
	fstpt	124(%rsp)               # 10-byte Folded Spill
	fxch
	fstpt	152(%rsp)               # 10-byte Folded Spill
	fldt	28(%rsp)                # 10-byte Folded Reload
	fmul	%st(1)
	fld	%st(0)
	fstpt	64(%rsp)                # 10-byte Folded Spill
	fld	%st(0)
	fadd	%st(1)
	fstpl	256(%rsp)
	flds	.LCPI20_1(%rip)
	fld	%st(0)
	fstpt	100(%rsp)               # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	248(%rsp)
	flds	.LCPI20_2(%rip)
	fld	%st(0)
	fstpt	112(%rsp)               # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	240(%rsp)
	flds	.LCPI20_3(%rip)
	fld	%st(0)
	fstpt	88(%rsp)                # 10-byte Folded Spill
	fmul	%st(1)
	fstpl	232(%rsp)
	flds	.LCPI20_4(%rip)
	fld	%st(0)
	fstpt	76(%rsp)                # 10-byte Folded Spill
	fmulp
	fstpl	224(%rsp)
	faddp	%st(1)
	fstpt	136(%rsp)               # 10-byte Folded Spill
	movsd	256(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 216(%rsp)
	fldl	216(%rsp)
	fdivs	.LCPI20_5(%rip)
	fldt	64(%rsp)                # 10-byte Folded Reload
	faddp	%st(1)
	fstpt	64(%rsp)                # 10-byte Folded Spill
	movsd	248(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	240(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	232(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	224(%rsp), %xmm0
	callq	sin
	movsd	%xmm0, 184(%rsp)
	fldl	184(%rsp)
	fldt	76(%rsp)                # 10-byte Folded Reload
	fdivrp
	movsd	48(%rsp), %xmm0         # 8-byte Reload
	movsd	%xmm0, 208(%rsp)
	fldl	208(%rsp)
	fldt	100(%rsp)               # 10-byte Folded Reload
	fdivrp
	fldt	64(%rsp)                # 10-byte Folded Reload
	faddp	%st(2)
	movsd	40(%rsp), %xmm0         # 8-byte Reload
	movsd	%xmm0, 192(%rsp)
	fldl	192(%rsp)
	fldt	88(%rsp)                # 10-byte Folded Reload
	fdivrp
	faddp	%st(2)
	movsd	56(%rsp), %xmm0         # 8-byte Reload
	movsd	%xmm0, 200(%rsp)
	fldl	200(%rsp)
	fldt	112(%rsp)               # 10-byte Folded Reload
	fdivrp
	faddp	%st(2)
	fldt	152(%rsp)               # 10-byte Folded Reload
	fxch	%st(2)
	faddp	%st(1)
	fldt	124(%rsp)               # 10-byte Folded Reload
	fsubr	%st(1)
	fmul	%st(0), %st(0)
	fldt	16(%rsp)                # 10-byte Folded Reload
	faddp	%st(1)
	fldt	136(%rsp)               # 10-byte Folded Reload
	fxch
	fstpl	176(%rsp)
	fld1
	movsd	176(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, 168(%rsp)
	fxch	%st(3)
	faddl	168(%rsp)
	decl	%ebx
	fxch	%st(2)
	fxch
	jne	.LBB20_10
.LBB20_11:                              # %._crit_edge
                                        #   in Loop: Header=BB20_8 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	movq	%rbp, %rax
	shlq	$4, %rax
	fstpt	320(%rsp,%rax)
	incq	%rbp
	cmpl	$10, %ebp
	jne	.LBB20_8
# BB#12:
	fstp	%st(0)
	leaq	520(%rsp), %rdx
	movl	$228, %edi
	movl	$1, %esi
	xorb	%al, %al
	callq	syscall
	testq	%rax, %rax
	jne	.LBB20_14
# BB#13:                                # %current_time_ns.exit2
	imulq	$1000000000, 520(%rsp), %r12 # imm = 0x3B9ACA00
	movq	528(%rsp), %rbp
	leaq	320(%rsp), %rdi
	movl	$10, %esi
	movl	$.L.str417, %edx
	movl	$.L.str518, %ecx
	callq	cov_arr_log
	movl	$.L.str518, %edi
	movl	$.L.str619, %esi
	movl	$10, %edx
	callq	cov_check
	imulq	$-1000000000, %r15, %rbx # imm = 0xFFFFFFFFC4653600
	subq	%r14, %rbx
	addq	%rbp, %rbx
	movl	$.L.str720, %edi
	movl	$.L.str821, %esi
	callq	fopen
	movq	%rax, %rbp
	addq	%r12, %rbx
	movq	%rbp, %rdi
	movl	$.L.str922, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
	movq	%rbp, %rdi
	callq	fclose
	xorl	%eax, %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB20_14:
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	movl	$-1, %edi
	callq	exit
.Ltmp248:
	.size	main, .Ltmp248-main
.Ltmp249:
	.cfi_endproc
.Leh_func_end20:

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 " "
	.size	.L.str, 2

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "rt"
	.size	.L.str1, 3

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "#ideal"
	.size	.L.str2, 7

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "#delta"
	.size	.L.str3, 7

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "true\n"
	.size	.L.str4, 6

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "false\n"
	.size	.L.str5, 7

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "sat.cov"
	.size	.L.str6, 8

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "sat_"
	.size	.L.str10, 5

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 ".cov"
	.size	.L.str11, 5

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "a"
	.size	.L.str15, 2

	.type	.L.str116,@object       # @.str116
.L.str116:
	.asciz	 "#%s\n"
	.size	.L.str116, 5

	.type	.L.str217,@object       # @.str217
.L.str217:
	.asciz	 "%02X"
	.size	.L.str217, 5

	.type	.L.str621,@object       # @.str621
.L.str621:
	.asciz	 "#result\n"
	.size	.L.str621, 9

	.type	.L.str722,@object       # @.str722
.L.str722:
	.asciz	 "#ideal\n"
	.size	.L.str722, 8

	.type	.L.str823,@object       # @.str823
.L.str823:
	.asciz	 "delta"
	.size	.L.str823, 6

	.type	.L.str1025,@object      # @.str1025
.L.str1025:
	.asciz	 "ideal"
	.size	.L.str1025, 6

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "clock_gettime(MONOTONIC/REALTIME) failed"
	.size	.L.str26, 41

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "final_inputs"
	.size	.L.str13, 13

	.type	.L.str114,@object       # @.str114
.L.str114:
	.asciz	 "r"
	.size	.L.str114, 2

	.type	.L.str316,@object       # @.str316
.L.str316:
	.asciz	 "%s"
	.size	.L.str316, 3

	.type	.L.str417,@object       # @.str417
.L.str417:
	.asciz	 "result"
	.size	.L.str417, 7

	.type	.L.str518,@object       # @.str518
.L.str518:
	.asciz	 "log.cov"
	.size	.L.str518, 8

	.type	.L.str619,@object       # @.str619
.L.str619:
	.asciz	 "spec.cov"
	.size	.L.str619, 9

	.type	.L.str720,@object       # @.str720
.L.str720:
	.asciz	 "score.cov"
	.size	.L.str720, 10

	.type	.L.str821,@object       # @.str821
.L.str821:
	.asciz	 "w"
	.size	.L.str821, 2

	.type	.L.str922,@object       # @.str922
.L.str922:
	.asciz	 "%ld\n"
	.size	.L.str922, 5

	.type	str,@object             # @str
	.section	.rodata,"a",@progbits
str:
	.asciz	 "true"
	.size	str, 5

	.type	str1,@object            # @str1
str1:
	.asciz	 "false"
	.size	str1, 6

	.type	str2,@object            # @str2
str2:
	.asciz	 "true"
	.size	str2, 5

	.type	str3,@object            # @str3
str3:
	.asciz	 "false"
	.size	str3, 6

	.type	str4,@object            # @str4
str4:
	.asciz	 "true"
	.size	str4, 5

	.type	str5,@object            # @str5
str5:
	.asciz	 "false"
	.size	str5, 6

	.type	str6,@object            # @str6
	.align	16
str6:
	.asciz	 "Could not open final_inputs"
	.size	str6, 28


	.section	".note.GNU-stack","",@progbits
