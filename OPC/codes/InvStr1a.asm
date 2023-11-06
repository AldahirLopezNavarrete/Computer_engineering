TITLE Program Template          (InvStr.asm)

; Este programa invierte un String.

INCLUDE Irvine32.inc

.data
unaCade BYTE "Gabriel Garcia Marquez-123",0
tamCade DWORD LENGTHOF unaCade - 1
adios BYTE "ADIOS.",0

.code
main PROC
    ; Despliega el string en estado original.
	call Crlf
	mov edx,OFFSET unaCade
	call Writestring
	call Crlf

    ; Guardar el nombre en el stack, caracter por caracter.

    ; Pop el nombre del stack, en reversa,
    ; y almacenarlo en el arreglo unaCade.

    ; Despliega el string invertido.

	; ADIOS
    call Crlf
	mov edx,OFFSET adios
	call WriteString
	call Crlf

	EXIT
main ENDP

END main