TITLE EjerBEg

; Uso de instrucciones selectivas y repetitivas.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

; Mis símbolos
miCr = 0Dh
miLf = 0Ah
miNu = 00h

.DATA
n DWORD 4           ; 4 valores a leer
tot DWORD ?
lee1 BYTE miCr, miLf, "Teclee el dato ", miNu
lee2 BYTE ": ", miNu
impPos BYTE "Valor positivo. ", miCr, miLf, miNu
impNeg BYTE "Valor negativo. ", miCr, miLf, miNu
impTot BYTE miCr, miLf, "Suma total: ", miNu
adios BYTE miCr, miLf, "ADIOS.", miCr, miLf, miNu

.CODE
main PROC
; Escriba comentarios y use sangria para los HLLs
    mov tot, 0
    mov ECX, n       ; Utiliza ECX en lugar de EBX para la iteración
inWHILE:
    MOV EAX, OFFSET lee1
    call WriteString
    MOV EAX, OFFSET lee2
    call WriteString

    CMP ECX, 0       ; Compara con ECX en lugar de EBX
    JZ outWHILE       ; Sal de bucle si ECX es 0
    CALL ReadInt
    ADD tot, EAX     ; Suma el valor leído a tot
    CMP EAX, 0
    JGE outIF
    MOV EAX, OFFSET impNeg
    CALL WriteString
outIF:
    MOV EAX, OFFSET impPos
    CALL WriteString
    LOOP inWHILE     ; Reduce ECX y vuelve al inicio del bucle
outWHILE:
    MOV EDX, OFFSET impTot ; Mostrar el mensaje de suma total
    CALL WriteString
    CALL WriteInt     ; Mostrar el valor de 'tot'
    MOV EDX, OFFSET adios
    CALL WriteString
    EXIT
main ENDP
END main
