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
