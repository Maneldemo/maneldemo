
up:		
		ld		de,(_ticxframe)
		ld		d,0
		ld		hl,0
		and		a
		sbc		hl,de
		ld		(_mcdy),hl
		
		ld	a,2
		ld	(_mcstate),a
		ret
sup		
		ld		a,(_ymappos)
		ld		b,a
		ld		a,(_ticxframe)
		neg
		add		a,b
		ld		(_ymappos),a
		ret

dwn:	
		ld		hl,(_ticxframe)
		ld		h,0
		ld		(_mcdy),hl
		
		ld	a,3
		ld	(_mcstate),a
		ret
sdwn		
		ld		a,(_ymappos)
		ld		b,a
		ld		a,(_ticxframe)
		add		a,b
		ld		(_ymappos),a
		ret
		
right:	
		ld		hl,(_ticxframe)
		ld		h,0
		ld		(_mcdx),hl

		ld	a,1
		ld	(_mcstate),a
		ret
sright:
		ld		a,(_ticxframe)
		ld		c,a
		ld		b,0
		ld		hl,(_xmappos)
		add		hl,bc
		ld		(_xmappos),hl
		ret

left:	
		ld		de,(_ticxframe)
		ld		d,0
		ld		hl,0
		and		a
		sbc		hl,de
		ld		(_mcdx),hl

		xor	a
		ld	(_mcstate),a
		ret
sleft:	
		ld		a,(_ticxframe)
		neg
		ld		c,a
		ld		b,-1
		ld		hl,(_xmappos)
		add		hl,bc
		ld		(_xmappos),hl
		ret

;-------------------------------------

xmax_on_screen		equ		256-16-16-64
xmin_on_screen		equ		16+64
ymin_on_screen		equ		16+32
ymax_on_screen		equ		128+16-32-16

manage_hero:

	ld	bc,16
	ld	de,(_xmappos)
	ld	hl,(_mclx)
	and	a
	sbc	hl,de
	add	hl,bc
	ld	(_mcx),hl
	ld	de,xmax_on_screen;	256-80+3
	and	a
	sbc	hl,de
	call	nc,sright
	ld	hl,(_mcx)
	ld	de,xmin_on_screen;	64
	and	a
	sbc	hl,de
	call	c,sleft
	
	ld	bc,16
	ld	de,(_ymappos)
	ld	d,0
	ld	hl,(_mcly)
	and	a
	sbc	hl,de
	add	hl,bc
	ld	(_mcy),hl
	ld	de,ymax_on_screen;160-48+3
	and	a
	sbc	hl,de
	call	nc,sdwn
	ld	hl,(_mcy)
	ld	de,ymin_on_screen;32
	and	a
	sbc	hl,de
	call	c,sup
	

	call	new_dirs
	ld	de,(_mclx)
	ld	hl,(_mcdx)
	add	hl,de
	ld	(_mclx),hl

	ld	de,(_mcly)
	ld	hl,(_mcdy)
	add	hl,de
	ld	(_mcly),hl	

	call	probe_level
	ret
;-------------------------------------

new_dirs:
	
	call	_cursors

	bit		0,(ix)
	call	z,up
	bit		1,(ix)
	call	z,dwn
	bit		3,(ix)
	call	z,right
	bit		2,(ix)
	call	z,left
	ld		a,(ix)
	and		15
	cp		15
	jr		nz,1f
	ld		a,-1
	ld		(_mcframe),a
	ld		hl,0
	ld		(_mcdx),hl
	ld		(_mcdy),hl
	ret
1:	and		00000011B
	cp		00000011B
	jr		nz,1f
	ld		hl,0
	ld		(_mcdy),hl
	ret
1:	ld		a,(ix)
	and		00001100B
	cp		00001100B
	ret		nz
	ld		hl,0
	ld		(_mcdx),hl
	ret
;-------------------------------------
	
init_hero
	ld	hl,64
	ld	(_mclx),hl
	ld	hl,64
	ld	(_mcly),hl
	xor		a
	ld		(_mcframe),a
	ld	a,1
	ld	(_mcstate),a
	ret

;-------------------------------------

plot_hero:
	ld	hl,(_mcy)	; relative with in the frame on the screen
	ld	a,l
	and	11111000B
	ld	l,a
[3]	add	hl,hl
	ex	de,hl
	ld	hl,(_mcx)	; relative with in the frame on the screen
	ld	a,l
	and	11111000B
[2]	rrca
	ld	l,a
	add	hl,de

	ld		de,(_shadowbuff)
	add		hl,de		; HL = pointer to the shadow map
	
	repeat	3
	inc		hl
	ld	(hl),0x08
	inc		hl
	endrepeat
	
	ld		de,2*32-6
	add		hl,de		; HL = pointer to the shadow map
	
	repeat	3
	inc		hl
	ld	(hl),0x08
	inc		hl
	endrepeat
	
	ld		de,2*32-6
	add		hl,de		; HL = pointer to the shadow map
	
	repeat	3
	inc		hl
	ld	(hl),0x08
	inc		hl
	endrepeat
	
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

	ld		h,212
	out		(c), l 		; sx
	xor a
	out		(0x9B), a 	; sx (high)
	
	out		(c), h 		; sy
	ld		a,1			; source page for sprites
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


;-------------------------------------


GTSTCK      equ 0x00D5      ;Returns the joystick status
GTTRIG      equ 0x00D8      ;Returns current trigger status


_cursors:
	
; PSG I/O port A (r#14) – read-only
; Bit	Description	Comment
; 0	Input joystick pin 1	(up)
; 1	Input joystick pin 2	(down)
; 2	Input joystick pin 3	(left)
; 3	Input joystick pin 4	(right)
; 4	Input joystick pin 6	(trigger A)
; 5	Input joystick pin 7	(trigger B)
; 6	Japanese keyboard layout bit	(1=JIS, 0=ANSI)
; 7	Cassette input signal	

.rd_joy:
	ld	a,#0f
	out	(#a0),a
	ld	a,0x8F
	out	(#a1),a		; select port A
	ld	a,#0e
	out	(#a0),a
	in	a,(#a2)
.rd_key:	
	ld	ix,joystick
	ld	(ix),a
	
	ld  e,8
    call    checkkbd
	bit	0,a				; space
	jr	nz,1f
	res	4,(ix)			; (trigger A)
1:
	bit	7,a				; RIGHT
	jr	nz,1f
	res	3,(ix)			; (right joy)
1:
	bit	6,a				; DOWN
	jr	nz,1f
	res	1,(ix)			; (down joy)
1:
	bit	5,a				; UP
	jr	nz,1f
	res	0,(ix)			; (up joy)
1:
	bit	4,a				; LEFT
	jr	nz,1f
	res	2,(ix)			; (left joy)
1:
	ld  e,5
    call    checkkbd
	bit	5,a				; X
	jr	nz,1f
	res	5,(ix)			; (trigger B)
1:
	bit	7,a				; Z
	jr	nz,1f
	res	4,(ix)			; (trigger A)
1:
	ret
