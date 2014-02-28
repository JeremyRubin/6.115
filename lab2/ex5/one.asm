.org 8000h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 8100h ; and located at 100h in memory
start:
    lcall init ; start the serial port by calling subroutine init
	mov dptr, #9000h
	movx a, @dptr
	lcall sndchr
	startloop:
	mov r1, a
	cpl P1.0
    loop: ; Now, endlessly repeat a loop that
	djnz r1, loop
	sjmp startloop

;; Send a new line (CAREFUL IT CLEARS ACC)
newline:
    ;; Send newlines
    mov a, #10 ; Newline
    lcall sndchr
    mov a, #13 ; Carriage Return
    lcall sndchr
    ret
init:
; Keypad
	setb P3.2 ; disable the keypad chip
	setb p3.3 ; enable 3.3 as input
	mov p1, #0ffh ; enable 1 as input
; Serial
    mov tmod, #20h ; set timer 1 for auto reload - mode 2
    mov tcon, #40h ; run timer 1
    mov th1, #253 ; set 9600 baud with xtal=11.059mhz
    mov scon, #50h ; set serial control reg for
    ret
sndchr:
    clr scon.1
    mov sbuf,a
txloop:
    jnb scon.1, txloop
    ret
getchr:
    jnb ri, getchr ; if no data on keyboard check pad
    mov a, sbuf
    clr ri
anl a, #7fh
ret
bin:
    anl a, #0Fh ; Mask off the upper nibble
    inc a ; increment so that we go past the ret opcode
    movc a, @a+pc ; PC has the ret below, so we go a+pc -> a to pull from table
   ret
    ;KEY ORDER WILL BE:
; '1','2','3','A','4','5','6','B','7','8','9','C','*','0','#','D'
.db '1','2','3','A','4','5','6','B','7','8','9','C','+','0','-','D'

;Leave this newline here

;If you want to be able to compile
