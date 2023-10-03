TITLE EjerBEg

; Uso de instrucciones selectivas y repetitivas.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

; Mis símbolos
miCr = 0Dh
miLf = 0Ah
miNu = 00h

.DATA
n	DWORD 4    ; 4 valores a leer
tot	DWORD ?
lee1	BYTE miCr, miLf, "Teclee el dato ", miNu
lee2	BYTE ": ", miNu
impPos	BYTE "Valor positivo. ", miCr, miLf, miNu
impNeg	BYTE "Valor negativo. ", miCr, miLf, miNu
impTot	BYTE miCr, miLf, "Suma total: ", miNu
adios BYTE miCr, miLf, "ADIOS.", miCr, miLf, miNu

.CODE
main PROC
; Escriba comentarios y use sangria para los HLLs
	mov tot, 0
	mov EBX, 1        ; Variable de control de While
	;While( EBX <= n ) {
	; ????
	
	mov EDX, OFFSET adios
	call WriteString
	EXIT
main ENDP

END main