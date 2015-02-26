

		struct enemy
type 	db
state 	db
x		dw	
y		dw
dx		dw
dy		dw
nx		db
ny		db
buf		ds	8*8
	endstruct

nenemies equ	8


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
	sll	c
	push	de
	ldir
	pop	de

	ld	c,WinWidth
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
	sll	c
	push	de
	ldir
	pop	de

	ld	c,WinWidth
	ex	de,hl
	add	hl,bc
	ex	de,hl
	dec	a
	jp	nz,2b
	ret
	
	
	