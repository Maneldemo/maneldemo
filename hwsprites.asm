
; SGT = 0x7800 ->#R6 = 0x0F
; SAT = 0x7600 ->#R5 = 0xEF #R11=0

_hw_sprite_init:

		di
		; SGT = 0x7800 ->#R6 = 0x0F
		ld		a,0x0F
		out		(0x99),a
		ld		a,128+6
		out		(0x99),a
		
		; SAT = 0x7600 ->#R5 = 0xEF #R11=0
		ld		a,0xEF
		out		(0x99),a
		ld		a,128+5
		out		(0x99),a
		
		xor	a
		out		(0x99),a
		ld		a,128+11
		out		(0x99),a
		ei
		
		; unpack level map (meta_tiles)
		ld	a, :sprtdata.SPRITES
		setpage_a
		
		ld		hl,	sprtdata.SPRITES
		ld		c,0
		ld		de,0x7800
		call	_vdpsetvramwr
		
		ld		bc,0x98
[8]		otir	; 2K

		ld		hl,	sprtdata.ATRIBUTOS
		ld		c,0
		ld		de,0x7600-512
		call	_vdpsetvramwr

		ld		bc,0x98
[2]		otir	; 512


		ld		c,0
		ld		de,0x7600
		call	_vdpsetvramwr
		
		ld		hl,hwsprt_test		
		ld		bc,0x8098
		otir			
		ret
		
hwsprt_test
		db	0xd8
		db	64,128,0,15
		db	64,128,4,15
		db	64,128,8,15
		
		db	32,128,12,15
		db	32,128,16,15
		db	32,128,20,15
		db	0xd8