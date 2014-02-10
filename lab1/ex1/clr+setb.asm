.org 8000h
    mov P1, #80h
    setb P1.0
    clr P1.7
loop:
    sjmp loop
