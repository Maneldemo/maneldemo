
nenemies 	equ	3		; max number of enemies
_nenemies 	equ	2		; actual number of enemies
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

	page 13
frames:
	incbin smetaframes.bin

int_sprites
	ld	ix,enemylist
	
; enemy 0
	ld	(ix+enemy.nx),7
	ld	(ix+enemy.ny),5
	
	ld	(ix+enemy.type),0
	ld	(ix+enemy.state),0
	ld	(ix+enemy.frame),0
	ld	(ix+enemy.dy),40
	
	ld	bc,_levelmap+(2+mapWidth*3)*2
	ld	(ix+enemy.mappos),c
	ld	(ix+enemy.mappos+1),b

; enemy 1	
	ld	bc,enemy
	add	ix,bc
	ld	(ix+enemy.nx),7
	ld	(ix+enemy.ny),5
	
	ld	(ix+enemy.type),0
	ld	(ix+enemy.state),0
	ld	(ix+enemy.frame),0
	ld	(ix+enemy.dy),78
	
	ld	bc,_levelmap+(15+mapWidth*1)*2
	ld	(ix+enemy.mappos),c
	ld	(ix+enemy.mappos+1),b
	
; enemy 2
	ld	bc,enemy
	add	ix,bc
	ld	(ix+enemy.nx),7
	ld	(ix+enemy.ny),5
	
	ld	(ix+enemy.type),1
	ld	(ix+enemy.state),0
	ld	(ix+enemy.frame),23
	ld	(ix+enemy.dy),0
	
	ld	bc,_levelmap+(3+mapWidth*11)*2
	ld	(ix+enemy.mappos),c
	ld	(ix+enemy.mappos+1),b
	
	ret

move_sprites:
	ld	ix,enemylist
	ld	b,_nenemies
2:	push	bc
	ld	a,(ix+enemy.type)
	and	a
	jr	nz,1f
	call	sp_type_0
	jp	.nextsp
1:
	dec	a
	jr	nz,1f
	call	sp_type_1
	jp	.nextsp
1:
.nextsp
	ld	bc,enemy
	add	ix,bc
	pop		bc
	djnz	2b
	ret
		
	
sp_type_1:
	ld	a,(ix+enemy.frame)
	inc	a
	cp	27
	ld	(ix+enemy.frame),a
	ret	nz
	ld	a,23
	ld	(ix+enemy.frame),a
	ret

sp_type_0:
	ld	a,(ix+enemy.state)
	and	a
	jr	z,move_sprite_right
	
move_sprite_left:
	call	animate1
	ld	a,(ix+enemy.dx)
	dec	a
	and	3
	ld	(ix+enemy.dx),a
	ret	nz
	
	ld	l,(ix+enemy.mappos)
	ld	h,(ix+enemy.mappos+1)
[2]	dec	hl
	ld	(ix+enemy.mappos),l
	ld	(ix+enemy.mappos+1),h

	dec	(ix+enemy.dy)
	ret	nz
	ld	(ix+enemy.state),0
	ld	(ix+enemy.frame),0
	ld	(ix+enemy.dy),32
	ret
	
animate1
	ld	a,(ix+enemy.frame)
	inc	a
	cp	10+6
	ld	(ix+enemy.frame),a
	ret	nz
	ld	a,10
	ld	(ix+enemy.frame),a
	ret
	
move_sprite_right:
	call	animate0
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
	
	dec	(ix+enemy.dy)
	ret	nz
	ld	(ix+enemy.state),1
	ld	(ix+enemy.frame),10
	ld	(ix+enemy.dy),32
	ret
animate0
	ld	a,(ix+enemy.frame)
	inc	a
	cp	6
	ld	(ix+enemy.frame),a
	ret	nz
	xor	a
	ld	(ix+enemy.frame),a
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
	ld	ix,enemylist
	ld	b,_nenemies
2:	push	bc
	call	save_background_1f
	ld	bc,enemy
	add	ix,bc
	pop		bc
	djnz	2b
	ret

save_background_1f:
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
	ld	ix,enemylist
	ld	b,_nenemies
2:	push	bc
	call	plot_sprite_1f
	ld	bc,enemy
	add	ix,bc
	pop		bc
	djnz	2b
	ret
	
plot_sprite_1f:
	ld	l,(ix+enemy.frame)
	ld	h,0
[7]	add	hl,hl		; sprite_size = 64*2

	ld	bc,frames
	add	hl,bc		; hl aims to the current frame to be plotted

	jp	plot_sprtite_frame
	
;;;;;;;;;;;;;;;;;;;;;;;;
; restore_background
; in 
;  ix source in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

restore_background:
	ld	ix,enemylist
	ld	b,_nenemies
2:	push	bc
	call	restore_background_1f
	ld	bc,enemy
	add	ix,bc
	pop		bc
	djnz	2b
	ret
	
restore_background_1f:
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
	
	
	