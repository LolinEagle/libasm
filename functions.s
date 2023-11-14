; **************************************************************************** ;
;   String print                                                               ;
; **************************************************************************** ;
sprint:
	push	edx
	push	ecx
	push	ebx
	push	eax
	call	strlen
	mov		edx, eax
	pop		eax
	mov		ecx, eax
	mov		ebx, 1
	mov		eax, 4
	int		128
	pop		ebx
	pop		ecx
	pop		edx
	ret

sprintLF:
	call	sprint
	push	eax
	mov		eax, 10
	push	eax
	mov		eax, esp
	call	sprint
	pop		eax
	pop		eax
	ret

; **************************************************************************** ;
;   Quit                                                                       ;
; **************************************************************************** ;
quit:
	mov		ebx, 0
	mov		eax, 1
	int		128
	ret

; **************************************************************************** ;
;   Count to 10                                                                ;
; **************************************************************************** ;
iprint:
	push	eax		; Number to print
	push	ecx		; Iterators
	push	edx		; Remainder
	push	ebx		; Divider
	mov		ecx, 0
divideLoop:
	inc		ecx
	mov		edx, 0
	mov		ebx, 10
	idiv	ebx
	add		edx, 48
	push	edx		; push edx (string representation) onto the stack
	cmp		eax, 0
	jnz		divideLoop
printLoop:
	dec		ecx
	mov		eax, esp
	call	sprint
	pop		eax
	cmp		ecx, 0
	jnz		printLoop
	pop		ebx
	pop		edx
	pop		ecx
	pop		eax
	ret

iprintLF:
	call	iprint
	push	eax
	mov		eax, 10
	push	eax
	mov		eax, esp
	call	sprint
	pop		eax
	pop		eax
	ret
