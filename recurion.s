	.file	"recursion.c"
	.intel_syntax noprefix
	.text
	.globl	fib
	.type	fib, @function
fib:
.LFB0:
	.cfi_startproc
	push	rbp                     ;stack[top-1] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                ;rbp <- rsp;
	.cfi_def_cfa_register 6
	push	rbx                     ;stack[top-2] <- rbx;
	sub	rsp, 24                 ;rsp <- rsp - 24;
	.cfi_offset 3, -24
	mov	DWORD PTR [rbp-20], edi ;[rbp-20] <- edi;  4
	cmp	DWORD PTR [rbp-20], 1   ;compare [rbp-20] , 1; 0
	sete	dl
	cmp	DWORD PTR [rbp-20], 2   ;compare [rbp-20] , 2; 0
	sete	al
	or	eax, edx                ;eax <- eax OR edx; 0
	test	al, al                                     ; 0
	je	.L2                     ;conditional jump to L2
	mov	eax, 1                  ;eax <- 1;
	jmp	.L3                     ;unconditional jump to L3
.L2:
	mov	eax, DWORD PTR [rbp-20] ;eax <- [rbp-20]; 4
	sub	eax, 1                  ;eax <- eax -1; 3
	mov	edi, eax                ;edi <- eax; 3
	call	fib                     ;call function fib;
	mov	ebx, eax                ;ebx <- eax;  1
	mov	eax, DWORD PTR [rbp-20] ;eax <- [rbp-20];  3
	sub	eax, 2                  ;eax <- eax -2; 1
	mov	edi, eax                ;edi <- eax; 1
	call	fib                     ;call function fib;
	add	eax, ebx                ;eax <- eax + ebx; 1
.L3:
	add	rsp, 24                 ;rsp <- rsp + 24;
	pop	rbx                     ;rbx <- stack[top-2];
	pop	rbp                     ;rbp <- stack[top-1];
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fib, .-fib
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp                    ;stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp               ;rbp <- rsp;
	.cfi_def_cfa_register 6
	sub	rsp, 32                ;rsp <- rsp -32;
	mov	DWORD PTR [rbp-20], edi;[rbp-20] <- edi;
	mov	QWORD PTR [rbp-32], rsi;[rbp-32] <- rsi;
	mov	edi, 4                 ;edi <- 4; 4      
	call	fib                    ;call function fib;
	mov	DWORD PTR [rbp-4], eax ;[rbp-4] <- eax; 3
	mov	eax, 0                 ;eax <- 0; 0
	leave  
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
