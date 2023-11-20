section .text
global ft_strcmp

ft_strcmp:
	xor		rax, rax		; Set RAX to 0
	xor		rdx, rdx		; Set RDX to 0
.compare_loop:
	mov		al, [rdi]		; Load characters from the s1
	mov		dl, [rsi]		; Load characters from the s2
	cmp		al, 0			; Check if both characters are null terminators
	je		.done			; Jump if equal zero
	cmp		dl, 0			; Check if both characters are null terminators
	je		.done			; Jump if equal zero
	cmp		al, dl			; Compare the characters
	jne		.done			; Jump if not equal zero
	inc		rdi				; Increment the pointers of s1
	inc		rsi				; Increment the pointers of s2
	jmp		.compare_loop	; If not null terminators, continue the loop
.done:
	cmp		rax, rdx		; Set condition codes according to S1 - S2
	je		.equal_ret		; Jump if equal zero
	js		.s1_smallest	; Jump if negative
	jns		.s2_smallest	; Jump if nonnegative
.equal_ret
	mov		rax, 0
	ret
.s1_smallest:
	mov		rax, -1
	ret
.s2_smallest:
	mov		rax, 1
	ret
