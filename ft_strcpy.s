section .text
global ft_strcpy

ft_strcpy:
	xor		rax, rax			; Set the value of RAX to 0
.copy_loop:
	cmp		byte [rsi + rax], 0	; Check if null terminators
	je		.done				; Jump if equal zero (true)
	mov		cl, [rsi + rax]		; Move rsi[rax] in RCX
	mov 	[rdi + rax], cl		; Move RCX to rdi[rax]
	inc		rax					; Increment RAX
	jmp		.copy_loop			; Jump to copy_loop
.done:
	mov		cl, 0				; Move null terminators to RCX
	mov		[rdi + rax], cl		; Move null terminators to the end of dest 
	mov		rax, rdi			; Move dest to return value
	ret
