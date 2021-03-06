;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl  configured in window map 32x24 of uints
; de  tile to be plot
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
plot_tile:
							
	bit 	7,d			; test for LMMMM	
	jp		nz,plot_trasp_tile
	
	ld		a,d
	or		e
	jp		nz,plot_foreground

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl  configured in window map 32x24
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; plot_background:

	push	hl
	ld		de,_backmap-32*4-2
	add		hl,de
	ld		e,(hl)
	inc		hl
	ld		d,(hl)
	pop		hl
	
	
plot_foreground:

counter:=1
	while counter<NSolidColors
	ld	a,low SolidTile@#
	cp	e
	jr	nz,1f
	ld	a,high SolidTile@#
	cp	d
	ld	a,17*SolidColor@#		; solid color1
	jp	z,plot_solid_box
1:	
counter:=counter+1
	endwhile	

	call 	vdp_conf

	ld		a,11010000B
	out 	(0x9B), a		; command HMMM
	ret

	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl   configured in window map 32x24
; de  tile to be plot
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

plot_trasp_tile:

	push	de
	push	hl
					;	plot_background
	ld		de,_backmap-32*4-2
	add		hl,de
	ld		e,(hl)
	inc		hl
	ld		d,(hl)

	pop		hl
	push	hl
	call	plot_foreground
	pop		hl
	pop		de

	call	vdp_conf

	ld		a,10011000B
	out 	(0x9B), a		; command LMMM
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input
; hl configured in window map 32x24
;  a color
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

plot_solid_box:
	ld		e,a		; solid color

[2]	add		hl,hl
	ld		c,l			; C = dx*8
	ld		a,h
[3]	add		a,a
	ld		b,a			; B = dy*8
	push	bc			; dx*8 and dy*8 on the stack

	di
	ld 		a, 36
	out 	(0x99),a
	ld 		a, 17+128
	out 	(0x99),a
	ei

	ld 		c, 0x9B
	
	call _waitvdp;
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
	out 	(c), e
	out 	(0x9B), a
	ld		l,11000000B	; command HMMV
	out 	(c), l
	ret
