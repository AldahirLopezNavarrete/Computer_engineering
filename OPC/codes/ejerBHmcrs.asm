TITLE Ejercicio ejerBHmcrs

; Descripcion:
; Ejemplo de definición de Macros.
; 

INCLUDE Macros.inc

myWriteStr  MACRO  buffer
	PUSH  EDX
	MOV  EDX, OFFSET buffer
	CALL  WriteString
	POP  EDX
ENDM

myDumpMem MACRO address, itemsCount, itemSize
	push ebx
	push ecx
	push esi
	mov  esi,address
	mov  ecx,itemsCount
	mov  ebx,itemSize
	call DumpMem
	pop  esi
	pop  ecx
	pop  ebx
ENDM

; Last line