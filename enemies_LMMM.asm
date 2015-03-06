
enemies_LMMM:

	ld	hl,120
	ld	(_mcx),hl
	ld	hl,16+64
	ld	(_mcy),hl
	
	ld	hl,(_mcy)
	ld	a,l
	and	11111000B
	ld	l,a
[3]	add	hl,hl
	ex	de,hl
	ld	hl,(_mcx)
	ld	a,l
	and	11111000B
[2]	rra
	ld	l,a
	add	hl,de
	
	ld		de,(_shadowbuff)
	add		hl,de		; HL = pointer to the shadow map
	inc		hl
	ld		(hl),127
[2]	inc		hl
	ld		(hl),127
	ld		de,2*32-2
	add		hl,de		; HL = pointer to the shadow map
	ld		(hl),127
[2]	inc		hl
	ld		(hl),127

	
	di
	ld 		a, 32
	out 	(0x99),a
	ld 		a, 17+128
	out 	(0x99),a
	ei

	ld 		c, 0x9B
	
	call _waitvdp;

	ld	a,(_mcstate)
[2]	add	a,a
	ld	e,a
	ld	d,0
	ld	hl,state0
	add	hl,de
	
	ld	a,(_mcframe)
	inc	a
	and	3
	ld	(_mcframe),a
	ld	e,a
	ld	d,0
	add	hl,de
	ld	l,(hl)

	ld		h,216
	out		(c), l 		; sx
	xor a
	out		(0x9B), a 	; sx (high)
	
	out		(c), h 		; sy
	ld		a,3			; source page for sprites
	out 	(0x9B), a 	; sy (high-> page 3)
	
	ld		a,(_mcx)
	out 	(0x9B), a 	; dx
	xor a
	out 	(0x9B), a	; dx (high)
	
	ld		a,(_mcy)
	out 	(0x9B), a	; dy
	ld 		a,(_currentpage)	; destination page
	out 	(0x9B), a	; dy (high-> page 0 or 1)

	ld 		hl,16*257 	; block size

	out 	(c), l
	xor a
	out 	(0x9B), a
	out 	(c), h
	out 	(0x9B), a
	out 	(0x9B), a
	out 	(0x9B), a

	ld		a,10011000B
	out 	(0x9B), a		; command LMMM
	ret

state0		db	0*16,1*16,0*16,2*16
state1		db	3*16,4*16,3*16,5*16
state2		db	6*16,7*16,6*16,7*16
state3		db	6*16,7*16,6*16,7*16