; Compiled using tt_compile.exe V0.1 [02-03-2015]
; Copyright 2015 Richard Cornelisse

; Song: Judas Gear METAL Priest         
; By:   Arr. by Gryzor87        (c) 201

;	org $c000

; [ Song start data ]
	db $05				; Initial song speed.
	dw .waveform_start 			; Start of the waveform data.
	dw .instrument_start 			; Start of the instrument data.

; [ Song order pointer list ]
		dw .track_0,.track_1,.track_2,.track_3,.track_3,.track_3,.track_3,.track_4		; Sequence step 0 /pattern 0
		dw .track_5,.track_6,.track_7,.track_8,.track_9,.track_10,.track_11,.track_11		; Sequence step 1 /pattern 1
		dw .track_11,.track_12,.track_13,.track_14,.track_15,.track_16,.track_17,.track_18		; Sequence step 2 /pattern 2
		dw .track_18,.track_19,.track_20,.track_21,.track_22,.track_23,.track_24,.track_24		; Sequence step 3 /pattern 3
		dw .track_25,.track_26,.track_27,.track_28,.track_29,.track_30,.track_31,.track_32		; Sequence step 4 /pattern 4
		dw .track_33,.track_34,.track_35,.track_28,.track_29,.track_30,.track_31,.track_32		; Sequence step 5 /pattern 3
		dw .track_36,.track_37,.track_38,.track_39,.track_40,.track_41,.track_42,.track_43		; Sequence step 6 /pattern 5
		dw .track_36,.track_37,.track_44,.track_45,.track_46,.track_47,.track_48,.track_49		; Sequence step 7 /pattern 6
		dw .track_36,.track_37,.track_38,.track_39,.track_40,.track_41,.track_50,.track_51		; Sequence step 8 /pattern 7
		dw .track_36,.track_37,.track_52,.track_45,.track_46,.track_53,.track_54,.track_43		; Sequence step 9 /pattern 8
		dw .track_36,.track_37,.track_38,.track_39,.track_40,.track_55,.track_56,.track_57		; Sequence step 10 /pattern 9
		dw .track_36,.track_37,.track_44,.track_45,.track_46,.track_53,.track_54,.track_43		; Sequence step 11 /pattern 10
		dw .track_36,.track_37,.track_38,.track_39,.track_40,.track_55,.track_58,.track_59		; Sequence step 12 /pattern 11
		dw .track_60,.track_37,.track_44,.track_45,.track_46,.track_53,.track_61,.track_62		; Sequence step 13 /pattern 12
		dw .track_63,.track_64,.track_65,.track_66,.track_67,.track_68,.track_69,.track_70		; Sequence step 14 /pattern 13
		dw .track_71,.track_64,.track_72,.track_73,.track_74,.track_75,.track_76,.track_77		; Sequence step 15 /pattern 14
		dw .track_63,.track_64,.track_65,.track_66,.track_67,.track_68,.track_78,.track_79		; Sequence step 16 /pattern 15
		dw .track_71,.track_64,.track_80,.track_81,.track_82,.track_83,.track_84,.track_85		; Sequence step 17 /pattern 16
		dw .track_63,.track_64,.track_86,.track_87,.track_88,.track_89,.track_90,.track_91		; Sequence step 18 /pattern 17
		dw .track_71,.track_64,.track_92,.track_93,.track_94,.track_95,.track_96,.track_97		; Sequence step 19 /pattern 6
		dw .track_63,.track_64,.track_86,.track_87,.track_88,.track_89,.track_98,.track_99		; Sequence step 20 /pattern 7
		dw .track_71,.track_64,.track_100,.track_101,.track_102,.track_103,.track_104,.track_105		; Sequence step 21 /pattern 8
		dw .track_106,.track_107,.track_108,.track_109,.track_110,.track_111,.track_112,.track_112		; Sequence step 22 /pattern 9
		dw .track_113,.track_114,.track_115,.track_116,.track_117,.track_118,.track_112,.track_112		; Sequence step 23 /pattern 10
		dw .track_119,.track_114,.track_115,.track_116,.track_120,.track_121,.track_122,.track_122		; Sequence step 24 /pattern 11
		dw .track_122,.track_123,.track_124,.track_125,.track_126,.track_127,.track_128,.track_128		; Sequence step 25 /pattern 12
		dw .track_119,.track_128,.track_129,.track_130,.track_131,.track_132,.track_133,.track_133		; Sequence step 26 /pattern 13
		dw .track_133,.track_134,.track_135,.track_136,.track_137,.track_138,.track_139,.track_139		; Sequence step 27 /pattern 14
		dw .track_139,.track_140,.track_141,.track_142,.track_143,.track_144,.track_145,.track_146		; Sequence step 28 /pattern 15
		dw .track_113,.track_114,.track_115,.track_116,.track_117,.track_118,.track_147,.track_148		; Sequence step 29 /pattern 16
		dw .track_119,.track_114,.track_115,.track_116,.track_120,.track_121,.track_149,.track_150		; Sequence step 30 /pattern 17
		dw .track_122,.track_123,.track_124,.track_125,.track_126,.track_127,.track_151,.track_152		; Sequence step 31 /pattern 18
		dw .track_119,.track_128,.track_129,.track_130,.track_131,.track_132,.track_153,.track_154		; Sequence step 32 /pattern 19
		dw .track_133,.track_134,.track_135,.track_136,.track_137,.track_138,.track_155,.track_156		; Sequence step 33 /pattern 20
		dw .track_157,.track_157,.track_157,.track_157,.track_157,.track_157,.track_157,.track_157		; Sequence step 34 /pattern 21
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 35 /pattern 28
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 36 /pattern 22
.restart:
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 37 /pattern 23
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 38 /pattern 24
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 39 /pattern 25
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 40 /pattern 26
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 41 /pattern 27
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 42 /pattern 29
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 43 /pattern 30
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 44 /pattern 31
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 45 /pattern 32
		dw .track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0,.track_0		; Sequence step 46 /pattern 33
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.waveform_start:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 0
	db $80,$B0,$C0,$10,$1A,$2A,$2C,$1A,$00,$E0,$D0,$E0,$22,$53,$70,$75,$70,$31,$EA,$80,$88,$8A,$8C,$8E,$00,$7F,$75,$73,$62,$00,$C0,$90	; Waveform 1
	db $07,$27,$67,$3F,$07,$C7,$D7,$2F,$47,$07,$0F,$07,$EF,$F7,$FF,$DF,$B7,$87,$C7,$4F,$1F,$C7,$E7,$0F,$07,$0F,$47,$6F,$27,$D7,$DF,$EF	; Waveform 2
	db $0F,$5F,$3F,$57,$2F,$DF,$97,$37,$77,$AF,$07,$DF,$27,$07,$57,$CF,$DF,$FF,$EF,$D7,$EF,$6F,$4F,$CF,$27,$8F,$AF,$DF,$CF,$BF,$EF,$FF	; Waveform 3
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 4
	db $00,$40,$7F,$40,$01,$C0,$81,$C0,$01,$40,$7F,$40,$01,$C0,$01,$40,$01,$E0,$01,$20,$01,$F0,$01,$10,$01,$FF,$FF,$FF,$FF,$40,$40,$40	; Waveform 5
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 6
	db $00,$4E,$62,$6D,$75,$7A,$7D,$7E,$7F,$7E,$7D,$7A,$75,$6D,$62,$4E,$00,$B1,$9D,$92,$8A,$85,$82,$81,$80,$81,$82,$85,$8A,$92,$9D,$B1	; Waveform 7
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70	; Waveform 8
	db $00,$F8,$F0,$E8,$E0,$D8,$D0,$C8,$C0,$B8,$B0,$A8,$A0,$98,$90,$88,$80,$7F,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08	; Waveform 9
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$7F,$70,$60,$50,$40,$30,$20,$10	; Waveform 10
	db $01,$2A,$40,$50,$5C,$68,$70,$78,$7F,$78,$70,$68,$5C,$50,$40,$2A,$FF,$D6,$C0,$B0,$A4,$98,$90,$88,$81,$88,$90,$98,$A4,$B0,$C0,$D6	; Waveform 11
	db $00,$F0,$E8,$E0,$D6,$CA,$BE,$B4,$A8,$00,$F6,$EC,$DE,$D4,$CA,$BC,$B4,$44,$36,$2C,$22,$14,$0A,$00,$F2,$4C,$42,$36,$2A,$20,$18,$10	; Waveform 12
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70	; Waveform 13
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$70,$60,$50,$40,$30,$20,$10	; Waveform 14
	db $80,$C8,$20,$7F,$30,$C8,$80,$90,$A8,$C0,$E0,$00,$20,$38,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$38,$20,$00,$E0,$C0,$A8,$90	; Waveform 15
	db $77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87	; Waveform 16

.instrument_start:
	dw .ins_1,.ins_2,.ins_3,.ins_4,.ins_5,.ins_6,.ins_7,.ins_8,.ins_9,.ins_10,.ins_11,.ins_12,.ins_13,.ins_14,.ins_15,.ins_16,.ins_17,.ins_18,.ins_19,.ins_20,.ins_21
.ins_1:
		db 0					; Waveform
		db .rst_i1-(.ins_1 +2)		; Restart
		db $11,$0F
.rst_i1:
		db $89,$00
.ins_2:
		db 0					; Waveform
		db .rst_i2-(.ins_2 +2)		; Restart
		db $11,$0F
		db $85,$0D,$FF,$FF
		db $A5,$0D,$07,$FF,$FF
		db $85,$0D,$FF,$FF
		db $A5,$0C,$09,$FF,$FF
		db $85,$0C,$FF,$FF
		db $85,$0C,$FF,$FF
		db $85,$0B,$07,$00
		db $81,$0B
		db $81,$0A
		db $81,$0A
		db $81,$08
		db $81,$06
		db $81,$05
.rst_i2:
		db $89,$02
.ins_3:
		db 0					; Waveform
		db .rst_i3-(.ins_3 +2)		; Restart
		db $91,$0E
		db $91,$06
.rst_i3:
		db $99,$00
.ins_4:
		db 0					; Waveform
		db .rst_i4-(.ins_4 +2)		; Restart
		db $91,$0E
		db $91,$0E
		db $91,$0C
.rst_i4:
		db $98
.ins_5:
		db 0					; Waveform
		db .rst_i5-(.ins_5 +2)		; Restart
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0E
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0B
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$08
		db $11,$07
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$05
		db $11,$04
		db $11,$03
		db $11,$03
		db $11,$03
		db $11,$02
		db $11,$02
		db $11,$02
.rst_i5:
		db $19,$00
.ins_6:
		db 0					; Waveform
		db .rst_i6-(.ins_6 +2)		; Restart
		db $11,$0F
		db $11,$0D
		db $11,$0D
		db $11,$0C
		db $11,$0A
		db $11,$0A
.rst_i6:
		db $19,$0A
.ins_7:
		db 0					; Waveform
		db .rst_i7-(.ins_7 +2)		; Restart
		db $11,$0D
		db $11,$0D
.rst_i7:
		db $19,$0D
.ins_8:
		db 0					; Waveform
		db .rst_i8-(.ins_8 +2)		; Restart
		db $11,$0B
		db $11,$0D
		db $11,$0D
		db $11,$0B
.rst_i8:
		db $19,$0B
.ins_9:
		db 3					; Waveform
		db .rst_i9-(.ins_9 +2)		; Restart
		db $11,$0F
		db $11,$0D
		db $11,$0D
		db $11,$0C
.rst_i9:
		db $11,$0C
		db $19,$0C
.ins_10:
		db 1					; Waveform
		db .rst_i10-(.ins_10 +2)		; Restart
		db $11,$0F
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$07
		db $11,$07
		db $11,$07
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
.rst_i10:
		db $19,$02
.ins_11:
		db 3					; Waveform
		db .rst_i11-(.ins_11 +2)		; Restart
		db $15,$0F,$FE,$FF
		db $11,$0B
.rst_i11:
		db $19,$0B
.ins_12:
		db 2					; Waveform
		db .rst_i12-(.ins_12 +2)		; Restart
		db $15,$0F,$02,$00
		db $11,$0B
.rst_i12:
		db $19,$0B
.ins_13:
		db 4					; Waveform
		db .rst_i13-(.ins_13 +2)		; Restart
		db $15,$0F,$1B,$00
		db $15,$0D,$1B,$00
.rst_i13:
		db $1C,$1B,$00
.ins_14:
		db 4					; Waveform
		db .rst_i14-(.ins_14 +2)		; Restart
		db $11,$0F
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0B
		db $11,$0B
.rst_i14:
		db $19,$0B
.ins_15:
.ins_16:
.ins_17:
.ins_18:
.ins_19:
		db 9					; Waveform
		db .rst_i19-(.ins_19 +2)		; Restart
		db $11,$09
		db $11,$0A
		db $11,$0B
		db $11,$0C
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
.rst_i19:
		db $19,$0D
.ins_20:
		db 16					; Waveform
		db .rst_i20-(.ins_20 +2)		; Restart
		db $11,$09
		db $11,$0A
		db $11,$0D
		db $11,$0E
.rst_i20:
		db $19,$0E
.ins_21:
		db 11					; Waveform
		db .rst_i21-(.ins_21 +2)		; Restart
		db $15,$0F,$2A,$00
		db $15,$0C,$2A,$00
.rst_i21:
		db $14,$2A,$00
		db $1C,$2A,$00

; [ Song track data ]
.track_0:
	db $60		;[Note] 97
	db $98, $08	; Speed 
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
	db $98, $07	; Speed 
	db $C7		;[Wait] 8
	db $24		;[Note] 37
				;[Skip delay] 8
	db $27		;[Note] 40
	db $C3		;[Wait] 4
	db $26		;[Note] 39
				;[Skip delay] 4
	db $25		;[Note] 38
	db $77		;[Instrument] 8
	db $C1		;[Wait] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $25		;[Note] 38
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $25		;[Note] 38
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $25		;[Note] 38
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_1:
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $C7		;[Wait] 8
	db $21		;[Note] 34
				;[Skip delay] 8
	db $22		;[Note] 35
	db $C3		;[Wait] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $20		;[Note] 33
	db $77		;[Instrument] 8
	db $C1		;[Wait] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_2:
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $27		;[Note] 40
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C7		;[Wait] 8
	db $1B		;[Note] 28
				;[Skip delay] 8
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $16		;[Note] 23
	db $77		;[Instrument] 8
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $16		;[Note] 23
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $16		;[Note] 23
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $16		;[Note] 23
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_3:
	db $95, $00	; track detune
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_4:
	db $95, $08	; track detune
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_5:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $98, $04	; Speed 
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $21		;[Note] 34
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $26		;[Note] 39
				;[Skip delay] 4
	db $28		;[Note] 41
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_6:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_7:
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $78		;[Instrument] 9
				;[Skip delay] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $78		;[Instrument] 9
	db $C3		;[Wait] 4
	db $26		;[Note] 39
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $23		;[Note] 36
	db $78		;[Instrument] 9
	db $C3		;[Wait] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $09		;[Note] 10
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $28		;[Note] 41
	db $78		;[Instrument] 9
	db $C3		;[Wait] 4
	db $27		;[Note] 40
				;[Skip delay] 4
	db $28		;[Note] 41
				;[Skip delay] 4
	db $2A		;[Note] 43
				;[Skip delay] 4
	db $2B		;[Note] 44
				;[Skip delay] 4
	db $2D		;[Note] 46
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_8:
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
				;[Skip delay] 4
	db $0B		;[Note] 12
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $09		;[Note] 10
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $09		;[Note] 10
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C3		;[Wait] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_9:
	db $0B		;[Note] 12
	db $6A		;[Volume] 10
	db $7B		;[Instrument] 12
	db $90, $06; set waveform
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $18		;[Note] 25
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_10:
	db $0B		;[Note] 12
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $90, $04; set waveform
	db $C0		;[Wait] 1
	db $90, $03; set waveform
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
	db $C2		;[Wait] 3
	db $0B		;[Note] 12
	db $90, $02; set waveform
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $18		;[Note] 25
	db $90, $03; set waveform
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $18		;[Note] 25
				;[Skip delay] 4
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $09		;[Note] 10
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_11:
	db $2A		;[Note] 43
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $98, $04	; Speed 
	db $C3		;[Wait] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $23		;[Note] 36
	db $6E		;[Volume] 14
				;[Skip delay] 4
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
				;[Skip delay] 4
	db $23		;[Note] 36
	db $CB		;[Wait] 12
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $6C		;[Volume] 12
				;[Skip delay] 4
	db $6A		;[Volume] 10
	db $C8		;[Wait] 9
	db $98, $06	; Speed 
	db $CC		;[Wait] 13
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $98, $20	; Speed 
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_12:
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C3		;[Wait] 4
	db $0E		;[Note] 15
				;[Skip delay] 4
	db $10		;[Note] 17
				;[Skip delay] 4
	db $10		;[Note] 17
				;[Skip delay] 4
	db $0E		;[Note] 15
				;[Skip delay] 4
	db $10		;[Note] 17
	db $CB		;[Wait] 12
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $6C		;[Volume] 12
				;[Skip delay] 4
	db $6A		;[Volume] 10
	db $D7		;[Wait] 24
	db $BF		;[End-Of-Track]
.track_13:
	db $2F		;[Note] 48
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $C3		;[Wait] 4
	db $26		;[Note] 39
				;[Skip delay] 4
	db $28		;[Note] 41
				;[Skip delay] 4
	db $28		;[Note] 41
	db $6E		;[Volume] 14
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 4
	db $28		;[Note] 41
	db $CB		;[Wait] 12
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $61		;[Volume] 1
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $CD		;[Wait] 14
	db $A5, $08; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_14:
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C3		;[Wait] 4
	db $0E		;[Note] 15
				;[Skip delay] 4
	db $10		;[Note] 17
				;[Skip delay] 4
	db $10		;[Note] 17
				;[Skip delay] 4
	db $0E		;[Note] 15
				;[Skip delay] 4
	db $10		;[Note] 17
	db $DC		;[Wait] 29
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $0D; slide-down rep
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_15:
	db $1E		;[Note] 31
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
	db $CB		;[Wait] 12
	db $A7, $63	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6A		;[Volume] 10
	db $C2		;[Wait] 3
	db $68		;[Volume] 8
	db $C1		;[Wait] 2
	db $A5, $1A; slide-down
	db $C0		;[Wait] 1
	db $AF, $0E; slide-down rep
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_16:
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0E		;[Note] 15
	db $C3		;[Wait] 4
	db $10		;[Note] 17
				;[Skip delay] 4
	db $10		;[Note] 17
	db $6E		;[Volume] 14
				;[Skip delay] 4
	db $0E		;[Note] 15
	db $6F		;[Volume] 15
				;[Skip delay] 4
	db $10		;[Note] 17
	db $CB		;[Wait] 12
	db $A7, $63	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6A		;[Volume] 10
	db $C2		;[Wait] 3
	db $68		;[Volume] 8
	db $C1		;[Wait] 2
	db $A5, $1A; slide-down
	db $C0		;[Wait] 1
	db $AF, $0E; slide-down rep
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_17:
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $68		;[Volume] 8
	db $7A		;[Instrument] 11
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $1F		;[Note] 32
	db $CB		;[Wait] 12
	db $A7, $63	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $64		;[Volume] 4
	db $C6		;[Wait] 7
	db $A5, $1A; slide-down
	db $C0		;[Wait] 1
	db $AF, $0E; slide-down rep
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_18:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $98, $05	; Speed 
	db $C5		;[Wait] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 3
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C5		;[Wait] 6
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
	db $C4		;[Wait] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_19:
	db $10		;[Note] 17
	db $6A		;[Volume] 10
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
				;[Skip delay] 3
	db $07		;[Note] 8
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_20:
	db $04		;[Note] 5
	db $6E		;[Volume] 14
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $09; slide-down rep
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $E1		;[Wait] 34
	db $BF		;[End-Of-Track]
.track_21:
	db $04		;[Note] 5
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C3		;[Wait] 4
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $09; slide-down rep
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $E1		;[Wait] 34
	db $BF		;[End-Of-Track]
.track_22:
	db $1C		;[Note] 29
	db $6B		;[Volume] 11
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $13		;[Note] 20
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_23:
	db $1C		;[Note] 29
	db $6B		;[Volume] 11
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $13		;[Note] 20
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_24:
	db $60		;[Note] 97
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_25:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C5		;[Wait] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 3
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C5		;[Wait] 6
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
	db $C4		;[Wait] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_26:
	db $10		;[Note] 17
	db $6A		;[Volume] 10
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0A		;[Note] 11
				;[Skip delay] 3
	db $0A		;[Note] 11
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_27:
	db $04		;[Note] 5
	db $6E		;[Volume] 14
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $09; slide-down rep
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $D5		;[Wait] 22
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_28:
	db $04		;[Note] 5
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C3		;[Wait] 4
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $09; slide-down rep
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $D5		;[Wait] 22
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_29:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C4		;[Wait] 5
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_30:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $16		;[Note] 23
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C3		;[Wait] 4
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_31:
	db $E3		;[Wait] 36
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $84		;[Instrument] 21
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_32:
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_33:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C5		;[Wait] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 3
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_34:
	db $10		;[Note] 17
	db $6A		;[Volume] 10
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0A		;[Note] 11
				;[Skip delay] 3
	db $0A		;[Note] 11
	db $C2		;[Wait..] 3
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_35:
	db $04		;[Note] 5
	db $6E		;[Volume] 14
	db $76		;[Instrument] 7
	db $C3		;[Wait] 4
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $09; slide-down rep
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $C9		;[Wait] 10
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $74		;[Instrument] 5
				;[Skip delay] 3
	db $04		;[Note] 5
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0A		;[Note] 11
	db $C2		;[Wait] 3
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_36:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C5		;[Wait] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C4		;[Wait] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_37:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_38:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
				;[Skip delay] 3
	db $07		;[Note] 8
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_39:
	db $10		;[Note] 17
	db $6A		;[Volume] 10
	db $79		;[Instrument] 10
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
				;[Skip delay] 3
	db $07		;[Note] 8
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_40:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $13		;[Note] 20
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_41:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $13		;[Note] 20
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_42:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $60		;[Note] 97
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C2		;[Wait..] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $CF		;[Wait] 16
	db $BF		;[End-Of-Track]
.track_43:
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C4		;[Wait] 5
	db $60		;[Note] 97
	db $CC		;[Wait] 13
	db $BF		;[End-Of-Track]
.track_44:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0A		;[Note] 11
	db $C2		;[Wait] 3
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_45:
	db $10		;[Note] 17
	db $6A		;[Volume] 10
	db $79		;[Instrument] 10
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_46:
	db $1C		;[Note] 29
	db $6B		;[Volume] 11
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C4		;[Wait] 5
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_47:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $16		;[Note] 23
	db $6F		;[Volume] 15
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C3		;[Wait] 4
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_48:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
				;[Skip delay] 3
	db $3E		;[Note] 63
	db $C4		;[Wait] 5
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C4		;[Wait] 5
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $84		;[Instrument] 21
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_49:
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
				;[Skip delay] 3
	db $3E		;[Note] 63
	db $C4		;[Wait] 5
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C4		;[Wait] 5
	db $3B		;[Note] 60
				;[Skip delay] 5
	db $60		;[Note] 97
	db $C9		;[Wait] 10
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_50:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $60		;[Note] 97
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C2		;[Wait..] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $A7, $37	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $BF		;[End-Of-Track]
.track_51:
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C4		;[Wait] 5
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_52:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $04		;[Note] 5
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $6E		;[Volume] 14
	db $78		;[Instrument] 9
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $6F		;[Volume] 15
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
	db $C3		;[Wait] 4
	db $3E		;[Note] 63
	db $A6, $A0; tone-slide
	db $C0		;[Wait] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $A6, $A0; tone-slide
				;[Skip delay] 1
	db $A7, $64	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_53:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $16		;[Note] 23
	db $6F		;[Volume] 15
				;[Skip delay] 3
	db $10		;[Note] 17
	db $C3		;[Wait] 4
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_54:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C2		;[Wait..] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $84		;[Instrument] 21
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_55:
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $7A		;[Instrument] 11
	db $C2		;[Wait] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1A		;[Note] 27
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1D		;[Note] 30
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $10		;[Note] 17
				;[Skip delay] 3
	db $13		;[Note] 20
	db $A6, $40; tone-slide
	db $C0		;[Wait] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_56:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
				;[Skip delay] 3
	db $3E		;[Note] 63
	db $C5		;[Wait] 6
	db $3C		;[Note] 61
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $CF		;[Wait] 16
	db $BF		;[End-Of-Track]
.track_57:
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
				;[Skip delay] 3
	db $3E		;[Note] 63
	db $C5		;[Wait] 6
	db $3C		;[Note] 61
				;[Skip delay] 6
	db $3B		;[Note] 60
	db $C4		;[Wait] 5
	db $60		;[Note] 97
	db $CC		;[Wait] 13
	db $BF		;[End-Of-Track]
.track_58:
	db $3B		;[Note] 60
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
				;[Skip delay] 6
	db $3C		;[Note] 61
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $57	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C0		;[Wait..] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_59:
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $C5		;[Wait] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $3C		;[Note] 61
	db $C5		;[Wait] 6
	db $3E		;[Note] 63
				;[Skip delay] 6
	db $3C		;[Note] 61
				;[Skip delay] 6
	db $3B		;[Note] 60
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C5		;[Wait] 6
	db $40		;[Note] 65
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_60:
	db $5F		;[Note] 96
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C5		;[Wait] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_61:
	db $3E		;[Note] 63
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C4		;[Wait] 5
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1D	;[CMD vibrato] rep
	db $D4		;[Wait] 21
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $64		;[Volume] 4
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $84		;[Instrument] 21
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_62:
	db $43		;[Note] 68
	db $65		;[Volume] 5
	db $82		;[Instrument] 19
	db $CA		;[Wait] 11
	db $A5, $02; slide-down
	db $C0		;[Wait] 1
	db $AF, $17; slide-down rep
	db $CF		;[Wait] 16
	db $64		;[Volume] 4
	db $C3		;[Wait] 4
	db $63		;[Volume] 3
	db $C1		;[Wait] 2
	db $62		;[Volume] 2
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $CC		;[Wait] 13
	db $BF		;[End-Of-Track]
.track_63:
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C5		;[Wait] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
	db $C4		;[Wait] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_64:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_65:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $15		;[Note] 22
				;[Skip delay] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_66:
	db $15		;[Note] 22
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_67:
	db $09		;[Note] 10
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_68:
	db $10		;[Note] 17
	db $7B		;[Instrument] 12
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_69:
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $BF		;[End-Of-Track]
.track_70:
	db $C5		;[Wait] 6
	db $2B		;[Note] 44
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $A4, $01; slide-up
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $2B		;[Note] 44
	db $68		;[Volume] 8
	db $A4, $01; slide-up
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $BF		;[End-Of-Track]
.track_71:
	db $5D		;[Note] 94
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $C5		;[Wait] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 6
	db $5D		;[Note] 94
	db $74		;[Instrument] 5
				;[Skip delay] 6
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C4		;[Wait] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_72:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $1A		;[Note] 27
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $18		;[Note] 25
				;[Skip delay] 6
	db $0C		;[Note] 13
				;[Skip delay] 6
	db $17		;[Note] 24
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_73:
	db $15		;[Note] 22
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_74:
	db $09		;[Note] 10
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $0E		;[Note] 15
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $0C		;[Note] 13
	db $C4		;[Wait..] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_75:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $15		;[Note] 22
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $13		;[Note] 20
	db $C4		;[Wait..] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_76:
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A5, $0A; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $04; slide-down rep
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $32		;[Note] 51
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $2F		;[Note] 48
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_77:
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A5, $0A; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $04; slide-down rep
	db $C1		;[Wait] 2
	db $62		;[Volume] 2
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $39		;[Note] 58
	db $66		;[Volume] 6
	db $CB		;[Wait] 12
	db $37		;[Note] 56
				;[Skip delay] 12
	db $36		;[Note] 55
				;[Skip delay] 12
	db $BF		;[End-Of-Track]
.track_78:
	db $3D		;[Note] 62
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $08; tone-slide rep
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CD		;[Wait] 14
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $A6, $01; tone-slide
	db $C1		;[Wait] 2
	db $B0, $01; tone-slide rep
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $B0, $05; tone-slide rep
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_79:
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $3D		;[Note] 62
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $08; tone-slide rep
	db $C6		;[Wait] 7
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $3E		;[Note] 63
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $A6, $01; tone-slide
	db $C1		;[Wait] 2
	db $B0, $01; tone-slide rep
				;[Skip delay] 2
	db $B0, $05; tone-slide rep
	db $C3		;[Wait] 4
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_80:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $09		;[Note] 10
				;[Skip delay] 6
	db $17		;[Note] 24
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $18		;[Note] 25
				;[Skip delay] 6
	db $0C		;[Note] 13
				;[Skip delay] 6
	db $1A		;[Note] 27
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_81:
	db $15		;[Note] 22
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_82:
	db $09		;[Note] 10
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0C		;[Note] 13
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $0E		;[Note] 15
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_83:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $15		;[Note] 22
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_84:
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $A6, $03; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A6, $08; tone-slide
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $B0, $03; tone-slide rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $2F		;[Note] 48
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_85:
	db $60		;[Note] 97
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $66		;[Volume] 6
	db $82		;[Instrument] 19
	db $CB		;[Wait] 12
	db $37		;[Note] 56
				;[Skip delay] 12
	db $39		;[Note] 58
				;[Skip delay] 12
	db $BF		;[End-Of-Track]
.track_86:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $17		;[Note] 24
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_87:
	db $17		;[Note] 24
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_88:
	db $0B		;[Note] 12
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_89:
	db $12		;[Note] 19
	db $7B		;[Instrument] 12
	db $C5		;[Wait] 6
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $12		;[Note] 19
	db $C5		;[Wait] 6
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_90:
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $BF		;[End-Of-Track]
.track_91:
	db $60		;[Note] 97
	db $C5		;[Wait] 6
	db $2D		;[Note] 46
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $A4, $01; slide-up
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $D1		;[Wait] 18
	db $2D		;[Note] 46
	db $68		;[Volume] 8
	db $A4, $01; slide-up
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $A7, $56	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $BF		;[End-Of-Track]
.track_92:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $1C		;[Note] 29
				;[Skip delay] 6
	db $10		;[Note] 17
				;[Skip delay] 6
	db $1A		;[Note] 27
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $19		;[Note] 26
				;[Skip delay] 6
	db $0D		;[Note] 14
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_93:
	db $17		;[Note] 24
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_94:
	db $0B		;[Note] 12
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $0E		;[Note] 15
	db $C4		;[Wait..] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0D		;[Note] 14
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_95:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $15		;[Note] 22
	db $C4		;[Wait..] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $BF		;[End-Of-Track]
.track_96:
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A5, $0A; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $04; slide-down rep
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $34		;[Note] 53
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $31		;[Note] 50
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_97:
	db $28		;[Note] 41
	db $69		;[Volume] 9
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
	db $A6, $16; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A5, $0A; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $04; slide-down rep
	db $C1		;[Wait] 2
	db $62		;[Volume] 2
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $3B		;[Note] 60
	db $66		;[Volume] 6
	db $CB		;[Wait] 12
	db $39		;[Note] 58
				;[Skip delay] 12
	db $38		;[Note] 57
				;[Skip delay] 12
	db $BF		;[End-Of-Track]
.track_98:
	db $3F		;[Note] 64
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $42		;[Note] 67
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $08; tone-slide rep
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CD		;[Wait] 14
	db $40		;[Note] 65
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $42		;[Note] 67
	db $A6, $01; tone-slide
	db $C1		;[Wait] 2
	db $B0, $01; tone-slide rep
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $B0, $05; tone-slide rep
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CD		;[Wait] 14
	db $BF		;[End-Of-Track]
.track_99:
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $3F		;[Note] 64
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $42		;[Note] 67
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $08; tone-slide rep
	db $C6		;[Wait] 7
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $40		;[Note] 65
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $42		;[Note] 67
	db $A6, $01; tone-slide
	db $C1		;[Wait] 2
	db $B0, $01; tone-slide rep
				;[Skip delay] 2
	db $B0, $05; tone-slide rep
	db $C3		;[Wait] 4
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_100:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
				;[Skip delay] 6
	db $19		;[Note] 26
				;[Skip delay] 6
	db $0D		;[Note] 14
				;[Skip delay] 6
	db $1A		;[Note] 27
				;[Skip delay] 6
	db $0E		;[Note] 15
				;[Skip delay] 6
	db $1C		;[Note] 29
				;[Skip delay] 6
	db $10		;[Note] 17
				;[Skip delay] 6
	db $BF		;[End-Of-Track]
.track_101:
	db $17		;[Note] 24
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_102:
	db $0B		;[Note] 12
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0D		;[Note] 14
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0E		;[Note] 15
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $10		;[Note] 17
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_103:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $14		;[Note] 21
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C4		;[Wait] 5
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $A6, $3A; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_104:
	db $39		;[Note] 58
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A6, $03; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A6, $08; tone-slide
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $B0, $03; tone-slide rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $BF		;[End-Of-Track]
.track_105:
	db $60		;[Note] 97
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $66		;[Volume] 6
	db $82		;[Instrument] 19
	db $CB		;[Wait] 12
	db $39		;[Note] 58
				;[Skip delay] 12
	db $3B		;[Note] 60
				;[Skip delay] 12
	db $BF		;[End-Of-Track]
.track_106:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $98, $05	; Speed 
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $20		;[Note] 33
	db $7C		;[Instrument] 13
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $20		;[Note] 33
	db $7C		;[Instrument] 13
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_107:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $24		;[Note] 37
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C5		;[Wait] 6
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $24		;[Note] 37
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_108:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C5		;[Wait] 6
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $06		;[Note] 7
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C5		;[Wait] 6
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $C5		;[Wait] 6
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_109:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $12		;[Note] 19
	db $C5		;[Wait] 6
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
	db $C5		;[Wait] 6
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C5		;[Wait] 6
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_110:
	db $06		;[Note] 7
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $12		;[Note] 19
				;[Skip delay] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $22		;[Note] 35
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $12		;[Note] 19
				;[Skip delay] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $22		;[Note] 35
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_111:
	db $0D		;[Note] 14
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0D		;[Note] 14
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_112:
	db $60		;[Note] 97
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_113:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $5D		;[Note] 94
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_114:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $C5		;[Wait] 6
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $12		;[Note] 19
				;[Skip delay] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_115:
	db $06		;[Note] 7
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C5		;[Wait] 6
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $06		;[Note] 7
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_116:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $01		;[Note] 2
				;[Skip delay] 2
	db $01		;[Note] 2
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_117:
	db $12		;[Note] 19
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $64	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_118:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $06		;[Note] 7
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_119:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $5D		;[Note] 94
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $23		;[Note] 36
	db $7C		;[Instrument] 13
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_120:
	db $12		;[Note] 19
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $64	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $19		;[Note] 26
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_121:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $06		;[Note] 7
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1E		;[Note] 31
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_122:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $5D		;[Note] 94
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_123:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C5		;[Wait] 6
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_124:
	db $09		;[Note] 10
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C5		;[Wait] 6
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_125:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $00		;[Note] 1
				;[Skip delay] 2
	db $00		;[Note] 1
				;[Skip delay] 2
	db $00		;[Note] 1
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_126:
	db $15		;[Note] 22
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C0		;[Wait] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $1F		;[Note] 32
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $64	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_127:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $22		;[Note] 35
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $A7, $54	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_128:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C5		;[Wait] 6
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_129:
	db $09		;[Note] 10
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C5		;[Wait] 6
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_130:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_131:
	db $15		;[Note] 22
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_132:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_133:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $5D		;[Note] 94
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C0		;[Wait] 1
	db $1C		;[Note] 29
				;[Skip delay] 1
	db $29		;[Note] 42
	db $6D		;[Volume] 13
	db $7C		;[Instrument] 13
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $23		;[Note] 36
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_134:
	db $0C		;[Note] 13
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_135:
	db $1F		;[Note] 32
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_136:
	db $0C		;[Note] 13
	db $79		;[Instrument] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0C		;[Note] 13
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $00		;[Note] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $00		;[Note] 1
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_137:
	db $18		;[Note] 25
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $00		;[Note] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $00		;[Note] 1
	db $C1		;[Wait] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $00		;[Note] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $00		;[Note] 1
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
	db $C0		;[Wait..] 1
	db $A7, $57	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_138:
	db $1F		;[Note] 32
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $A5, $03; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
	db $C3		;[Wait] 4
	db $12		;[Note] 19
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $20		;[Note] 33
	db $C3		;[Wait] 4
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
	db $C1		;[Wait] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_139:
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $98, $06	; Speed 
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6D		;[Volume] 13
	db $98, $06	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C0		;[Wait..] 1
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $98, $06	; Speed 
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $98, $06	; Speed 
	db $C0		;[Wait] 1
	db $98, $06	; Speed 
				;[Skip delay] 1
	db $5D		;[Note] 94
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait..] 1
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $98, $06	; Speed 
	db $C1		;[Wait] 2
	db $10		;[Note] 17
	db $70		;[Instrument] 1
	db $98, $05	; Speed 
	db $C0		;[Wait] 1
	db $98, $06	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $71		;[Instrument] 2
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $6F		;[Volume] 15
	db $98, $06	; Speed 
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $98, $05	; Speed 
	db $C0		;[Wait] 1
	db $98, $06	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C0		;[Wait..] 1
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $23		;[Note] 36
	db $7C		;[Instrument] 13
	db $98, $06	; Speed 
	db $C1		;[Wait] 2
	db $20		;[Note] 33
	db $98, $05	; Speed 
	db $C0		;[Wait] 1
	db $98, $06	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C0		;[Wait..] 1
	db $98, $05	; Speed 
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $98, $06	; Speed 
				;[Skip delay] 1
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_140:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C6		;[Wait] 7
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $20; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_141:
	db $06		;[Note] 7
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $C6		;[Wait] 7
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $20; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_142:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C6		;[Wait] 7
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $20; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_143:
	db $06		;[Note] 7
	db $6C		;[Volume] 12
	db $7A		;[Instrument] 11
	db $C6		;[Wait] 7
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $20; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_144:
	db $0D		;[Note] 14
	db $6F		;[Volume] 15
	db $7B		;[Instrument] 12
	db $C6		;[Wait] 7
	db $A7, $53	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $20; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_145:
	db $3C		;[Note] 61
	db $68		;[Volume] 8
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $05; tone-slide rep
	db $C4		;[Wait] 5
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $A5, $0A; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_146:
	db $35		;[Note] 54
	db $66		;[Volume] 6
	db $82		;[Instrument] 19
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $A6, $01; tone-slide
				;[Skip delay] 1
	db $B0, $05; tone-slide rep
	db $D5		;[Wait] 22
	db $A5, $0A; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_147:
	db $34		;[Note] 53
	db $69		;[Volume] 9
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0C	;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $AF, $04; slide-down rep
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $AF, $06; slide-down rep
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $64		;[Volume] 4
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $31		;[Note] 50
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_148:
	db $C3		;[Wait] 4
	db $34		;[Note] 53
	db $65		;[Volume] 5
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $D3		;[Wait] 20
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
	db $AF, $04; slide-down rep
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C8		;[Wait] 9
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $06; slide-down rep
	db $C5		;[Wait] 6
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $31		;[Note] 50
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_149:
	db $30		;[Note] 49
	db $6A		;[Volume] 10
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $00	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $01	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $02	; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $03	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $04	; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $05	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $07	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $00	; track detune
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $A6, $06; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $C2		;[Wait] 3
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $02; slide-down rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $3D		;[Note] 62
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_150:
	db $2F		;[Note] 48
	db $65		;[Volume] 5
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $01	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $02	; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $03	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $04	; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $95, $05	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $07	; track detune
				;[Skip delay] 1
	db $39		;[Note] 58
	db $95, $00	; track detune
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $A6, $06; tone-slide
				;[Skip delay] 1
	db $B0, $04; tone-slide rep
	db $CD		;[Wait] 14
	db $3D		;[Note] 62
	db $C0		;[Wait] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $36		;[Note] 55
				;[Skip delay] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_151:
	db $2A		;[Note] 43
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $2A		;[Note] 43
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $AF, $04; slide-down rep
	db $C4		;[Wait] 5
	db $2C		;[Note] 45
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_152:
	db $2C		;[Note] 45
	db $65		;[Volume] 5
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $2A		;[Note] 43
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $02; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $2A		;[Note] 43
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $34		;[Note] 53
	db $D2		;[Wait] 19
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $04; slide-down rep
	db $C4		;[Wait] 5
	db $2C		;[Note] 45
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_153:
	db $34		;[Note] 53
	db $6D		;[Volume] 13
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $A6, $0C; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $03; slide-down rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_154:
	db $2D		;[Note] 46
	db $65		;[Volume] 5
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $25		;[Note] 38
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $A6, $0C; tone-slide
				;[Skip delay] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_155:
	db $34		;[Note] 53
	db $6A		;[Volume] 10
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $36		;[Note] 55
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3D		;[Note] 62
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3D		;[Note] 62
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $41		;[Note] 66
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $32		;[Note] 51
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_156:
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $34		;[Note] 53
	db $65		;[Volume] 5
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $36		;[Note] 55
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3D		;[Note] 62
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3D		;[Note] 62
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_157:
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
