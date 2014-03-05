;;; EX1
;;; Bullet number 3
;;; Set only the msb, set the lsb, then clear the msb
.org 8000h
    mov P1, #80h
    setb P1.0
    clr P1.7
loop:
    sjmp loop
;Leave this here

;If you want to be able to compile
