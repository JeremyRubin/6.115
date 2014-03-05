;;; EX3
;;; Bullet point 2
;;; Get 65 chars from keyboard and then line wrap
.org 00h             ; power up and reset vector
    mov P1, #00h
    ljmp start       ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 100h            ; and located at 100h in memory
start:
    lcall init       ; start the serial port by calling subroutine init
    loop:            ; Now, endlessly repeat a loop that
        lcall getchr ; <- gets a char from pc keyboard
	mov P1, acc  ; Show the character on LED bank
        lcall sndchr ; -> and echoes on the screen
	sjmp clrf
clrf:
    djnz r1, loop    ; return to loop if not base case
    mov r1, #65      ; reset counter
    mov a, #10       ; newline
    lcall sndchr
    mov a, #13       ; carriage return
    lcall sndchr
    sjmp loop        ; return to loop
	
init:
    mov r1, #65     ; initialize line size to 65
    mov tmod, #20h  ; set timer 1 for auto reload - mode 2
    mov tcon, #40h  ; run timer 1
    mov th1,  #253        ; set 9600 baud with xtal=11.059mhz
    mov scon, #54h  ; set serial control reg for
    ret
getchr:
    jnb ri, getchr
    mov a, sbuf
    anl a, #7fh
    clr ri
    ret
sndchr:
    clr scon.1
    mov sbuf,a
txloop:
    jnb scon.1, txloop
    RET
;Leave this here

;If you want to be able to compile
