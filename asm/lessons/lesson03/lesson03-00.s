; Lesson 03-00
; Чтение клавиатуры

; 
INH     =     $F9       ; INPUT BUFFER     (right display)
POINTL  =     $FA       ; LSB OF OPEN CELL (middle display)
POINTH  =     $FB       ; MSB OF OPEN CELL (left display)
;
; The monitor routines
SCAND   =   $1F1F       ; display routine
GETKEY  =   $1F6A       ; getkey routine
;
    .org $0200
;
START
    cld                 ; clear dc mode
    lda #$00            ; put zerto to A
;
STORE
    sta POINTH          ; 
    sta POINTL          ;
    sta INH             ;
    jsr SCAND           ; light up
    jsr GETKEY          ; test key
    jmp STORE           ;