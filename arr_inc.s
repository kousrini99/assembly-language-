	.file	"arr_inc.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                    ;stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp               ;rbp <- rsp ;
	.cfi_def_cfa_register 6
	sub	rsp, 64                ;rbp <- rbp - 64; 
	mov	DWORD PTR [rbp-52], edi;[rbp-52] <- edi;
	mov	QWORD PTR [rbp-64], rsi;[rbp-64] <- rsi;
	mov	rax, QWORD PTR fs:40    ; rax <- [fs:40] ;3275154791537847040
	mov	QWORD PTR [rbp-8], rax  ;[rbp-8] <- rax;
	xor	eax, eax                ; eax <- eax XOR eax;0
	mov	DWORD PTR [rbp-32], 1   ;[rbp-32] <- 1; 1
	mov	DWORD PTR [rbp-28], 2   ;[rbp-28] <- 2; 2
	mov	DWORD PTR [rbp-24], 3   ;[rbp-24] <- 3; 3
	mov	DWORD PTR [rbp-20], 4   ;[rbp-20] <- 4; 4
	mov	DWORD PTR [rbp-16], 5   ;[rbp-16] <- 5; 5 
	mov	DWORD PTR [rbp-36], 0   ;[rbp-36] <- 0; 0
	jmp	.L2                     ;goto L2;
.L3:
	mov	eax, DWORD PTR [rbp-36] ;eax <- [rbp-36]; 0
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]; eax <- [rbp-32+rax*4] ; 1
	lea	edx, [rax+5]                 ; edx <- [rax+5]; 6
	mov	eax, DWORD PTR [rbp-36]      ; eax <- [rbp-36]; 0
	cdqe
	mov	DWORD PTR [rbp-32+rax*4], edx; same as above ; 6
	add	DWORD PTR [rbp-36], 1   ; [rbp-36] <- 1;  1
.L2:
	cmp	DWORD PTR [rbp-36], 4  ;comparing [rbp-36] , 4;  1
	jle	.L3                    ;conditonal jump to L3 
	mov	eax, 0                 ; eax <- 0;               0
	mov	rcx, QWORD PTR [rbp-8] ;rcx <- [rbp-8];
	xor	rcx, QWORD PTR fs:40   ;rcx <- rcx XOR fs:40; 0
	je	.L5                    ;conditional jump to L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
