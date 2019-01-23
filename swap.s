.file	"swap1.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [rsp]
	.cfi_def_cfa_register 6
	push	r12 ; stack[top-1] <- [r12] ; 93824992232688
	push	rbx ; stack[top-2] <- [rbx] ; 0
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	r12d, 10; r12d <-[10] ;10
	mov	ebx, 5 ; ebx <-[5] ;5
	mov	DWORD PTR -20[rbp], r12d ; [rbp -20] <- [r12d] ; 10
	mov	r12d, ebx ; r12d <- [ebx] ; 5
	mov	ebx, DWORD PTR -20[rbp] ; [ebx] <- [rbp - 20] ; 10;
	mov	eax, 0 ; eax <-[0]; 0
	pop	rbx ; rbx <- stack[top - 2]
	pop	r12 ; r12 <- stack[top - 1]
	pop	rbp ; rbp <- stack[top - 0]
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
