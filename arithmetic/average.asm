DATA SEGMENT
  NUM1 DB 92H
  NUM2 DB 52H
  AVG DB ?
DATA ENDS

CODE SEGMENT
  ASSUME CS:CODE, DS:DATA

  START:
    MOV AX, DATA
    MOV DS, AX
    MOV AL, NUM1
    ADD AL, NUM2
    XOR AH, AH
    ADC AH, 00H
    MOV BL, 02H
    DIV BL

    MOV AVG, AL

    ; not required for exam (DOS Interrupt)
    MOV AH, 4CH
    INT 21H
CODE ENDS
  END START  ; END source code -> Entry point : START (for execution)
