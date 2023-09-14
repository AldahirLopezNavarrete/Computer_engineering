TITLE *MASM Template	(quinto5s1.asm)*

; Descripcion:
; Uso de "Type" PTR
; 

INCLUDE Irvine32.inc

.DATA
texto    BYTE "--¿como Hola estan?", 0
adios    BYTE "ADIOS", 0

.CODE
; Procedimiento principal
main PROC

    mov EDX, OFFSET texto        ; estado inicial de "texto"
    call WriteString
    call CrLf

    ; ++++++++
    mov EBX, DWORD PTR texto+3
    xchg EBX, DWORD PTR texto+8
    mov DWORD PTR texto+3, EBX

    mov EDX, OFFSET texto        ; estado final de "texto"
    call WriteString
    call CrLf
    ; ++++++++++++

    mov EDX, OFFSET adios        ; despliega "ADIOS"
    call WriteString
    call CrLf
        
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main