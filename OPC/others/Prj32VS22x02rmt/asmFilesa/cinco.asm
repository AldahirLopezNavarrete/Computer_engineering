TITLE *MASM Template	(MasmTemplate.asm)*

; Descripcion:
; Pruebas de ReadString y WriteString

; Libreria de Funciones de Irvine
INCLUDE Irvine32.inc

.DATA
    ; Directivas de almacenamineto y tipos de datos
    bufferR  BYTE 81 DUP(0)
    charCountR  DWORD ?

.CODE
; Procedimiento principal; inicia main()
main PROC

    ; Instrucciones, mnemónicos
    MOV  EDX, OFFSET bufferR
    MOV  ECX, 81
    CALL  ReadString
    MOV  charCountR, EAX
      call Crlf
      call WriteInt
      call CrLf
      ;modificar el segundo caracter de bufferR
      add bufferR+1, 1
      mov EDX, OFFSET bufferR
      call WriteString
      call Crlf

    EXIT
main ENDP
; Termina el procedimiento principal

; Termina el area de Ensamble
END main
