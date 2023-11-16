section .text
global ft_strlen

ft_strlen:
	xor		rax, rax			; Set the value of RAX to 0
.nextchar:
	cmp		byte [rdi + rax], 0	; Check for null terminator
	je		.return				; Jump if equal zero, condition is met to return
	inc		rax					; Incrementing rax by 1
	jmp		.nextchar			; Jump to nextchar
.return:
	ret
