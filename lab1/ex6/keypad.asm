;;; EX 6
;;; Bullet 1
;;; Read data from keypad
.org 0000h
lcall init
ljmp start

.org 100h
start:
  clr P3.2   ; enable the encoder chip
  setb p3.3  ; enable 3.3 as input
  mov p1, #0ffh   ; enable port 1 as input
  jnb P3.3, start  ; proceed if data avail
  mov a, P1        ; read p1
  lcall sndchr
  wait:    ; wait for the data to clear
    jb p3.3, wait
  sjmp start   ; repeat

sndchr:
    lcall bin ; convert a into ascii
    clr scon.1
    mov sbuf,a
init:
    mov tmod, #20h ; set timer 1 for auto reload - mode 2
    mov tcon, #40h ; run timer 1
    mov th1, #253 ; set 9600 baud with xtal=11.059mhz
    mov scon, #54h ; set serial control reg for
    ret

bin:
    anl a, #0Fh    ; Mask off the upper nibble
    inc a          ; increment so that we go past the ret opcode
    movc a, @a+pc  ; PC has the ret below, so we go a+pc -> a to pull from table
   ret
    .db '1','2','3','A','4','5','6','B'
    .db '7','8','9','C','*','0','#','D'

