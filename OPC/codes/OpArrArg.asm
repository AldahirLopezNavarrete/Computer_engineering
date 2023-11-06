TITLE Program Template          (OpArrArg.asm)

; Ejercicio BN
; Este programa llama un procedimiento con pasaje por stack.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

;SIMBOLOS
mcr=0dh
mlf=0ah
mnul=0h

.DATA
; PROC main
arrayi SDWORD 40h, 20h, 30h, 50h, 15h
nuni DWORD LENGTHOF arrayi
arrayr SDWORD 5 DUP(?)
suma SDWORD ?

txti BYTE mcr,mlf,"DumpMem de arrayi.",mnul
txtr BYTE mcr,mlf,"DumpMem de arrayr.",mnul
txts BYTE mcr,mlf,"Suma de elementos de arrayi = ",mnul
adios BYTE mcr,mlf,"ADIOS.",mnul

.CODE
main PROC

    ; call sycArrdw(arrayi, nuni, arrayr)
    ; ???
    call sycArrdw
    ; ???

    ; Despliega un dump de memoria de arrayi.
    mov edx, OFFSET txti
    call WriteString
    mov ESI, OFFSET arrayi
    mov ECX, nuni
    mov EBX, TYPE arrayi
    call DumpMem
    call Crlf

    ; Despliega un dump de memoria de arrayr.
    mov edx, OFFSET txtr
    call WriteString
    mov ESI, OFFSET arrayr
    mov ECX, nuni
    mov EBX, TYPE arrayr
    call DumpMem
    call Crlf

    mov edx, OFFSET adios
    call WriteString
    call Crlf

    EXIT
main ENDP

.DATA
; PROC sycArrdw, variables locales
arr1d DWORD ?
unidades DWORD ?
arr2d DWORD ?
dirRet DWORD ?

.CODE
sycArrdw PROC
; sycArrdw(arr1d, unidades, arr2d)
; Copia un arreglo dw en otro, restandole 30h a cada elemento del segundo arreglo,
; ademas suma todos los elementos del segundo arreglo.
; Recibe
;     Stack: arr1d@, unidades, arr2d@
; Regresa
;     Stack: suma de los elementos del segundo arreglo
; Varibles automaticas y locales
; arr1d, unidades, arr2d, dirRet

;   A continuación vendría el código
	
    RET
sycArrdw ENDP

END main