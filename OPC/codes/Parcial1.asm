Completa el siguiente codigo en ensamblador:
TITLE *MASM Template	(198069ALN1er-B.asm)*
;

INCLUDE Irvine32.inc

.DATA
Beta DWORD 9ABCDEF1h, 12345678h
SoyCulMsg BYTE "Soy cul198069, nom ALN",0

.CODE
; Procedimiento principal
; Se pide hacer dos intercambios en los valores de Beta, intercambiando primeramente
; el espacio ocupado por 9A con 78, y luego el espacio ocupado por DE con 34. De manera que
; quedara despues de los intercambios 78BC34F1h, 12DE569Ah

main PROC
     ; el programa debe imprimir: Soy cul193456, nom WXYZ
     mov EDX, OFFSET SoyCulMsg 
     call WriteString
     ; Estado inicial de Beta: ...
     mov EAX, Beta[0]
     call DisplayHex
     call Crlf

     ; Realizar los intercambios
     mov EAX, Beta[0]
     XCHG AL, AH
     ROR EAX, 8 ; rotacion a la derecha
     mov Beta[0], EAX

     mov EAX, Beta[1]
     XCHG AL, AH
     ROR EAX, 8
     mov Beta[1], EAX

     ; Estado final de Beta: ...
    call DumpRegs
    
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main
