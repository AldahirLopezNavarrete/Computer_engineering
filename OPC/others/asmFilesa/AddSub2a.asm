TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

; Definitions of the author
INCLUDE Irvine32.inc

.data
val1     dword  10003h
val2     dword  20000h
alfa     dword  ?

.code
main PROC
	mov EBX, -4  			; ID of this running
	mov	eax, val1			; EAX= 10003h
	Call DumpRegs			; display the registers & flags
	add	eax, 40000h			; EAX= ????
	Call DumpRegs			; display the registers & flags
	sub	eax, val2			; EAX= ????
	Call DumpRegs			; display the registers & flags
	mov alfa, eax			; alfa= ????
	add alfa, 74h			; alfa= ????
	mov ecx, alfa			; EAX & ECX= ????
	Call DumpRegs			; display the registers & flags

	Exit					; exit of the process
main ENDP

END main