
text	db	"This is a TEST",0

_font_a	equ	32*63+6-'a'
_font_A	equ	32*62+11-'A'

_print_string:

	ld	bc,text
	ld	hl,2*(21*32+8)
	xor	a
	ld		(_currentpage),a
	call	1f
	ld	bc,text
	ld	hl,2*(21*32+8)
	ld	a,1
	ld		(_currentpage),a
	
	
1:	ld	a,(bc)
	and	a
	ret	z
	cp	'.'
	jr	nz,3f
	
	ld	de,_font_a-1
	jr	2f
	
3:	cp	'Z'+1
	jr	nc,_small
	add	a,low _font_A
	ld	e,a
	ld	a,high	_font_A
	adc	a,0
	ld	d,a
	jr	2f
_small:	
	add	a,low _font_a
	ld	e,a
	ld	a,high	_font_a
	adc	a,0
	ld	d,a
2:	push	hl
	push	bc
	call 	plot_foreground
	pop	bc
	pop	hl
	inc	bc
[2]	inc	hl
	jr	1b
