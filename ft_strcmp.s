section .text
global ft_strcmp

ft_strcmp:
	xor		rax, rax		; Set the value of RAX to 0
.compare_loop:
	mov		al, [rdi]		; Load characters from the s1
	mov		bl, [rsi]		; Load characters from the s2
	cmp		al, bl			; Compare the characters
	je		.equal			; Jump if equal zero
	jne		.done			; Jump if not equal zero
.equal:
	inc		rdi				; Increment the pointers of s1
	inc		rsi				; Increment the pointers of s2
	cmp		al, 0			; Check if both characters are null-terminators
	je		.done			; Jump if equal zero
	jmp		.compare_loop	; If not null-terminators, continue the loop
.done:
	sub		rax, rbx		; Calculate the result based on the comparison
	ret
