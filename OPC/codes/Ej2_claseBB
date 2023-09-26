.386
.model flat, stdcall
option casemap :none

include \masm32\include\masm32rt.inc

.data
Svector  WORD 2002h, 4004h, 6006h, 8008h
Cvector  SWORD -2, -4, -6, -8
resultadoSuma SDWORD ?
resultadoProducto SDWORD ?

mensajeSuma db "Suma: ", 0
mensajeProducto db "Producto: ", 0

.code
start:
    ; Suma de los últimos elementos de Svector y Cvector
    movzx eax, word ptr [Svector + 6]   ; Último elemento de Svector (sin signo)
    movsx edx, word ptr [Cvector + 6]   ; Último elemento de Cvector (con signo)
    add eax, edx                        ; Suma con signo
    mov resultadoSuma, eax

    ; Producto de los penúltimos elementos de Svector y Cvector
    movzx eax, word ptr [Svector + 4]   ; Penúltimo elemento de Svector (sin signo)
    movsx edx, word ptr [Cvector + 4]   ; Penúltimo elemento de Cvector (con signo)
    imul eax, edx                       ; Producto con signo
    mov resultadoProducto, eax

    ; Mostrar los resultados
    invoke StdOut, addr mensajeSuma
    invoke WriteInt, resultadoSuma
    invoke CRLF
    invoke StdOut, addr mensajeProducto
    invoke WriteInt, resultadoProducto
    invoke CRLF

    ; Finalizar el programa
    invoke ExitProcess, 0

end start
