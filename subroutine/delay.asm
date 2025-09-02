CODE SEGMENT
  ASSUME CS:CODE

    START:
      CALL DelayProgram

      MOV AH, 4ch
      INT 21H

  DelayProgram PROC
      MOV CX, 22DH
    CONTINUE:
      DEC cx
      JNZ CONTINUE
      RET
  DelayProgram ENDP

CODE ENDS
END START
