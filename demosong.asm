; Compiled using tt_compile.exe V0.1 [02-03-2015]
; Copyright 2015 Richard Cornelisse

; Song: Zelda Theme -just a test song-  
; By:   Huey <org:maktone,natan1>   2013

;	org $c000

; [ Song start data ]
	db $08				; Initial song speed.
	dw .waveform_start 			; Start of the waveform data.
	dw .instrument_start 			; Start of the instrument data.

; [ Song order pointer list ]
		dw .track_0,.track_1,.track_2,.track_2,.track_3,.track_4,.track_5,.track_6		; Sequence step 0 /pattern 0
		dw .track_7,.track_8,.track_9,.track_10,.track_11,.track_12,.track_13,.track_14		; Sequence step 1 /pattern 1
.restart:
		dw .track_15,.track_16,.track_17,.track_18,.track_19,.track_20,.track_21,.track_22		; Sequence step 2 /pattern 2
		dw .track_23,.track_24,.track_25,.track_26,.track_27,.track_28,.track_29,.track_30		; Sequence step 3 /pattern 3
		dw .track_31,.track_32,.track_33,.track_34,.track_35,.track_36,.track_37,.track_38		; Sequence step 4 /pattern 4
		dw .track_39,.track_40,.track_41,.track_42,.track_43,.track_44,.track_45,.track_46		; Sequence step 5 /pattern 5
		dw .track_47,.track_48,.track_49,.track_50,.track_51,.track_52,.track_53,.track_54		; Sequence step 6 /pattern 6
		dw .track_55,.track_56,.track_57,.track_57,.track_58,.track_59,.track_60,.track_61		; Sequence step 7 /pattern 7
		dw .track_62,.track_63,.track_64,.track_65,.track_66,.track_67,.track_68,.track_69		; Sequence step 8 /pattern 8
		dw .track_70,.track_71,.track_72,.track_73,.track_74,.track_75,.track_76,.track_77		; Sequence step 9 /pattern 9
		dw .track_0,.track_1,.track_2,.track_2,.track_3,.track_4,.track_5,.track_6		; Sequence step 10 /pattern 0
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.waveform_start:
	db $00,$70,$50,$20,$50,$70,$30,$00,$50,$7F,$60,$10,$30,$40,$00,$B0,$10,$60,$00,$E0,$F0,$00,$B0,$90,$C0,$10,$E0,$A0,$C0,$F0,$C0,$A0	; Waveform 0
	db $30,$50,$50,$30,$00,$00,$10,$40,$60,$70,$60,$30,$F0,$E0,$E0,$00,$20,$20,$10,$C0,$A0,$90,$A0,$C0,$00,$00,$D0,$B0,$B0,$D0,$00,$00	; Waveform 1
	db $00,$20,$30,$40,$50,$58,$60,$68,$70,$68,$60,$58,$50,$40,$30,$20,$00,$E0,$D0,$C0,$B0,$A0,$98,$90,$88,$90,$98,$A0,$B0,$C0,$D0,$E0	; Waveform 2
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 3
	db $00,$4E,$62,$6D,$75,$7A,$7D,$7E,$7F,$7E,$7D,$7A,$75,$6D,$62,$4E,$00,$B1,$9D,$92,$8A,$85,$82,$81,$80,$81,$82,$85,$8A,$92,$9D,$B1	; Waveform 4
	db $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$7F	; Waveform 5
	db $80,$C8,$20,$7F,$30,$C8,$80,$90,$A8,$C0,$E0,$00,$20,$38,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$38,$20,$00,$E0,$C0,$A8,$90	; Waveform 6
	db $80,$88,$90,$98,$A0,$B0,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$E8,$F0,$F8,$00,$08,$10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70,$78	; Waveform 7
	db $00,$68,$48,$18,$48,$68,$28,$00,$48,$77,$58,$08,$28,$38,$00,$B8,$08,$58,$00,$E8,$F8,$00,$B8,$98,$C8,$08,$E8,$A8,$C8,$F8,$C8,$A8	; Waveform 8
	db $A0,$90,$90,$A0,$A0,$B0,$B0,$B0,$C0,$C0,$D0,$D0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60,$60,$50	; Waveform 9
	db $00,$F8,$F0,$E8,$E0,$D8,$D0,$C8,$C0,$B8,$B0,$A8,$A0,$98,$90,$88,$80,$7F,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08	; Waveform 10
	db $00,$00,$00,$00,$00,$40,$40,$00,$00,$B0,$B0,$B0,$00,$00,$00,$00,$40,$40,$40,$00,$B0,$B0,$00,$00,$00,$00,$40,$40,$00,$00,$B0,$B0	; Waveform 11
	db $00,$20,$30,$40,$50,$58,$60,$68,$70,$68,$60,$58,$50,$40,$30,$20,$00,$E0,$D0,$C0,$B0,$A0,$98,$90,$88,$90,$98,$A0,$B0,$C0,$D0,$E0	; Waveform 12
	db $00,$7F,$00,$80,$A0,$C0,$D8,$F0,$08,$20,$30,$40,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$40,$30,$20,$08,$F0,$D8,$C0,$A0,$80	; Waveform 13
	db $80,$B0,$C0,$10,$1A,$2A,$2C,$1A,$00,$E0,$D0,$E0,$22,$53,$70,$75,$70,$31,$EA,$80,$88,$8A,$8C,$8E,$00,$7F,$75,$73,$62,$00,$C0,$90	; Waveform 14
	db $80,$8E,$A0,$C0,$E0,$00,$20,$3F,$3E,$3C,$3A,$37,$31,$29,$20,$1C,$10,$00,$E6,$C0,$D0,$00,$20,$3F,$10,$E0,$80,$C0,$00,$20,$00,$90	; Waveform 15
	db $01,$2A,$40,$50,$5C,$68,$70,$78,$7F,$78,$70,$68,$5C,$50,$40,$2A,$FF,$D6,$C0,$B0,$A4,$98,$90,$88,$81,$88,$90,$98,$A4,$B0,$C0,$D6	; Waveform 16
	db $00,$40,$7F,$40,$01,$C0,$81,$C0,$01,$40,$7F,$40,$01,$C0,$01,$40,$01,$E0,$01,$20,$01,$F0,$01,$10,$01,$FF,$FF,$FF,$FF,$40,$40,$40	; Waveform 17
	db $00,$40,$7F,$40,$01,$10,$20,$2D,$37,$44,$4E,$59,$63,$6C,$73,$78,$7C,$7F,$7C,$78,$73,$6C,$59,$4E,$44,$37,$2D,$20,$10,$03,$02,$01	; Waveform 18
	db $00,$40,$7F,$40,$10,$01,$EA,$D6,$C3,$B9,$AF,$A4,$9C,$95,$8F,$8A,$86,$83,$81,$83,$86,$8A,$8F,$95,$9C,$A4,$AF,$B9,$C3,$D6,$EA,$FF	; Waveform 19
	db $00,$40,$7F,$40,$00,$C0,$FF,$C0,$05,$EB,$D6,$C3,$B9,$AF,$A4,$9C,$95,$8F,$89,$84,$81,$84,$89,$8F,$95,$9C,$A4,$AF,$B9,$C3,$D6,$EA	; Waveform 20
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$7F,$70,$60,$50,$40,$30,$20,$10	; Waveform 21
	db $00,$30,$50,$60,$70,$60,$50,$30,$00,$D0,$B0,$A0,$90,$A0,$B0,$D0,$00,$40,$60,$70,$60,$40,$00,$C0,$A0,$90,$A0,$C0,$00,$70,$00,$90	; Waveform 22
	db $30,$50,$50,$30,$00,$00,$10,$40,$60,$70,$60,$30,$F0,$E0,$E0,$00,$20,$20,$10,$C0,$A0,$90,$A0,$C0,$00,$00,$D0,$B0,$B0,$D0,$00,$00	; Waveform 23
	db $A0,$90,$90,$A0,$A0,$B0,$B0,$B0,$C0,$C0,$D0,$D0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60,$60,$50	; Waveform 24
	db $00,$7F,$00,$80,$A0,$C0,$D8,$F0,$08,$20,$30,$40,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$40,$30,$20,$08,$F0,$D8,$C0,$A0,$80	; Waveform 25
	db $7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80	; Waveform 26
	db $7F,$80,$7F,$80,$7F,$80,$7F,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$80,$7F,$80,$7F,$80,$7F,$80	; Waveform 27
	db $00,$70,$50,$20,$50,$70,$30,$00,$50,$7F,$60,$10,$30,$40,$00,$B0,$10,$60,$00,$E0,$F0,$00,$B0,$90,$C0,$10,$E0,$A0,$C0,$F0,$C0,$A0	; Waveform 28
	db $80,$88,$90,$98,$A0,$B0,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$E8,$F0,$F8,$00,$08,$10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70,$78	; Waveform 29
	db $00,$00,$00,$00,$00,$78,$78,$00,$00,$80,$80,$80,$00,$00,$00,$00,$78,$78,$78,$00,$80,$80,$00,$00,$00,$00,$78,$78,$00,$00,$80,$80	; Waveform 30
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 31

.instrument_start:
	dw .ins_1,.ins_2,.ins_3,.ins_4,.ins_5,.ins_6,.ins_7,.ins_8,.ins_9,.ins_10,.ins_11,.ins_12,.ins_13,.ins_14,.ins_15,.ins_16,.ins_17,.ins_18,.ins_19,.ins_20
.ins_1:
		db 7					; Waveform
		db .rst_i1-(.ins_1 +2)		; Restart
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0D
		db $11,$0C
		db $11,$0C
		db $11,$0A
		db $11,$09
.rst_i1:
		db $15,$08,$01,$00
		db $15,$08,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $1D,$07,$01,$00
.ins_2:
		db 13					; Waveform
		db .rst_i2-(.ins_2 +2)		; Restart
		db $11,$0A
		db $11,$09
		db $11,$0A
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$07
		db $11,$06
.rst_i2:
		db $11,$05
		db $11,$05
		db $19,$04
.ins_3:
		db 6					; Waveform
		db .rst_i3-(.ins_3 +2)		; Restart
		db $11,$0E
		db $11,$0F
		db $11,$0F
		db $11,$0D
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
		db $11,$08
		db $11,$08
.rst_i3:
		db $15,$07,$01,$00
		db $15,$07,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $15,$07,$01,$00
		db $19,$07
.ins_4:
.ins_5:
.ins_6:
.ins_7:
.ins_8:
.ins_9:
.ins_10:
.ins_11:
.ins_12:
.ins_13:
.ins_14:
.ins_15:
.ins_16:
		db 22					; Waveform
		db .rst_i16-(.ins_16 +2)		; Restart
		db $11,$0F
		db $11,$0F
		db $11,$0E
		db $11,$0D
		db $11,$0C
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i16:
		db $15,$08,$01,$00
		db $11,$08
		db $15,$08,$FF,$FF
		db $19,$08
.ins_17:
		db 31					; Waveform
		db .rst_i17-(.ins_17 +2)		; Restart
		db $15,$0F,$28,$01
.rst_i17:
		db $09,$00
.ins_18:
		db 31					; Waveform
		db .rst_i18-(.ins_18 +2)		; Restart
		db $91,$0F
		db $81,$0D
		db $81,$0D
		db $81,$0D
		db $81,$09
		db $81,$09
		db $81,$09
.rst_i18:
		db $09,$00
.ins_19:
.ins_20:
		db 31					; Waveform
		db .rst_i20-(.ins_20 +2)		; Restart
		db $81,$0F
.rst_i20:
		db $09,$00

; [ Song track data ]
.track_0:
	db $18		;[Note] 25
	db $6F		;[Volume] 15
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_1:
	db $07		;[Note] 8
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C5		;[Wait] 6
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C5		;[Wait] 6
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $03		;[Note] 4
	db $C5		;[Wait] 6
	db $03		;[Note] 4
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $03		;[Note] 4
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_2:
	db $13		;[Note] 20
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C5		;[Wait] 6
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_3:
	db $65		;[Volume] 5
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $CF		;[Wait] 16
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C9		;[Wait] 10
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C3		;[Wait] 4
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $22		;[Note] 35
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_4:
	db $23		;[Note] 36
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $CF		;[Wait] 16
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C9		;[Wait] 10
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C3		;[Wait] 4
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $22		;[Note] 35
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_5:
	db $2B		;[Note] 44
	db $6E		;[Volume] 14
	db $70		;[Instrument] 1
	db $CF		;[Wait] 16
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_6:
	db $65		;[Volume] 5
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $CF		;[Wait] 16
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_7:
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $18		;[Note] 25
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C2		;[Wait] 3
	db $18		;[Note] 25
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
				;[Skip delay] 3
	db $18		;[Note] 25
	db $6F		;[Volume] 15
				;[Skip delay] 3
	db $18		;[Note] 25
	db $80		;[Instrument] 17
				;[Skip delay] 3
	db $18		;[Note] 25
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $18		;[Note] 25
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $35		;[Note] 54
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_8:
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $03		;[Note] 4
	db $C5		;[Wait] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $06		;[Note] 7
				;[Skip delay] 3
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
				;[Skip delay] 6
	db $05		;[Note] 6
				;[Skip delay] 6
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_9:
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $D0		;[Wait] 17
	db $98, $09	; Speed 
	db $C6		;[Wait] 7
	db $98, $10	; Speed 
	db $C0		;[Wait] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
				;[Skip delay] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
				;[Skip delay] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
	db $C1		;[Wait] 2
	db $98, $08	; Speed 
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_10:
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $12		;[Note] 19
				;[Skip delay] 3
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
				;[Skip delay] 6
	db $11		;[Note] 18
				;[Skip delay] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_11:
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_12:
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_13:
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_14:
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_15:
	db $30		;[Note] 49
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_16:
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C5		;[Wait] 6
	db $05		;[Note] 6
				;[Skip delay] 6
	db $03		;[Note] 4
				;[Skip delay] 6
	db $03		;[Note] 4
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $01		;[Note] 2
				;[Skip delay] 2
	db $03		;[Note] 4
	db $C5		;[Wait] 6
	db $03		;[Note] 4
				;[Skip delay] 6
	db $0A		;[Note] 11
				;[Skip delay] 6
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $0A		;[Note] 11
	db $C5		;[Wait] 6
	db $0A		;[Note] 11
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_17:
	db $35		;[Note] 54
	db $C4		;[Wait] 5
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $C4		;[Wait] 5
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_18:
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $11		;[Note] 18
				;[Skip delay] 6
	db $0F		;[Note] 16
				;[Skip delay] 6
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C5		;[Wait] 6
	db $0F		;[Note] 16
				;[Skip delay] 6
	db $16		;[Note] 23
				;[Skip delay] 6
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C5		;[Wait] 6
	db $16		;[Note] 23
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_19:
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_20:
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_21:
	db $C7		;[Wait] 8
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $37		;[Note] 56
	db $CD		;[Wait] 14
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_22:
	db $C8		;[Wait] 9
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $37		;[Note] 56
	db $CD		;[Wait] 14
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_23:
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_24:
	db $08		;[Note] 9
	db $C5		;[Wait] 6
	db $08		;[Note] 9
	db $C1		;[Wait] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $08		;[Note] 9
	db $C5		;[Wait] 6
	db $08		;[Note] 9
	db $C1		;[Wait] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C5		;[Wait] 6
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_25:
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $C4		;[Wait] 5
	db $2C		;[Note] 45
	db $C0		;[Wait] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C0		;[Wait] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3D		;[Note] 62
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_26:
	db $14		;[Note] 21
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $14		;[Note] 21
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_27:
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $C2		;[Wait] 3
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $29		;[Note] 42
	db $C2		;[Wait] 3
	db $27		;[Note] 40
				;[Skip delay] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $C5		;[Wait] 6
	db $27		;[Note] 40
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $25		;[Note] 38
	db $C5		;[Wait] 6
	db $25		;[Note] 38
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_28:
	db $27		;[Note] 40
	db $C2		;[Wait] 3
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $29		;[Note] 42
	db $C2		;[Wait] 3
	db $27		;[Note] 40
				;[Skip delay] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $C5		;[Wait] 6
	db $27		;[Note] 40
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $25		;[Note] 38
	db $C5		;[Wait] 6
	db $25		;[Note] 38
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_29:
	db $30		;[Note] 49
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $32		;[Note] 51
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $30		;[Note] 49
				;[Skip delay] 3
	db $2E		;[Note] 47
				;[Skip delay] 3
	db $2E		;[Note] 47
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $D1		;[Wait] 18
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_30:
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $32		;[Note] 51
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $30		;[Note] 49
				;[Skip delay] 3
	db $2E		;[Note] 47
				;[Skip delay] 3
	db $2E		;[Note] 47
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $D1		;[Wait] 18
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_31:
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $C0		;[Wait] 1
	db $0C		;[Note] 13
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C0		;[Wait] 1
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
				;[Skip delay] 3
	db $0C		;[Note] 13
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C7		;[Wait] 8
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C4		;[Wait] 5
	db $81		;[Instrument] 18
	db $C0		;[Wait] 1
	db $0C		;[Note] 13
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_32:
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $02		;[Note] 3
	db $C5		;[Wait] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $06		;[Note] 7
				;[Skip delay] 3
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
				;[Skip delay] 6
	db $05		;[Note] 6
				;[Skip delay] 6
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_33:
	db $60		;[Note] 97
	db $DA		;[Wait] 27
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_34:
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $12		;[Note] 19
				;[Skip delay] 3
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
				;[Skip delay] 6
	db $11		;[Note] 18
				;[Skip delay] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_35:
	db $C0		;[Wait] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
				;[Skip delay] 3
	db $2A		;[Note] 43
				;[Skip delay] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_36:
	db $28		;[Note] 41
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
				;[Skip delay] 3
	db $2A		;[Note] 43
				;[Skip delay] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_37:
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_38:
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_39:
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C7		;[Wait] 8
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_40:
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C5		;[Wait] 6
	db $05		;[Note] 6
				;[Skip delay] 6
	db $03		;[Note] 4
				;[Skip delay] 6
	db $03		;[Note] 4
	db $C1		;[Wait] 2
	db $03		;[Note] 4
				;[Skip delay] 2
	db $01		;[Note] 2
				;[Skip delay] 2
	db $03		;[Note] 4
	db $C5		;[Wait] 6
	db $03		;[Note] 4
				;[Skip delay] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $02		;[Note] 3
	db $C1		;[Wait] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $00		;[Note] 1
				;[Skip delay] 2
	db $02		;[Note] 3
	db $C5		;[Wait] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_41:
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $2E		;[Note] 47
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $D5		;[Wait] 22
	db $BF		;[End-Of-Track]
.track_42:
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $11		;[Note] 18
				;[Skip delay] 6
	db $0F		;[Note] 16
				;[Skip delay] 6
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C5		;[Wait] 6
	db $0F		;[Note] 16
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $0E		;[Note] 15
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_43:
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $31		;[Note] 50
				;[Skip delay] 6
	db $30		;[Note] 49
				;[Skip delay] 6
	db $2D		;[Note] 46
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_44:
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C1		;[Wait] 2
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $31		;[Note] 50
				;[Skip delay] 6
	db $30		;[Note] 49
				;[Skip delay] 6
	db $2D		;[Note] 46
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_45:
	db $C7		;[Wait] 8
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $37		;[Note] 56
	db $D1		;[Wait] 18
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $37		;[Note] 56
				;[Skip delay] 6
	db $36		;[Note] 55
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_46:
	db $C8		;[Wait] 9
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $37		;[Note] 56
	db $D1		;[Wait] 18
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $37		;[Note] 56
				;[Skip delay] 6
	db $36		;[Note] 55
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_47:
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_48:
	db $01		;[Note] 2
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $19		;[Note] 26
	db $CB		;[Wait] 12
	db $1A		;[Note] 27
	db $C5		;[Wait] 6
	db $02		;[Note] 3
	db $C1		;[Wait] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $02		;[Note] 3
	db $CB		;[Wait] 12
	db $01		;[Note] 2
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_49:
	db $60		;[Note] 97
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_50:
	db $0D		;[Note] 14
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $25		;[Note] 38
	db $CB		;[Wait] 12
	db $26		;[Note] 39
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $CB		;[Wait] 12
	db $0D		;[Note] 14
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $25		;[Note] 38
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_51:
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
	db $D1		;[Wait] 18
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
				;[Skip delay] 6
	db $2A		;[Note] 43
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C5		;[Wait] 6
	db $2C		;[Note] 45
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_52:
	db $2C		;[Note] 45
	db $D1		;[Wait] 18
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
				;[Skip delay] 6
	db $2A		;[Note] 43
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C5		;[Wait] 6
	db $2C		;[Note] 45
	db $CF		;[Wait] 16
	db $BF		;[End-Of-Track]
.track_53:
	db $33		;[Note] 52
	db $D1		;[Wait] 18
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $36		;[Note] 55
				;[Skip delay] 6
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $CF		;[Wait] 16
	db $BF		;[End-Of-Track]
.track_54:
	db $C0		;[Wait] 1
	db $33		;[Note] 52
	db $D1		;[Wait] 18
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $36		;[Note] 55
				;[Skip delay] 6
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_55:
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_56:
	db $C7		;[Wait] 8
	db $1A		;[Note] 27
	db $C5		;[Wait] 6
	db $02		;[Note] 3
	db $C1		;[Wait] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $02		;[Note] 3
	db $CB		;[Wait] 12
	db $08		;[Note] 9
	db $C5		;[Wait] 6
	db $08		;[Note] 9
	db $C1		;[Wait] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $08		;[Note] 9
	db $C5		;[Wait] 6
	db $08		;[Note] 9
	db $C1		;[Wait] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_57:
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $CB		;[Wait] 12
	db $14		;[Note] 21
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $14		;[Note] 21
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_58:
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
				;[Skip delay] 6
	db $2A		;[Note] 43
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C5		;[Wait] 6
	db $27		;[Note] 40
	db $D1		;[Wait] 18
	db $2C		;[Note] 45
	db $C5		;[Wait] 6
	db $2B		;[Note] 44
				;[Skip delay] 6
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_59:
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
				;[Skip delay] 6
	db $2A		;[Note] 43
	db $CB		;[Wait] 12
	db $2A		;[Note] 43
	db $C5		;[Wait] 6
	db $27		;[Note] 40
	db $D1		;[Wait] 18
	db $2C		;[Note] 45
	db $C5		;[Wait] 6
	db $2B		;[Note] 44
				;[Skip delay] 6
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_60:
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $36		;[Note] 55
				;[Skip delay] 6
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $2F		;[Note] 48
	db $C5		;[Wait] 6
	db $30		;[Note] 49
	db $D1		;[Wait] 18
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $32		;[Note] 51
				;[Skip delay] 6
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_61:
	db $C2		;[Wait] 3
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $36		;[Note] 55
				;[Skip delay] 6
	db $32		;[Note] 51
	db $CB		;[Wait] 12
	db $2F		;[Note] 48
	db $C5		;[Wait] 6
	db $30		;[Note] 49
	db $D1		;[Wait] 18
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $32		;[Note] 51
				;[Skip delay] 6
	db $2E		;[Note] 47
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_62:
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_63:
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C5		;[Wait] 6
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C5		;[Wait] 6
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $02		;[Note] 3
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_64:
	db $E8		;[Wait] 41
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_65:
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_66:
	db $CA		;[Wait] 11
	db $22		;[Note] 35
	db $C5		;[Wait] 6
	db $25		;[Note] 38
				;[Skip delay] 6
	db $25		;[Note] 38
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
				;[Skip delay] 3
	db $2C		;[Note] 45
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_67:
	db $C9		;[Wait] 10
	db $22		;[Note] 35
	db $C5		;[Wait] 6
	db $25		;[Note] 38
				;[Skip delay] 6
	db $25		;[Note] 38
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
				;[Skip delay] 3
	db $2C		;[Note] 45
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_68:
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $CB		;[Wait] 12
	db $34		;[Note] 53
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_69:
	db $CA		;[Wait] 11
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $CB		;[Wait] 12
	db $34		;[Note] 53
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_70:
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C2		;[Wait] 3
	db $18		;[Note] 25
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
				;[Skip delay] 3
	db $18		;[Note] 25
	db $6F		;[Volume] 15
				;[Skip delay] 3
	db $18		;[Note] 25
	db $80		;[Instrument] 17
				;[Skip delay] 3
	db $18		;[Note] 25
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $81		;[Instrument] 18
				;[Skip delay] 6
	db $18		;[Note] 25
	db $80		;[Instrument] 17
				;[Skip delay] 6
	db $0C		;[Note] 13
	db $81		;[Instrument] 18
	db $C0		;[Wait] 1
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_71:
	db $C3		;[Wait] 4
	db $02		;[Note] 3
	db $C5		;[Wait] 6
	db $02		;[Note] 3
				;[Skip delay] 6
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $06		;[Note] 7
				;[Skip delay] 3
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C5		;[Wait] 6
	db $07		;[Note] 8
				;[Skip delay] 6
	db $05		;[Note] 6
				;[Skip delay] 6
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_72:
	db $C6		;[Wait] 7
	db $98, $09	; Speed 
				;[Skip delay] 7
	db $98, $10	; Speed 
	db $C0		;[Wait] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
				;[Skip delay] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
				;[Skip delay] 1
	db $98, $09	; Speed 
				;[Skip delay] 1
	db $98, $10	; Speed 
	db $C1		;[Wait] 2
	db $98, $08	; Speed 
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_73:
	db $C3		;[Wait] 4
	db $0E		;[Note] 15
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $12		;[Note] 19
				;[Skip delay] 3
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $13		;[Note] 20
				;[Skip delay] 6
	db $11		;[Note] 18
				;[Skip delay] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_74:
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_75:
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $1E		;[Note] 31
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
				;[Skip delay] 3
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_76:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_77:
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $03	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $A1, $04	; note delay
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $C9		;[Wait] 10
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A1, $02	; note delay
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_78:
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
