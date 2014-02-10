;;; bounce pattern
.org 8000h
    mov P1, #10000001b
    mov R1, #0FFh
    LCALL wait
    mov P1, #01000010b
    mov R1, #0FFh
    LCALL wait
    mov P1, #00100100b
    mov R1, #0FFh
    LCALL wait
    mov R1, #0FFh
    mov P1, #00011000b
    LCALL wait
    ;;;Expand out
    mov P1, #00011000b
    mov R1, #0FFh
    LCALL wait
    mov P1, #00100100b
    mov R1, #0FFh
    LCALL wait
    mov P1, #01000010b
    mov R1, #0FFh
    LCALL wait
    mov R1, #0FFh
    mov P1, #10000001b
    LCALL wait
    ajmp 8000h
;;; the wait function gets its data from R1 and does increments of ~ #60h instructions
wait:
    mov R0,#60h
    LCALL subwait
    DJNZ R1, wait
    RET
subwait:
    DJNZ R0,subwait
    RET

;Leave this here

;If you want to be able to compile
