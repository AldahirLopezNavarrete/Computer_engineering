TITLE Ejercicio Suma de los elementos de un arreglo

; Descripcion:
; Ejemplo de uso de direccionamiento indirecto con operandos indirectos,
; en la suma de elementos de un arreglo.
; Todas las impresiones enteras se haran en Hexadecimal.

; Irvine Library procedures and functions
INCLUDE Irvine32.inc

.DATA
; Variables
arraySD SDWORD 1001h, 2002h, 3003h, 4004h, 5005h        ; en Hexadecimal

; Textos para la Consola
mcr = 0dh
mlf = 0ah
mnul = 0h
prtit 	BYTE mcr, mlf, "Ejercicio arreglo suma con operandos indirectos", mcr, mlf, mnul
adios 	BYTE mcr, mlf, "ADIOS.", mcr, mlf, mnul
prtot 	BYTE mcr, mlf, "Total: ", mnul

.CODE
; Procedimiento principal
main PROC
    mov edx, OFFSET prtit
    call WriteString
    call CrLf
    
    mov ESI, offset arraySD
    mov ECX, 0    ; acumulador
    mov EBX, 0    ; variable de control
        	
    ; ***** COMPLETAR

    ; ***** COMPLETAR
      
    ; Total
    	
    ; ADIOS
    mov edx, OFFSET adios
    call WriteString
    call Crlf
    
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main