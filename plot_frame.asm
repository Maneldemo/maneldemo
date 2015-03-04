
plot_frame:
		ld		c,WinHeight
		
		ld		hl,(_levelmappos)	; pixel scale
		ld		a,(_levelmappos+2)	
		repeat 2
		srl		a
		rr		h
		rr		l
		endrepeat
		res		0,l
		ld		de,_levelmap		; byte scale
		add		hl,de
		ex		de,hl			; de -> levelmap
		ld		hl,2*32+2		; hl -> screen 
		
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
		ld		a,(_levelmappos)
		and		00000100B
		ld		e,a
		ld		a,(_levelmappos+1)
[3]		rra
		and		00000010B
		add		a,e
		ld		e,a
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
