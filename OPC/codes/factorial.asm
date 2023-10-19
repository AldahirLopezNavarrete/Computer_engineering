TITLE Factorial

INCLUDE Irvine32.inc

; SÍMBOLOS
micr = 0Dh
milf = 0Ah
minu = 00h

.DATA
n SDWORD ?  ; Modificado a SDWORD para tratarlo como signed
fact DWORD 1
i DWORD 1

; Textos
lee1 BYTE micr, milf, "Teclee el dato N: ", minu
error BYTE micr, milf, "No definido", minu
resultadoPos BYTE "(", 0
entre BYTE "entre", 0
resultadoZero BYTE "0!): 1", 0
resultadoNeg BYTE micr, milf, "(", 0
resultado2 BYTE "!):", 0
cadenaRes BYTE micr, milf, "!):No definido", minu
adios BYTE micr, milf, "ADIOS.", minu

.CODE

; Macro de impresión
myWriteStr  MACRO  buffer
    PUSH  EDX
    MOV  EDX, OFFSET buffer
    CALL  WriteString
    POP  EDX
ENDM

main PROC
    myWriteStr lee1 ; Imprime el mensaje "Teclee un número para calcular su factorial"
    call ReadInt ; Lee un número
    call Crlf

    MOV n, EAX ; Almacena n en la variable 'n'
    
    ; Comprueba si n es un número válido (no negativo)
    .IF n >= 0
        ; Manejo especial para n=0
        .IF n == 0
            myWriteStr resultadoZero ; Imprime "0!): 1"
        .ELSE
            ; Calcula el factorial de n
            MOV EAX, 1 ; Inicializa EAX a 1 (1!)
            MOV ECX, n ; Carga n en ECX
            .WHILE ECX > 0
                IMUL EAX, ECX ; Multiplica EAX por ECX
                DEC ECX ; Decrementa ECX
            .ENDW
            MOV EBX, EAX
            MOV EAX, n
            myWriteStr resultadoPos ; Imprime "("
            call WriteInt ; Imprime el valor de n
            myWriteStr resultado2 ; Imprime "!): "
            MOV EAX, EBX
            call WriteInt ; Imprime el resultado (factorial)
        .ENDIF
    .ELSE
        myWriteStr entre;
        ; Si n es negativo, muestra "("n!): No definido"
        myWriteStr resultadoNeg ; Imprime "("
        call WriteInt ; Imprime el valor de n (negativo)
        myWriteStr cadenaRes; Imprime "!): No definido"
    .ENDIF
    myWriteStr adios ; Imprime "ADIOS."

    EXIT
main ENDP
END main
