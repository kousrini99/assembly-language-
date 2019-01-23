	.file	"pointers.c"
	.intel_syntax noprefix
	.text
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	push	rbp                     ;stack[top-1] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                ;rbp <- rsp;
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi ;[rbp-24] <-rdi;
	mov	QWORD PTR [rbp-32], rsi ;[rbp-32] <-rsi;
	mov	rax, QWORD PTR [rbp-24] ;rax <- [rbp-24];
	mov	eax, DWORD PTR [rax]    ;eax <- [rax];
	mov	DWORD PTR [rbp-4], eax  ;[rbp-4] <- eax;
	mov	rax, QWORD PTR [rbp-32] ;rax <- [rbp-32];
	mov	edx, DWORD PTR [rax]    ;edx <- [rax];
	mov	rax, QWORD PTR [rbp-24] ;rax <- [rbp-24];
	mov	DWORD PTR [rax], edx    ;[rax] <- edx;
	mov	rax, QWORD PTR [rbp-32] ;rax <- [rbp-32];
	mov	edx, DWORD PTR [rbp-4]  ;edx <- [rbp-4];
	mov	DWORD PTR [rax], edx    ;[rax] <- edx;
	nop
	pop	rbp                     ;rbp <- stack[top-1];
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp                     ;stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                ;rbp <- rsp;
	.cfi_def_cfa_register 6
	sub	rsp, 32                 ;rsp <- rsp -32;
	mov	DWORD PTR [rbp-20], edi ;[rbp -20] <- edi;
	mov	QWORD PTR [rbp-32], rsi ;[rbp-32] <- rsi;
	mov	rax, QWORD PTR fs:40    ;rax <- fs:40;
	mov	QWORD PTR [rbp-8], rax  ;[rbp-8] <- rax;
	xor	eax, eax                ;eax <- eax XOR eax;
	mov	DWORD PTR [rbp-16], 5   ;[rbp-16] <- 5;   5
	mov	DWORD PTR [rbp-12], 7   ;[rbp-12] <- 7;   7
	lea	rdx, [rbp-12]           ;rdx <- [rbp-12]; 5
	lea	rax, [rbp-16]           ;rdi <- [rbp-16]; 7
	mov	rsi, rdx                ;rsi <- rdx;      5
	mov	rdi, rax                ;rdi <- rax;      7 
	call	swap                    ;call function swap;
	mov	eax, 0                  ;eax <- 0;        0
	mov	rcx, QWORD PTR [rbp-8]  ;rcx <- [rbp-8];
	xor	rcx, QWORD PTR fs:40    ;rcx <- fs:40;
	je	.L4                     ;conditional jump to L4;
	call	__stack_chk_fail
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
