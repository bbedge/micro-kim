; Lesson 00-00
; Адресация 
;
    .org $0200
;
START:
    lda #$010   ; put $0010 to A
    sta $0011   ; store A to $0011
    ldx #$0011  ; put $0011 to X
    stx $0010   ; store X to $0010
    jmp	$1C4F	; retun to the monitor