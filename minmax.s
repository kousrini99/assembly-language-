	.file	"minmax.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ;stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ;rbp <- rsp ; 
	.cfi_def_cfa_register 6
	sub	rsp, 64 ; rsp <- rsp-64 ;
	mov	DWORD PTR [rbp-52], edi ; [rbp-52] <- edi;
	mov	QWORD PTR [rbp-64], rsi ; [rbp-64] <- rsi;
	mov	rax, QWORD PTR fs:40    ; 7676341584976984832;
	mov	QWORD PTR [rbp-8], rax  ; [rbp-8] <- rax ;
	xor	eax, eax                ; eax <- eax ^ eax ; 0
	mov	DWORD PTR [rbp-32], 1   ; [rbp-32] <- 1; 1
	mov	DWORD PTR [rbp-28], 2   ; [rbp-28] <- 2; 2
	mov	DWORD PTR [rbp-24], 3   ; [rbp-24] <- 3; 3
	mov	DWORD PTR [rbp-20], 4   ; [rbp-20] <- 4; 4
	mov	DWORD PTR [rbp-16], 5   ; [rbp-16] <- 5; 5
	mov	eax, DWORD PTR [rbp-32] ; eax <- [rbp-32] ; 1
	mov	DWORD PTR [rbp-44], eax ; [rbp-44] <- eax ;1
	mov	eax, DWORD PTR [rbp-32] ; eax <- [rbp-32] ; 1
	mov	DWORD PTR [rbp-40], eax ; [rbp -40] <- eax ; 1
	mov	DWORD PTR [rbp-36], 1   ; [rbp-36] <- 1; 1
	jmp	.L2                     ; goto block L2
.L5:
	mov	eax, DWORD PTR [rbp-36] ; eax <- [rbp-36]; 1
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4] ; eax <-[rbp-32+rax*4] ; 1
	cmp	eax, DWORD PTR [rbp-44] ; compare both operands ; false
	jle	.L3                     ; goto L3(conditional)
	mov	eax, DWORD PTR [rbp-36] ; eax <- [rbp-36] ; 1
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4] ;same as above ; 2
	mov	DWORD PTR [rbp-44], eax       ;[rbp-44] <-eax; 2
.L3:
	mov	eax, DWORD PTR [rbp-36]  ;  eax <- [rbp-36] ; 1
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]  ;same as above
	cmp	eax, DWORD PTR [rbp-40]      ; compare both the operands ; 1 
	jge	.L4                          ; conditional jump to L4
	mov	eax, DWORD PTR [rbp-36]      ; same as above
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4] ; same as above
	mov	DWORD PTR [rbp-40], eax       ; same as above
.L4:
	add	DWORD PTR [rbp-36], 1        ; [rbp-36] <- [rbp-36] + 1;
.L2:
	cmp	DWORD PTR [rbp-36], 4 ; compares 2 operands ; 1
	jle	.L5  ; goto L5(conditional)
	mov	eax, 0                ; eax <- 0; 0
	mov	rdx, QWORD PTR [rbp-8] ; rdx <- [rbp-8] ;7676341584976984832
	xor	rdx, QWORD PTR fs:40  ; same as above ; 0 
	je	.L7    ; goto L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
