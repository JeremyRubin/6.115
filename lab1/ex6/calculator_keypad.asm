;;; EX 6
;;; Bullet 4
;;; Calculator which uses keypad
.org 00h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
               ; the main body or loop in the program called start
.org 100h ; and located at 100h in memory
start:
    lcall init ; start the serial port by calling subroutine init
    mov r1, #3 ; set the num digits
    mov acc, #13 ; set the first acc to be a newline
    loop: ; Now, endlessly repeat a loop that
        lcall newline ; put out a newline
        lcall num ; get first number
        push acc ; push result onto stack
        lcall num ; get second number
        pop 050h ; retrieve first number
        mov r7, a ; put the acc to a register
        lcall get_op ; get the operator

        xch a, r7 ; swap the operator and second number
        xch a, 050h ; swap the second and first number
        cjne r7, #2dh, addnum ; jump if symbol not minus sign
            subb a, 050h
            lcall result
            sjmp loop
        addnum:
            add a, 050h ; add first and second numbers
            lcall result
            sjmp loop
result:
  mov b, #10    ; Move down a decimal place
  div ab        ; perform the move
  push b        ; store remainder

  mov b, #10    ; move down a decimal place
  div ab        ; perform move
  push b        ; store remainder

  orl a, #30h   ; acc -> ascii
  lcall sndchr  ; Put out the highest digit

  pop acc       ; get the second highest digit
  orl a, #30h   ; acc -> ascii
  lcall sndchr  ; ouput it

  pop acc       ; get the last digit
  orl a, #30h   ; acc -> ascii
  lcall sndchr  ; output it

  ret

;;Gets the operator from the client
get_op:
    lcall getchr
    lcall sndchr

    xch a, r5
    lcall newline
    xch a, r5
    ret
;; Send a new line (CAREFUL IT CLEARS ACC)
newline:
    ;; Send newlines
    mov a, #10 ; Newline
    lcall sndchr
    mov a, #13 ; Carriage Return
    lcall sndchr
    ret
num:
   lcall getchr ; <- gets a char from keyboard
   lcall sndchr ; -> and echoes on the screen
   anl a, #0Fh  ; Mask the upper nibble in accumulator to extract numeric
   ;mov P1, acc ; Show the character on LED bank
   push acc     ; save the accumulator in stack
   sjmp clrf    ; check if enough digits

clrf:
    djnz r1, num    ; get another num if not enough digits
    lcall newline
                    ;; construct the number in a single byte
    pop 050h        ; pull off the smallest digit
    pop 051h        ; pull off the second smallest digit
    mov a, 051h     ; move the second into a
    mov b, #10      ; move 10 into b
    mul ab          ; resize the second smallest digit
    add a, 050h     ; add the two together
    pop 050h        ; pull out another digit
    xch a, 050h     ; exchange the new digit and the result
    mov b, #100     ; move 100 into b
    mul ab          ; decimal placement on large digit
    add a, 050h     ; finish summing
    mov r1, #3      ; Reset the number count
    ret
init:
                   ;; Keypad
    clr P3.2       ; enable the encoder
    setb p3.3      ; enable 3.3 as input
    mov p1, #0ffh  ; enable 1 as input
 
                   ; Serial
    mov tmod, #20h ; set timer 1 for auto reload - mode 2
    mov tcon, #40h ; run timer 1
    mov th1, #253  ; set 9600 baud with xtal=11.059mhz
    mov scon, #54h ; set serial control reg for
    ret
sndchr:
    clr scon.1
    mov sbuf,a
txloop:
    jnb scon.1, txloop
    ret
getchr:
    jnb ri, get_keypad_chr ; if no data on keyboard check pad
    mov a, sbuf            ; Otherwise, read char
    clr ri                 ; clear flag
    sjmp finish_chr
get_keypad_chr:
    jnb P3.3, getchr ; if data available on pad
    mov a, P1        ; read p1
    wait:            ; wait for the data to clear
    jb p3.3, wait    ; wait for key lift
    lcall bin        ; convert to ascii codes
finish_chr:
    anl a, #7fh    ; Mask values
    ret
bin:
    anl a, #0Fh   ; Mask off the upper nibble
    inc a         ; increment so that we go past the ret opcode
    movc a, @a+pc ; PC has the ret below, so we go a+pc -> a to pull from table
   ret
    ;KEY ORDER WILL BE:
    ;   '1','2','3','A','4','5','6','B','7','8','9','C','*','0','#','D'
    .db '1','2','3','A','4','5','6','B','7','8','9','C','+','0','-','D'

;Leave this newline here

;If you want to be able to compile





