TITLE EjerBIa, primer ejercicio
; Uso de macro condicionales selectivas y repetitivas.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

; SÍMBOLOS
micr = 0Dh
milf = 0Ah
minul = 00h

.DATA
n	DWORD ?
; Textos para despliegue
txtn	BYTE micr, milf, "Teclee el dato N: ", minul
txtst	BYTE "Siguiente termino: ", minul
error BYTE micr, milf, "ERROR. TRY AGAIN, out of range N: ", minul
adios BYTE micr, milf, "ADIOS.", micr, milf, minul

.CODE
main PROC
	mov EDX, OFFSET txtn
	call WriteString
	call ReadDec        ; Dato en EAX, sin signo
	call Crlf

	; ???

	mov EDX, OFFSET adios
	call WriteString
	EXIT
main ENDP

END main