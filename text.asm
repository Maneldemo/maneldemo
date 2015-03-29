
text	db	"This is a TEST 1234.",0

_font_0	equ	32*62+0-'0'
_font_A	equ	32*62+11-'A'
_font_a	equ	32*63+6-'a'
_font_.	equ 32*63+5

_print_string:
	LD	A,0xC9
	LD	(0x0038),A

	ld	bc,text
	ld	hl,2*(21*32+6)
	xor	a
	ld		(_currentpage),a
	call	1f
	ld	bc,text
	ld	hl,2*(21*32+6)
	ld	a,1
	ld		(_currentpage),a
	call	1f
	
	LD	A,0xC3
	LD	(0x0038),A
	ret
	
1:	ld	a,(bc)
	and	a
	ret	z
	cp	'.'
	jr	nz,3f
	
	ld	de,_font_.
	jr	2f
	
3:	cp	'a'
	jr	nc,_small
	
	cp	'A'
	jr	nc,_capital

_digits:
	add	a,low _font_0
	ld	e,a
	ld	a,high	_font_0
	adc	a,0
	ld	d,a
	jr	2f

_capital:
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
		
	call 	vdp_conf
	ld		a,11010000B
	out 	(0x9B), a		; command HMMM

	pop	bc
	pop	hl
	inc	bc
[2]	inc	hl
	jr	1b
