%include "ft_strlen.s"
%include "functions.s"

SECTION .bss
sinput:	resb	255

SECTION .data
msg1	db		"Please enter your name: ", 0
msg2	db		"Hello, ", 0

SECTION .text
global  _start

; Passing arguments
;_start:
;	pop		ecx
;nextArg:
;	cmp		ecx, 0
;	jz		noMoreArg
;	pop		eax
;	call	sprintLF
;	dec		ecx
;	jmp		nextArg
;noMoreArg:
;	call	quit

; User input
;_start:
;	mov		eax, msg1
;	call	sprint
;	mov		edx, 255
;	mov		ecx, sinput
;	mov		ebx, 0
;	mov		eax, 3
;	int		128
;	mov		eax, msg2
;	call	sprint
;	mov		eax, sinput
;	call	sprint
;	call	quit

; Count to 10
;_start:
;	mov		ecx, 0
;nextNumber:
;	inc		ecx
;	mov		eax, ecx
;	call	iprintLF
;	cmp		ecx, 10
;	jne		nextNumber
;	call	quit
