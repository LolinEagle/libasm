section .text
global ft_strdup
extern ft_strcpy
extern ft_strlen
extern malloc

ft_strdup:
	call	ft_strlen	; Call strlen to know the size we need to allocate
	add		rax, 1		; Add one for null terminator
	push	rdi			; Push string for later
	mov		rdi, rax	; Move size to first argument
	call	malloc		; Call memory allocate
	test	rax, rax	; Check if malloc fail
	je		.malloc		; Jump if equal zero
	pop		rcx			; Move string to RCX
	mov		rdi, rax	; Move memory to first argument (dest)
	mov		rsi, rcx	; Move string to second argument (src)
	call	ft_strcpy	; Call strcpy
	ret
.malloc:
	mov		rax, 0		; Return null pointer to indicate failure
	ret
