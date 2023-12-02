; Lesson 01-00
; Установка ячеек 0030-0039 в 0 
;
START
    lda #0      ; 0 to A
    ldx #9      ; 9 to X
;
LOOP
    sta 30,x    ; 0 to 30+x
    dex         ; declement x by 1
    bpl LOOP    ; back if x positive
    brk         ; stop
