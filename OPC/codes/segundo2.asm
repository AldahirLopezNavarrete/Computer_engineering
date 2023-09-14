TITLE MASM Template (segundo2.asm)

; Descripcion:
; Segundo ejercicio en ensamblador.

INCLUDE Irvine32.inc

.DATA
uno    BYTE 1, 2
dos    WORD 3, 4, 5
tres   DWORD 7, 8
txti   BYTE "Total (int): ", 0

.CODE
; Procedimiento principal
main PROC
    ; Imprimir el contenido de la lista "dos" en EAX, EBX y ECX
    mov eax, dos[0]
    mov ebx, dos[2]
    mov ecx, dos[4]

    call DumpRegs ; Imprimir los registros EAX, EBX y ECX

    ; Hacer DumpMem de las listas "uno" y "dos"
    lea esi, uno
    lea edi, dos
    mov ecx, LENGTHOF(uno) ; Longitud de la lista uno en bytes
    call DumpMem
    mov ecx, LENGTHOF(dos) ; Longitud de la lista dos en bytes
    call DumpMem

    ; Suma de los segundos valores de cada lista
    movsx eax, word ptr [uno+1] ; Cargar el segundo valor de la lista uno (signo extendido a 32 bits)
    add eax, word ptr [dos+2]  ; Sumar el segundo valor de la lista dos
    mov edx, 0                 ; Limpiar edx para la extensión de la suma
    call DumpRegs              ; Imprimir los registros antes de la suma
    add eax, edx               ; Realizar la suma
    call DumpRegs              ; Imprimir los registros después de la suma

    ; Uso general de mapeado de EAX
    mov eax, 42                 ; Colocar el valor 42 en eax
    call DumpRegs               ; Imprimir el contenido de eax

    ; Despedirse lógicamente antes de parar (exit)
    exit                         ; Termina la corrida del programa
main ENDP
; Termina el procedimiento principal

; Termina el área de ensamble
END main
