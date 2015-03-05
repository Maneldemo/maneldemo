
plot_frame:
		ld		c,WinHeight
		
		ld	hl,0
		ld	a,(_ymappos)
; [3]		srl	a
		; jr	z,2f
		; ld	de,mapWidth*2
; 1:		add		hl,de
		; dec	a
		; jr	nz,1b
; 2:
[2]		rra
		and	00111110B				; ONLY IF mapWidth=256
		ld	h,a

		ld	de,(_xmappos)
		repeat 2		; X /8 * 2
		srl		d
		rr		e
		endrepeat
		res		0,e
		add		hl,de
		
		ld		de,_levelmap		; byte scale
		add		hl,de
		ex		de,hl			; de -> levelmap
		ld		hl,2*32+2		; hl -> screen 
		
		ld		a,(_xmappos)
		and		00000100B
		ld		b,a
		ld		a,(_ymappos)
		and		00000100B
		rra
		add		a,b
		ex		af,af'			; a' -> scroll offset
		
		
2:		ld		b,WinWidth
		push	de

3:		push	de
		push	hl
		
		ex		de,hl
		ld		e,(hl)
		inc		hl
		ld		d,(hl)		; DE = meta tile
		
		ex		de,hl
[3]		add		hl,hl
		
		ld		de,_metatable
		add		hl,de
		ld		d,0

		ex		af,af'
		ld		e,a
		ex		af,af'

		add		hl,de
		ld		e,(hl)
		inc		hl
		ld		d,(hl)		; DE = tile

		pop		hl			; HL = screen position
		push	hl

		push	bc
		call	plot_tile
		pop		bc
		pop		hl
		pop		de
		
		inc		hl			; the screen in WinWidthxWinHeight
		
[2]		inc		de			; the levelmap is uint
		djnz	3b
		
		if (WinWidth<32)
			ld	de,32-WinWidth	; only if WinWidth<32
			add	hl,de
		endif
		
		pop		de
		
[2]		inc d				; only if mapWidth=256
		
		dec		c
		jr	nz,2b
		ret
