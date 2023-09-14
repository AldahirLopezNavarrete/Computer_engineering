TITLE *MASM Template	(cuarto4.asm)*

; Descripcion:
; Representacion de datos almacenados en memoria y uso de DumpMem

INCLUDE Irvine32.inc

.DATA
texto1    BYTE "++++ Representacion de Alfa en DWORD",0
; falta ...
Alfa    DWORD 12345678h    ; How is the DWORD stored in memory?
adios    BYTE "ADIOS", 0

.CODE
; Procedimiento principal
main PROC

    call CrLf
    mov EDX, OFFSET texto1
    call WriteString

    mov ESI, OFFSET Alfa    ; Starting Offest, or Addres, of Alfa
    mov ECX, LENGTHOF Alfa    ; 1 element
    mov EBX, TYPE Alfa    ; 4 bytes
    call DumpMem
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