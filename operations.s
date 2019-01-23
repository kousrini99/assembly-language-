	.file	"operations.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ;stack[top-0] <-rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [rsp]
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-52], edi ; [rbp-52] <- edi; 1
	mov	QWORD PTR [rbp-64], rsi ; [rbp-64] <- rsi; 140737488346824
	mov	DWORD PTR [rbp-44], 10  ; [rdp-44] <- 10; 10
	mov	DWORD PTR [rbp-40], 3   ; [rbp-40] <- 3 ; 3
	mov	edx, DWORD PTR [rbp-44] ; edx <- [rbp-44] ; 10
	mov	eax, DWORD PTR [rbp-40] ; eax <- [rbp-40] ; 3
 	add	eax, edx                ; eax <- [eax] + [edx] ; 13    
	mov	DWORD PTR [rbp-36], eax ;[rbp-36] <- eax ; 13
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44] ; 10
	sub	eax, DWORD PTR [rbp-40] ;eax <- eax - [rbp-40] ; 7
	mov	DWORD PTR [rbp-32], eax ;[rbp-32] <- eax ; 7
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44] ; 10
	imul	eax, DWORD PTR [rbp-40] ;eax <- eax * [rbp-40] ; 30
	mov	DWORD PTR [rbp-28], eax ;[rbp-28] <- eax ;30
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44] ;10
	cdq
	idiv	DWORD PTR [rbp-40]      ;eax <- eax/[rbp-40] ;3
	mov	DWORD PTR [rbp-24], eax ;[rbp-24] <- eax ; 3
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44] ; 10
	cdq
	idiv	DWORD PTR [rbp-40]      ;same as above
	mov	DWORD PTR [rbp-20], edx ;same as above
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44]; 10
	and	eax, DWORD PTR [rbp-40] ;eax <- eax AND [rbp-40]; 2
	mov	DWORD PTR [rbp-16], eax ;[rbp-16] <- eax ; 2
	mov	eax, DWORD PTR [rbp-44] ;eax <- [rbp-44]; 10
	or	eax, DWORD PTR [rbp-40] ;eax <- eax OR [rbp-40] ; 11
	mov	DWORD PTR [rbp-12], eax ;[rbp-12] <- eax; 11
	mov	eax, 0 ;eax <- 0 ; 0
	pop	rbp  ; rbp <- stack[top-0] ;
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
