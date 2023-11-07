%include "ft_strlen.s"

SECTION .data
msg1	db	"Bonjour.", 10
msg2	db	"Bonsoir !", 10

SECTION .text
global  _start
_start:
	mov		eax, msg1
	call	sprint
	mov		eax, msg2
	call	sprint
	call	quit
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
quit:
	mov		ebx, 0
	mov		eax, 1
	int		128
	ret
