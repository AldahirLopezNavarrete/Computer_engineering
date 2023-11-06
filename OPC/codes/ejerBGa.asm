TITLE Ejercicio ejerBGa

; Descripcion:
; Ejemplo de implementacion de operaciones logicas Booleanas.
; Optimizado manualmente.
; 

INCLUDE Irvine32.inc

.DATA
; Textos para la Consola
mcr=0Dh
mlf=0Ah
mnul=0h
datoA    BYTE "Dato A: ", mnul
datoB    BYTE "Dato B: ", mnul
datoC    BYTE "Dato C: ", mnul
impri01 BYTE "C = B-A: ", mnul
impri02 BYTE "C = B*10: ", mnul
Adios BYTE mcr, mlf, "ADIOS.", mcr, mlf, mnul

; Variables
A    SDWORD ?
B    SDWORD ?
CC    SDWORD ?

.CODE
; Procedimiento principal
main PROC
	mov edx, OFFSET datoA
	call WriteString
      call ReadInt
      mov A, EAX

	mov edx, OFFSET datoB
	call WriteString
      call ReadInt
      mov B, EAX

	mov edx, OFFSET datoC
	call WriteString
      call ReadInt
      mov CC, EAX

	; IF(  (A > B) && (C <= 5)  ) 


	call WriteString
      mov EAX, CC
      call WriteInt
      call CrLf
          		
	; ADIOS
	mov edx,OFFSET Adios
	call WriteString
	
    exit
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main