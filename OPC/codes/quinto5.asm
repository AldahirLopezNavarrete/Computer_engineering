TITLE *MASM Template	(quinto5.asm)*

; Descripcion:
; Uso de "Type" PTR 

INCLUDE Irvine32.inc

.DATA
texto    BYTE "--¿como Hola estan?", 0
adios    BYTE "ADIOS", 0

.CODE
; Procedimiento principal
main PROC

    call CrLf
    mov EDX, OFFSET texto        ; estado inicial de "texto"
    call WriteString
    call CrLf

    ; ++++++++
    
    ; ++++++++++++

    mov EDX, OFFSET adios        ; despliega "ADIOS"
    call WriteString
    call CrLf
        
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main