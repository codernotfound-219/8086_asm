STACK SEGMENT
  DB 64 DUP(?)
STACK ENDS

DATA SEGMENT
  ARR DB 21H, 22H, 23H, 25H, 19H, 51H
  SQUARES DB ?
DATA ENDS

CODE SEGMENT
  ASSUME CS:CODE, DS:DATA, SS:STACK

    START:
      MOV AX, DATA
      MOV DS, AX

      MOV SI, OFFSET ARR
      MOV CX, 06H
      XOR BP, BP

    ARR_RUN:
      MOV AL, [SI]
      PUSH CX
      CALL IsPerfect
      INC SI
      POP CX
      LOOP ARR_RUN

      MOV SQUARES, BP

      MOV AH, 4CH
      INT 21H
      
  IsPerfect PROC
      XOR CH, CH 
      MOV CL, AL 

      MOV BL, 00H

    CONTINUE:
      MOV AL, BL
      XOR AH, AH
      MUL BL

      CMP AX, CX
      JA NOT_PERFECT
      JE PERFECT

      INC BL
      JMP CONTINUE

    NOT_PERFECT:
      RET

    PERFECT:
      INC BP
      RET

  IsPerfect ENDP
CODE ENDS
END START
