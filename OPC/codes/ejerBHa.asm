TITLE Ejercicio ejerBHa

; Descripcion:
; Ejemplo de invocación de Macros.
; 

INCLUDE Irvine32.inc
; falta algo?

; Símbolos
mcr=0Dh
mlf=0Ah
mnul=00h

.DATA
; Textos para impresión en consola
aplica1    BYTE "APLICA 1 + + +. ", mcr, mlf, mnul
aplica2    BYTE "APLICA 2. - - - -", mcr, mlf, mnul
Adios BYTE mcr, mlf, "ADIOS.", mcr, mlf, mnul

; Variables
A    SDWORD -40, 167h, -380
B    WORD 30h, 10, 200h, 150

.CODE
; Procedimiento principal
main PROC

    myWriteStr aplica1
	
	; ADIOS
	mov edx,OFFSET Adios
	call WriteString
	
    EXIT
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main