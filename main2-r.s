	.file	"main2.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	input
	.type	input, @function
input:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#int *arrA
	pushq	%r12	#int *arrB
	pushq	%r13	#int N
	pushq	%r14	#int sum
	pushq	%r15	
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *arrA
	movq	%rsi, %r13		#int *arrB
	movq	%rdx, %r14		#int N
	movq	$0, %r15
	movq	$0, (%rbp)
	jmp	.L2
.L3:
	movq	(%rbp), %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	(%rbp), %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addq	%rax, %r15
	movq	(%rbp), %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addq	$1, (%rbp)
.L2:
	movq	(%rbp), %rax
	cmpq	%r14, %rax
	jl	.L3
	movq	%r15, %rax		#sum
	cltd
	idivq	%r14		#sum / N
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input, .-input
	.globl	dotask
	.type	dotask, @function
dotask:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#int *arrA
	pushq	%r13			#int *arrB
	pushq	%r14			#int med
	pushq	%r15			
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *arrA
	movq	%rsi, %r13		#int *arrB
	movl	%edx, -8(%rbp)		#int N
	movq	%rcx, %r14		#int med
	movq	%r12, %rax
	movl	(%rax), %edx
	movq	%r13, %rax
	movl	%edx, (%rax)
	movq	$1, %r15
	jmp	.L6
.L9:
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movq	%r15, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	%r15, %rax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	%r13, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cmpq	%r15, %rax
	jle	.L8
	addq	$1, %r15
.L6:
	movq	%r15, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpq	%rax, %r14
	jge	.L9
	movq	%r15, %rax		#return i
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	dotask, .-dotask
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	out
	.type	out, @function
out:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#int *arrA
	pushq	%r13			#int med
	pushq	%r14			#int i = 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *arrA
	movq	%rsi, %r13		#int med
	movq	$0, %r14
	jmp	.L12
.L13:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, %r14
.L12:
	movq	%r14, %rax
	cmpq	%r13, %rax
	jl	.L13
	nop
	movq	%rbp, %rsp
	popq	%r15		
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp	
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	out, .-out
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	-100(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	%rax, %r12
	movl	$0, %r13d
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	-100(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	input
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %ecx
	movq	%rax, %rdi
	call	dotask
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	out
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
