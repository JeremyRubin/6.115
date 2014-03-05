;;; EX5
;;; Calculator with ascii numeric return
.org 00h             ; power up and reset vector
    ljmp start       ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 100h            ; and located at 100h in memory
start:
    lcall init           ; start the serial port by calling subroutine init
    mov r1, #3           ; set the num digits
    mov acc, #13         ; set the first acc to be a newline
    loop:                ; Now, endlessly repeat a loop that
        lcall newline    ; put out a newline
        lcall num        ; get first number
        push acc         ; push result onto stack
        lcall num        ; get second number
        pop 050h         ; retrieve first number
        mov r7, a        ; put the acc to a register
        lcall op         ; get the operator

        xch a, r7                ; swap the operator and second number
        xch a, 050h              ; swap the second and first number
        cjne r7, #2dh, addnum    ; jump if symbol not minus sign
            subb a, 050h
            lcall result
            sjmp loop
        addnum:
            add a, 050h        ;  add first and second numbers
            lcall result
            sjmp loop
result:
  mov P1, acc      ; put the acc on the led

  mov b, #10   ; Move down a decimal place
  div ab       ; perform the move
  push b       ; store remainder

  mov b, #10   ; move down a decimal place
  div ab       ; perform move
  push b       ; store remainder

  orl a, #30h  ; convert to ascii
  lcall sndchr ; Put out the highest digit

  pop acc      ; get the second highest digit
  orl a, #30h  ; convert to ascii
  lcall sndchr ; ouput it

  pop acc      ; get the last digit
  orl a, #30h  ; convert to ascii
  lcall sndchr ; output it
  ret
  
;;Gets the operator from the client
op:
    lcall getchr
    lcall sndchr
    mov P1, acc   ; put the acc on the port
    xch a, r5     ; swap the acc into r5
    lcall newline ; send newline
    xch a, r5     ; swap back
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
   lcall getchr  ; <- gets a char from pc keyboard
   lcall sndchr  ; -> and echoes on the screen
   anl a, #0Fh   ; Mask the upper nibble in accumulator to extract numeric
   mov P1, acc   ; Show the character on LED bank
   push acc      ; save the accumulator in stack
   sjmp clrf     ; check if enough digits

clrf:
    djnz r1, num    ; get another num if not enough digits
    lcall newline 
    ;; construct the number in a single byte
    pop 050h          ; pull off the smallest digit
    pop 051h          ; pull off the second smallest digit
    mov a, 051h       ; move the second into a 
    mov b, #10        ; move 10 into b
    mul ab            ; resize the second smallest digit
    add a, 050h       ; add the two together
    pop 050h          ; pull out another digit
    xch a, 050h       ; exchange the new digit and the result
    mov b, #100       ; move 100 into b
    mul ab            ; decimal placement on large digit
    add a, 050h       ; finish summing
    ;; return to caller
    mov r1, #3 ; Reset the number count
    ret
init:
    mov tmod, #20h        ; set timer 1 for auto reload - mode 2
    mov tcon, #40h        ; run timer 1
    mov th1,  #253        ; set 9600 baud with xtal=11.059mhz
    mov scon, #54h        ; set serial control reg for
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
    ret
;Leave this newline here

;If you want to be able to compile
