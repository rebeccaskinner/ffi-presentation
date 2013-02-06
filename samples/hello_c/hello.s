	.file	"hello.c"
	.section	.rodata
.LC0:
	.string	"Hello, %s"
	.text
	.globl	generate_message
	.type	generate_message, @function
generate_message:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	asprintf
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	generate_message, .-generate_message
	.section	.rodata
.LC1:
	.string	"world"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$.LC1, %edi
	call	generate_message
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
