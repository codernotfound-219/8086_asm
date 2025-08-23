.MODEL SMALL
.STACK 100H

.DATA
  hello DB 'Hello there!$'      ; $ ends the DOS string

.CODE
  MOV AX, @DATA
  MOV DS, AX

  MOV DX, OFFSET hello
  MOV AH, 9
  INT 21H

  MOV AH, 4CH
  INT 21H

END
