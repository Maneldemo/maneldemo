
nenemies 	equ	8
sprite_size	equ	8*8*2

		struct enemy
type 	db
state 	db
frame 	db
x		dw	
y		dw
dx		dw
dy		dw
nx		db
ny		db
buf		ds	sprite_size
	endstruct
	
	page 6
frames:
[128]	ds	sprite_size

	page 0
testcode
	ld	ix,enemylist
	ld	(ix+enemy.x),0
	ld	(ix+enemy.y),0
	ld	(ix+enemy.nx),4
	ld	(ix+enemy.ny),3
	ld	(ix+enemy.frame),3
	
	ld	hl,enemylist
	ld	de,_shadowbuff+2*(WinWidth*3+3)
	call save_background
	ld	hl,enemylist
	ld	de,_shadowbuff+2*(WinWidth*3+3)
	call plot_sprite
	ret
	
;;;;;;;;;;;;;;;;;;;;;;;;
; in 
;  de destination in a WinHeight*WinWidth buffer of uints
;  hl source in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

plot_sprite:
	push	hl
	pop		ix
	ld	l,(ix+enemy.frame)
	ld	h,0
[6]	add	hl,hl			; sprite_size = 64*2

	ld	a,:frames
	ld	(_bank2),a
	ld	bc,frames
	add	hl,bc			; hl aims to the current frame to be plotted
	
	ld	a,(ix+enemy.ny)
	ld	b,0
	
2:	ld	c,(ix+enemy.nx)
	sla	c				; moving uints
	push	de
	ldir
	pop	de

	ld	c,WinWidth*2
	ex	de,hl
	add	hl,bc
	ex	de,hl
	dec	a
	jp	nz,2b
	ret

;;;;;;;;;;;;;;;;;;;;;;;;
; in 
;  de source in a WinHeight*WinWidth buffer of uints
;  hl destination in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

save_background:
	push	hl
	pop		ix
	ld	bc,enemy.buf
	add	hl,bc
	
	ld	a,(ix+enemy.ny)
	ex	de,hl
	ld	b,0
	
2:	ld	c,(ix+enemy.nx)
	sla	c
	push	de
	ldir
	pop	de

	ld	c,WinWidth*2
	ex	de,hl
	add	hl,bc
	ex	de,hl
	dec	a
	jp	nz,2b
	ret
	
;;;;;;;;;;;;;;;;;;;;;;;;
; in 
;  de destination in a WinHeight*WinWidth buffer of uints
;  hl source in enemylist
;;;;;;;;;;;;;;;;;;;;;;;;

restore_background:
	push	hl
	pop		ix
	ld	bc,enemy.buf
	add	hl,bc
	
	ld	a,(ix+enemy.ny)
	ld	b,0
	
2:	ld	c,(ix+enemy.nx)
	sla	c
	push	de
	ldir
	pop	de

	ld	c,WinWidth*2
	ex	de,hl
	add	hl,bc
	ex	de,hl
	dec	a
	jp	nz,2b
	ret
	
	
	