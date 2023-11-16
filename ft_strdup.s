section .text
global ft_strdup

ft_strdup:
	xor		rcx, rcx			; Clear rcx to use it as a counter
.count_length:
	cmp		byte [rdi + rcx], 0	; Check for null-terminator
	je		.allocate_memory	; Jump if equal zero
	inc		rcx					; Incrementing counter by 1
	jmp		.count_length		; Jump to count_length
.allocate_memory:
	inc		rcx					; Include null-terminator in the length
	mov		rax, 8				; Size of a pointer in bytes
	mul		rcx					; Multiply RCA by RCX
	mov		rdi, rax			; Set rdi to the size needed for the new string
	mov		rax, 0x1			; syscall number for brk
	mov		rdi, 0				; Null pointer, request space
	syscall
	cmp		rax, -1				; Check for error in memory allocation
	je		.error				; Jump if equal zero to .error
	mov		rsi, rax			; rax contains the address of the allocated memory
	mov		rdx, rcx			; rcx contains the length of the string
	rep		movsb
	mov rax, rsi				; Return the address of the new string
	ret
.error:
	mov rax, 0					; Set return to false
	ret
