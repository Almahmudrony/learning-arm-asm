.global mainmain:  push {ip, lr}  MOV R6, #0 @offset to dataloop:  LDR R0, =output @load addr of output string  LDR R5, =nums @ addr of string to R5  LDR R4,[R5,R6] @load current num from R5 with offset R6  MOV R1,R4 @move num for output  BL printf  CMP R6,#16    @ 0 plus 4*4bytes for 5 entries in array  ADD R6,R6, #4 @inc offset by 4 bytes  BNE loop_exit:  POP {ip, lr}  MOV R1, #0  MOV R7, #1  SWI 0nums:.word 5,2,7,1,8.dataoutput:.asciz "%d\n"