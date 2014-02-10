;;; Try to set a fun pattern
.org 8000h
    mov P1, #10101010b ; Set an alternating pattern with binary
    loop:
        sjmp loop
;Leave this here

;If you want to be able to compile
