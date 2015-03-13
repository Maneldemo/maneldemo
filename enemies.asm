
nenemies 	equ	8
sprite_size	equ	8*8*2

		struct enemy
type 	db
state 	db
frame 	db
x		dw	
y		dw
mappos	dw
dx		dw
dy		dw
nx		db
ny		db
buf		ds	sprite_size
	endstruct
	
	page 12,13
frames:
		incbin smetaframes.bin

	page 0,1
int_sprites
	ld	ix,enemylist
	ld	(ix+enemy.x),0
	ld	(ix+enemy.x+1),0
	
	ld	(ix+enemy.y),0
	ld	(ix+enemy.y+1),0
	
	ld	(ix+enemy.nx),3
	ld	(ix+enemy.ny),2
	
	ld	(ix+enemy.frame),0
	
	ld	bc,_levelmap+2+mapWidth*10*2
	ld	(ix+enemy.mappos),c
	ld	(ix+enemy.mappos+1),b
	ret

move_sprites
	ld	a,(ix+enemy.dx)
	dec	a
	and	3
	ld	(ix+enemy.dx),a
	ret	nz
	
	ld	l,(ix+enemy.mappos)
	ld	h,(ix+enemy.mappos+1)
[2]	inc	hl
	ld	(ix+enemy.mappos),l
	ld	(ix+enemy.mappos+1),h
	ret

	; ld	bc,(ix+enemy.y)
	; ld	hl,mapWidth
	; call	bcxhl
	; ld	bc,(ix+enemy.y)
	; add	hl,bc
	; ld	bc,_levelmap
	; add	hl,bc	

;;;;;;;;;;;;;;;;;;;;;;;;
; save_background
; in 
;  ix destination in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

save_background:
	ld	e,(ix+enemy.mappos)
	ld	d,(ix+enemy.mappos+1)
	
	push	ix
	pop		hl
	ld	bc,enemy.buf
	add	hl,bc
	ex	de,hl
	
	ld	a,(ix+enemy.ny)

	ld	b,0
	
2:	ld	c,(ix+enemy.nx)
	sla	c
	push	hl
	ldir
	pop	hl
	
[2]	inc h	; only if (mapWidth=256)
	
	dec	a
	jp	nz,2b
	ret
	
;;;;;;;;;;;;;;;;;;;;;;;;
; plot_sprite
; in 
;  ix destination in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

plot_sprite:
	ld	l,(ix+enemy.frame)
	ld	h,0
[6]	add	hl,hl			; sprite_size = 64*2

	ld	a,:frames
	setpage_a
	ld	bc,frames
	add	hl,bc			; hl aims to the current frame to be plotted

	jp	plot_sprtite_frame
	
;;;;;;;;;;;;;;;;;;;;;;;;
; restore_background
; in 
;  ix source in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

restore_background:
	push	ix
	pop		hl
	ld	bc,enemy.buf
	add	hl,bc			

plot_sprtite_frame:
	ld	e,(ix+enemy.mappos)
	ld	d,(ix+enemy.mappos+1)	; hl->buffer, de->_levelmap
	
	ld	a,(ix+enemy.ny)
	ld	b,0
	
2:	ld	c,(ix+enemy.nx)
	sla	c
	push	de
	ldir
	pop	de

[2]	inc d	; only if (mapWidth=256)

	dec	a
	jp	nz,2b
	ret
	
	
	