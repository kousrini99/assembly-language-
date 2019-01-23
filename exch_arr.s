	.file	"exch_arr.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp           ;stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp      ;rbp <- rsp;
	.cfi_def_cfa_register 6
	sub	rsp, 80       ;rsp <- rsp-80;
	mov	DWORD PTR [rbp-68], edi  ;[rbp-68] <- edi;
	mov	QWORD PTR [rbp-80], rsi  ;[rbp-80] <- rsi;
	mov	rax, QWORD PTR fs:40     ;eax <- fs:40;
	mov	QWORD PTR [rbp-8], rax   ;[rbp-8] <- rax;
	xor	eax, eax                 ;eax <- eax xor eax; 0
	mov	DWORD PTR [rbp-48], 1    ;[rbp-48] <- 1; 1
	mov	DWORD PTR [rbp-44], 2    ;[rbp-44] <- 2; 2
	mov	DWORD PTR [rbp-40], 3    ;[rbp-40] <- 3; 3
	mov	DWORD PTR [rbp-32], 6    ;[rbp-32] <- 6; 6
	mov	DWORD PTR [rbp-28], 7    ;[rbp-28] <- 7; 7
	mov	DWORD PTR [rbp-24], 8    ;[rbp-24] <- 8; 8
	mov	DWORD PTR [rbp-56], 0    ;[rbp-56] <- 0; 0
	jmp	.L2                      ;unconditional jump to L2
.L3:
	mov	eax, DWORD PTR [rbp-56]  ;eax <- [rbp-56]; 0
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4];eax <- [rbp-48+rax*4]; 1
	mov	DWORD PTR [rbp-52], eax      ;[rbp-52] <- eax; 1
	mov	eax, DWORD PTR [rbp-56]      ;eax <- [rbp-56]; 0 
	cdqe
	mov	edx, DWORD PTR [rbp-32+rax*4] ;same as above; 6
	mov	eax, DWORD PTR [rbp-56]       ;eax <- [rbp-56]; 0
	cdqe
	mov	DWORD PTR [rbp-48+rax*4], edx ;same as above; 6
	mov	eax, DWORD PTR [rbp-56]       ;eax <- [rbp-56]; 0
	cdqe
	mov	edx, DWORD PTR [rbp-52]       ;edx <-[rbp-52]; 1
	mov	DWORD PTR [rbp-32+rax*4], edx ;same as above;  1
	add	DWORD PTR [rbp-56], 1         ;[rbp-56] <- 1;  1
.L2:
	cmp	DWORD PTR [rbp-56], 2         ;compare [rbp-56] , 2;  1
	jle	.L3                           ; conditional jump to L3;
	mov	eax, 0                        ;eax <- 0;   0
	mov	rcx, QWORD PTR [rbp-8]        ;rcx <- [rbp-8];
	xor	rcx, QWORD PTR fs:40          ;rcx <- rcx xor fs:40; 0
	je	.L5                           ;conditional jump to L5;
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
