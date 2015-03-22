

probe_level:
	
	
	ld	hl,(_mcly)	; ONLY IF mapWidth=256
	; ld	bc,16-4
	; add	hl,bc
	ld	a,l
	and	11111100B
	ld	l,a
[4]	add	hl,hl
	
	ex	de,hl

	ld	hl,(_mclx)	; ONLY IF mapWidth=256
[3]	add	hl,hl	
	ld	l,h
	ld	h,0
	
	add	hl,de
	
	ld	de,_cur_level_bf
	add	hl,de
	
	ld	a,(_mclx)
[2]	rra			; x/4
	and	7
	ld	b,a
	ld	a,(hl)
	ld	(_mcprobe),a
	jr	z,2f
1:	rra
	djnz	1b
2:	and	1

	ld	(_mcprobeb),a
	ret
	