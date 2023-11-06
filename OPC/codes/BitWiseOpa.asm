TITLE Ejercicio BitWiseOp

; Descripcion:
; Ejemplo de uso de instrucciones lógicas bitwise AND, OR, XOR y NOT.

INCLUDE Irvine32.inc

; Mis simbolos
mcr=0Dh
mlf=0Ah
mnul=00h

.DATA
; Variables
fte    BYTE 00111011b
	
; Textos para la Consola
abw BYTE mcr, mlf, "Ejemplo de AND bitwise.", mnul
obw BYTE mcr, mlf, "Ejemplo de OR bitwise.", mnul
xbw BYTE mcr, mlf, "Ejemplo de XOR bitwise.", mnul
nbw BYTE mcr, mlf, "Ejemplo de NOT bitwise.", mnul
adios BYTE mcr, mlf, "ADIOS.", mcr, mlf, mnul
 
.CODE
; Procedimiento principal
main PROC
	mov ECX, 0

	mov edx,OFFSET abw
	call WriteString
	mov CL, fte
	AND CL, 00001111b
	call DumpRegs    ; Revisar ECX y las banderas
    
	mov edx,OFFSET obw
	call WriteString
	mov CL, fte
	OR CL, 00001111b
	call DumpRegs    ; Revisar ECX y las banderas
    
	mov edx,OFFSET xbw
	call WriteString
	mov CL, fte
	XOR CL, 10000000b    ; cambiar MSB 0 a 1
	call DumpRegs    ; Revisar ECX y las banderas
    
	mov edx,OFFSET nbw
	call WriteString
	mov CL, fte
	NOT CL
	call DumpRegs    ; Revisar ECX y las banderas	

	; ADIOS
	mov edx,OFFSET adios
	call WriteString
	
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main