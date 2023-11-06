TITLE Ejercicio IOprocs

; Descripcion:
; Ejemplo de uso de instrucciones WriteBin, WriteBinB, ReadChar.

INCLUDE Irvine32.inc

; Mis simbolos
mcr=0Dh
mlf=0Ah
mnul=00h

.DATA
; Textos para la Consola
wrbin BYTE mcr, mlf, "Ejemplo de WriteBin.", mcr, mlf, mnul
wrbinbb BYTE mcr, mlf, "Ejemplo WriteBinB de un Byte.", mcr, mlf, mnul
wrbinbw BYTE mcr, mlf, "Ejemplo WriteBinB de un Word.", mcr, mlf, mnul
wrbinbd BYTE mcr, mlf, "Ejemplo WriteBinB de un DWord.", mcr, mlf, mnul
rdchr BYTE mcr, mlf, "Para continuar teclee un caracter: ", mnul
adios BYTE mcr, mlf, "ADIOS.", mcr, mlf, mnul

.CODE
; Procedimiento principal
main PROC
	; WriteBin
	mov edx, OFFSET wrbin
	call WriteString
	mov EAX, 1A2B3C4Dh
	call WriteBin
	call CrLf

	; ReadChar
	mov edx, OFFSET rdchr
	call WriteString
	call ReadChar    ; AL= caracter ASCII tecleado

	; ADIOS
	mov edx,OFFSET adios
	call WriteString
	
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main