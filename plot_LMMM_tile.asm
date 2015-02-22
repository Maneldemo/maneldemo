;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl  configured in window map 32x24
; de  tile to be plot
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
plot_tile:
	add		hl,hl		; now HL is aiming to uints

	push	hl
	ld		bc,(_shadowbuff)
	add		hl,bc		; HL = pointer to the shadow map
	
	ld		a,(hl)		; Avoid writing the same tile
	cp		e
	jr		nz,1f
	inc		hl
	ld		a,(hl)
	cp		d
	dec		hl
	jr		nz,1f

	pop		hl
	ret
	
1:	ld		(hl),e		; rewrite the position with the actual tile in shadowbuffer
	inc		hl
	ld		(hl),d
	
	pop		hl			; HL relative position in 32x24*2
						; DE new 16 tile to be plotted
						
	bit 	7,d			; test for LMMMM	
	jp		nz,plot_trasp_tile
	
	ld		a,d
	or		e
	jp		nz,plot_foreground

plot_background:

	push	hl
	ld		de,_backmap-32*4-2
	add		hl,de
	ld		e,(hl)
	inc		hl
	ld		d,(hl)
	pop		hl

plot_foreground:

	call 	vdp_conf

	ld		a,0xD0
	out 	(0x9B), a		; command
	ret

	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl   configured in window map 32x24
; de  tile to be plot
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

plot_trasp_tile:

	push	hl
	push	de
	call	plot_background
	pop		de
	pop		hl

	call	vdp_conf

	ld		a,0x98
	out 	(0x9B), a		; command
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl   configured in window map 32x24
; de  tile to be plot
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

vdp_conf:	
	
[2]	add		hl,hl
	ld		c,l			; C = dx*8
	ld		a,h
[3]	add		a,a
	ld		b,a			; B = dy*8
	push	bc			; dx*8 and dy*8 on the stack
	
	; de has the 16 bit tile
	; de = 10 bits = 5 bits for y and 5 bits for x

	ex		de,hl
[3]	add		hl,hl
	
	; now l is sx*8 and h is sy
		
	ld		a,h
[3]	add		a,a
	ld		h,a
	push	af
	
	; now h is sy*8
	di
	ld 		a, 32
	out 	(0x99),a
	ld 		a, 17+128
	out 	(0x99),a
	ei

	ld 		c, 0x9B
	
	call _waitvdp;
	
	out		(c), l 		; sx
	xor a
	out		(0x9B), a 	; sx (high)
	
	out		(c), h 		; sy
	pop		af
	ld		a,2			; source page for tiles 32x32=1024 tiles
	adc		a,0
	out 	(0x9B), a 	; sy (high-> page 2)

	pop		hl			; recover dx*8,dy*8
	
	out 	(c), l 		; dx
	xor a
	out 	(0x9B), a	; dx (high)
	out 	(c), h 		; dy
	ld 		a,(_currentpage)	; destination page
	out 	(0x9B), a	; dy (high-> page 0 or 1)

	ld 		l,8 		; block size

	out 	(c), l
	xor a
	out 	(0x9B), a
	out 	(c), l
	out 	(0x9B), a
	out 	(0x9B), a
	out 	(0x9B), a
	ret

