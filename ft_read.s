section .text
global ft_read
extern __errno_location

ft_read:
	mov		rax, 0
	syscall
	test	rax, rax			; Set condition codes according to S1 & S2
	js		.error_read			; Jump if negative
	ret
.error_read:
	neg		rax					; Make RAX negative
	mov		rdx, rax			; Move RAX in RBX
	call	__errno_location	; Call __errno_location
	mov		[rax], rdx			; Save error code to rax
	mov		rax, -1				; Set rax to -1 as return value
	ret
