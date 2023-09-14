TITLE *MASM Template	(segundo2.asm)*

; Descripcion:
; Segundo ejercicio en ensamblador.

INCLUDE Irvine32.inc

.DATA
uno    BYTE 1, 2
dos    WORD 3, 4, 5
tres   DWORD 7, 8
txti  BYTE "Total (int): ", 0

.CODE
; Procedimiento principal
main PROC
    ; Imprimir el contenido de la lista "dos" en EAX, EBX y ECX

    ; Hacer DumpMem de las listas "uno" y "dos" 

    ; Suma de los segundos valores de cada lista

    ; Uso general de mapeado de EAX

    ; Despedirse lógicamente antes de parar (exit)
  
    exit    ; termina la corrida del programa
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main