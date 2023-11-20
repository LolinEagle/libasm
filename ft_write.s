section .text
global ft_write
extern __errno_location

ft_write:
	mov		rax, 1
	syscall
	test	rax, rax			; Set condition codes according to S1 & S2
	js		.error_write		; Jump if negative
	ret
.error_write:
	neg		rax					; Make RAX negative
	mov		rdx, rax			; Move RAX in RBX
	call	__errno_location	; Call __errno_location
	mov		[rax], rdx			; Save error code to rax
	mov		rax, -1				; Set rax to -1 as return value
	ret
