TITLE Ejercicio stack01

; Descripcion:
; Ejemplo de uso del Runtime Stack.

INCLUDE Irvine32.inc

.DATA
Adios BYTE "ADIOS.", 0

.CODE
; Procedimiento principal
main PROC
      ; Cleaning EAX and EBX
      mov EAX, 0
      mov EBX, 0
      
      ; Pushing un entero de 32 bits
      
      ; Poping out, two 16-bit integers

      ; Display EAX (AX) and EBX (BX)
	
      ; ADIOS
      mov edx,OFFSET Adios
      call WriteString
      call CrLf
	
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main