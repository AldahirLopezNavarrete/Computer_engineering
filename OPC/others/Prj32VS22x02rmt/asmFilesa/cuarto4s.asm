TITLE *MASM Template	(cuarto4s.asm)*

; Descripcion:
; Representacion de datos almacenados en memoria y uso de DumpMem
; 

INCLUDE Irvine32.inc

.DATA
texto1    BYTE "++++ Representacion de Alfa en DWORD",0
texto2    BYTE "++++ Representacion de Omega en BYTE",0
Omega    LABEL BYTE
Lambda   LABEL WORD
Alfa    DWORD 12345678h    ; How is the DWORD stored in memory?
adios    BYTE "ADIOS", 0

.CODE
; Procedimiento principal
main PROC

    call CrLf
    mov EDX, OFFSET texto1
    call WriteString

    mov ESI, OFFSET Alfa    ; Starting Offest, or Address, of Alfa
    mov ECX, LENGTHOF Alfa    ; 1 element
    mov EBX, TYPE Alfa    ; 4 bytes
    call DumpMem
    call CrLf

    ; ++++++++
    call CrLf
    mov EDX, OFFSET texto2
    call WriteString

    mov ESI, OFFSET Omega    ; Starting Offest, or Address, of Omega
    mov ECX, LENGTHOF Omega + 3   ; 4 elements: (LENGTHOF Omega)+3 
    mov EBX, TYPE Omega    ; 1 bytes
    call DumpMem
    call CrLf    
    ; ++++++++++++

    mov EDX, OFFSET adios        ; despliega "ADIOS"
    call WriteString
    call CrLF
        
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main