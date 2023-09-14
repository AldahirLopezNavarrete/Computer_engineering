TITLE Add and Subtract, Version 1         (AddSub1.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in the general register EAX.

.386
.model flat, stdcall
.stack 4096

; Windows function headers
ExitProcess PROTO, dwExitCode: DWORD
DumpRegs PROTO

.data
val1     dword  10000h
val2     dword  20000h
alfa     dword  ?

.code
main PROC
	mov	eax, val1			; EAX= 10000h
	INVOKE DumpRegs			; display the registers & flags
	add	eax, 40000h			; EAX= ???
	INVOKE DumpRegs			; display the registers & flags
	sub	eax, val2			; EAX= ???
	INVOKE DumpRegs			; display the registers & flags
	mov alfa, eax			; alfa= ????
	add alfa, 74h			; alfa= ????
	mov ecx, alfa			; EAX & ECX= ????
	Call DumpRegs			; display the registers & flags

	INVOKE ExitProcess, 0	; exit of the process
main ENDP

END main