
plot_frame:
		ld		c,WinHeight
		
		ld		l,0
		ld		a,(_ymappos)

[2]		rra
		and	00111110B				; ONLY IF mapWidth=256
		ld	h,a

		ld		de,(_xmappos)
		repeat 2		; X /8 * 2
		srl		d
		rr		e
		endrepeat
		res		0,e
		add		hl,de
		
		ld		de,_levelmap		; byte scale
		add		hl,de
		ex		de,hl				; de -> levelmap
		ld		hl,2*(2*32+2)		; hl -> screen 
		
		ld		a,(_xmappos)
		and		00000100B
		ld		b,a
		ld		a,(_ymappos)
		and		00000100B
		rra
		add		a,b
		ld		ixl,a			; ixl -> scroll offset
		
		
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
		
		ld	a,ixl
		or	l
		ld	l,a
		
		ld		de,_metatable
		add		hl,de

		ld		e,(hl)
		inc		hl
		ld		d,(hl)		; DE = tile

		pop		hl			; HL = screen position
		push	hl

		push	bc
		
		ld		bc,(_shadowbuff)
		add		hl,bc		; HL = pointer to the shadow map
		
		ld		a,(hl)		; Avoid writing the same tile
		cp		e
		inc		hl
		jp		nz,1f
		ld		a,(hl)
		cp		d
		jp		nz,1f
		jp		4f
1:
		ld		(hl),d		; rewrite the position with the actual tile in shadowbuffer
		dec		hl
		ld		(hl),e
		and		a
		sbc		hl,bc		; HL relative position in 32x24*2
							; DE new 16 tile to be plotted
		call	plot_tile
4:		
		pop		bc
		pop		hl
		pop		de
		
[2]		inc		hl			; the screen in WinWidthxWinHeight of uints
		
[2]		inc		de			; the levelmap is uint
		djnz	3b
		
		if (WinWidth<32)
			ld	de,2*(32-WinWidth)	; only if WinWidth<32
			add	hl,de
		endif
		
		pop		de
		
[2]		inc d				; only if mapWidth=256
		
		dec		c
		jr	nz,2b
		ret
