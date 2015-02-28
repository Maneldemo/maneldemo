
enemies_LMMM:

	di
	ld 		a, 32
	out 	(0x99),a
	ld 		a, 17+128
	out 	(0x99),a
	ei

	ld 		c, 0x9B
	
	call _waitvdp;
	
	ld	hl,0+0*256
	out		(c), l 		; sx
	xor a
	out		(0x9B), a 	; sx (high)
	
	out		(c), h 		; sy
	ld		a,3			; source page for sprites
	out 	(0x9B), a 	; sy (high-> page 3)
	
	ld	hl,32+64*256
	out 	(c), l 		; dx
	xor a
	out 	(0x9B), a	; dx (high)
	out 	(c), h 		; dy
	ld 		a,(_currentpage)	; destination page
	out 	(0x9B), a	; dy (high-> page 0 or 1)

	ld 		hl,64+64*256 		; block size

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
