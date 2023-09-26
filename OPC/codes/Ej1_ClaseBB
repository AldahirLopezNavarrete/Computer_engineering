.386
.model flat, stdcall
option casemap :none

include \masm32\include\masm32rt.inc

.data
A SDWORD 7
B SDWORD 30
D SDWORD -15
R SDWORD ?
mensaje1 db "El resultado R = ", 0
mensaje2 db "El resultado Rh = ", 0

.code
start:
    ; Realizar la operación
    mov eax, -A             ; EAX = -A
    imul eax, 9             ; EAX = EAX * 9
    idiv B                  ; EAX = EAX / B
    add eax, 1              ; EAX = EAX + 1
    add eax, 100            ; EAX = EAX + 100
    mov R, eax              ; Guardar el resultado en R

    ; Mostrar el resultado en formato decimal
    invoke StdOut, addr mensaje1
    invoke WriteInt, R, 10
    invoke StdOut, addr mensaje2

    ; Mostrar el resultado en formato hexadecimal
    invoke WriteHex, R
    invoke ExitProcess, 0

end start
