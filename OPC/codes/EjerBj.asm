TITLE EjerBJ

; Uso de instrucciones selectivas y repetitivas.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

; SÍMBOLOS
micr = 0Dh
milf = 0Ah
minu = 00h

.DATA
msgInput  BYTE "Teclee un dato: ", minu
msgOutput BYTE "Valor en reversa: ", minu
adios     BYTE micr, milf, "ADIOS.", micr, milf, minu

.CODE
main PROC

    ; Lectura de los cuatro valores enteros decimales y empujarlos al stack
    mov ECX, 4          ; Set the loop counter
readLoop:
    mov EDX, OFFSET msgInput
    call WriteString
    call ReadDec
    push EAX            ; Push the read number onto the stack
    loop readLoop

    ; Escritura de los cuatro valores en orden inverso (desde el stack)
    mov ECX, 4  ; Set the loop counter again
writeLoop:
    pop EAX             ; Pop the top value from the stack
    mov EDX, OFFSET msgOutput
    call WriteString
    call WriteDec
    call Crlf
    loop writeLoop

    ; Despedida
    mov EDX, OFFSET adios
    call WriteString

    exit
main ENDP

END main
