;;; EX1
;;; bullet number 5
;;; bounce pattern
.org 8000h
    ; Move in then move out
    mov p1, #10000001b
    mov r1, #0ffh
    lcall wait
    mov p1, #01000010b
    mov r1, #0ffh
    lcall wait
    mov p1, #00100100b
    mov r1, #0ffh
    lcall wait
    mov r1, #0ffh
    mov p1, #00011000b
    lcall wait
    ;;;expand out
    mov p1, #00011000b
    mov r1, #0ffh
    lcall wait
    mov p1, #00100100b
    mov r1, #0ffh
    lcall wait
    mov p1, #01000010b
    mov r1, #0ffh
    lcall wait
    mov r1, #0ffh
    mov p1, #10000001b
    lcall wait
    ajmp 8000h
;;; the wait function gets its data from r1 and does increments of ~ #60h instructions
wait:
    mov r0,#60h ; 60h cycles per subwait (+ call costs)
    lcall subwait
    djnz r1, wait
    ret
subwait:
    djnz r0,subwait ; clear out r0
    ret

;leave this here

;if you want to be able to compile
