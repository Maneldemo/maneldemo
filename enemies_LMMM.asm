
enemies_LMMM:
	di
	ld 		a, 32
	out 	(0x99),a
	ld 		a, 17+128
	out 	(0x99),a
	ei

	ld 		c, 0x9B
	
	call _waitvdp;
	
	ld		a,(_mcdx)
	and	a
	jr	nz,2f
	dec	a
	ld	(_mcframe),a	
2:
	ld	a,(_mcframe)
	inc	a
	cp	3
	jr	nz,1f
	xor	a
1:	ld	(_mcframe),a
[4]	add	a,a
	ld	l,a

	ld	a,(_mcstate)
	and	a
	jr	z,1f
	ld	a,3*16
	add	a,l
	ld	l,a
1:
	ld	h,216
	out		(c), l 		; sx
	xor a
	out		(0x9B), a 	; sx (high)
	
	out		(c), h 		; sy
	ld		a,3			; source page for sprites
	out 	(0x9B), a 	; sy (high-> page 3)
	
	ld	hl,120+(16+64)*256
	out 	(c), l 		; dx
	xor a
	out 	(0x9B), a	; dx (high)
	out 	(c), h 		; dy
	ld 		a,(_currentpage)	; destination page
	out 	(0x9B), a	; dy (high-> page 0 or 1)

	ld 		hl,16*257 		; block size

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
