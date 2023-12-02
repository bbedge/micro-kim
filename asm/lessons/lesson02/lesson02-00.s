; Lesson 02-00
; Отображение значений на дисплее

; Zero pages
INH     =     $F9       ; INPUT BUFFER     (right display)
POINTL  =     $FA       ; LSB OF OPEN CELL (middle display)
POINTH  =     $FB       ; MSB OF OPEN CELL (left display)

; The monitor routines
SCAND   =   $1F1F       ; display routine
;
    .org $0200
;
START
    lda #$00            ; put zerto to A
    sta POINTH          ; 
    sta POINTL          ;
    sta INH             ;
;
LOOP
    jsr SCAND           ; light up
    jmp LOOP            ;