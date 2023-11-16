section .text
global ft_strcpy

ft_strcpy:
	xor		rax, rax	; Set the value of RAX to 0
.copy_loop:
	mov		al, [rsi]	; Move src to AL
	mov		[rdi], al	; Move AL to dest
	cmp		al, 0		; Check for null terminator
	je		.done		; Jump if equal zero
	inc		rax			; Increment dest to the next character (for return)
	inc		rdi			; Increment dest to the next character
	inc		rsi			; Increment src to the next character
	jmp		.copy_loop	; Jump to copy_loop
.done:
	ret
