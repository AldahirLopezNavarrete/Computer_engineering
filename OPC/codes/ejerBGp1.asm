TITLE Ejercicio ejerBG sol

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
    ; (A > B)
    MOV EBX, B
    CMP A, EBX
    JLE eqelse    ; salta por (A > B) falso a else
    ; (C <= 5)
    CMP CC, 5
    JG eqelse     ; salta por (A > B) && (C <= 5) falso a else
    ; THEN: verdadero de (A > B) && (C <= 5)
        sub EBX, A
        mov CC, EBX
        mov edx, OFFSET impri01
    JMP eqfinif
    ; ELSE
eqelse:
        imul EBX, 10
        mov CC, EBX
        mov edx, OFFSET impri02
eqfinif:

    call WriteString
    mov EAX, CC
    call WriteInt
    call CrLf
          		
    ; ADIOS
    mov edx,OFFSET Adios
    call WriteString
	
    EXIT
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main