;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

        output "maneldem.rom"

        org 4000h
        dw  4241h,START,0,0,0,0,0,0


		include "header.asm"
		

		include "rominit64.asm"

rdslt	equ	0x000c
CALSLT	equ	0x001c
chgcpu	equ	0x0180	; change cpu mode
exttbl	equ	0xfcc1	; main rom slot



; Switch to r800 rom mode
	
_set_r800:
		in	a,(0aah)
		and 011110000B			; upper 4 bits contain info to preserve
		or	6
		out (0aah),a
		in	a,(0a9h)
		ld	l,a

		ld	a,(0x002d)
		cp	3					; this is a TR
		ld	a,l
		jr	z,set_turbo_tr
								; this is anything else
		and	0x02				; CTR
		ret	nz					; if NZ, CTR is not pressed set the turbo

		ld	A,(chgcpu)
		cp	0C3h
		ld	a,81h              ; R800 ROM mode or any other turbo
		call	z,chgcpu
		ret

set_turbo_tr
		and	0x02				; CTR
		ret	z					; if Z, CTR is pressed -> do not set the turbo
		ld	a,81h              	; R800 ROM mode
		jp chgcpu
		
_cls:
		call	_vdpsetvramwr
		ld	bc,0
1:		xor	a
		out	(0x98),a
		dec	bc
		ld	a,b
		or	c
		jr	nz,1b
		ret

;-------------------------------------
; Entry point
;-------------------------------------
START:
        ld		e,5
		call	_scr

		call 	_set_r800
        call    powerup
		
		di
		// border color
		ld		a,0x55
		out		(0x99),a
		ld		a,128+7
		out		(0x99),a
		// Disable sprites + TP
		ld		a,(0xFFE7)
		or		2+32
		ld		(0xFFE7),a
		out		(0x99),a
		ld		a,128+8
		out		(0x99),a
		
		// Set 192 lines @50Hz (PAL assumed!)
		ld		a,(0xFFE8)
		and		127
		or		2
		ld		(0xFFE8),a
		out		(0x99),a
		ld		a,128+9
		out		(0x99),a
		ei
		
		
;Set VDP for writing at address CDE (17-bit) 

		ld	c,0
 		ld	de,0
		call	_cls
	
		
		LD	A,0xC3
		LD	HL,_isr
		DI
		LD	(0xFD9F),A
		LD	(0xFDA0),HL
		EI

		call	_clean_buffs

		call	_SetPalet
		ld		e,2
        call	_setpage
		
		
		; unpack level map (meta_tiles)
		
		xor	a
		ld		(_vbit16 ),a
		ld		de,	_level
		ld		bc,0
		call	_vuitpakker 
		
		xor	a
		ld		de,0
		call	_vdpsetvramrd
		ld		hl,_levelmap
		ld		de,mapWidth*mapHeight*2
		ld		c,0x98
1:		ini
		dec	de
		ld	a,d
		or	e
		jr	nz,1b

		; unpack frame
				
		xor	a
		ld		(_vbit16 ),a
		ld		de,	_frame
		ld		bc,0
		call	_vuitpakker 

		ld		de,	_frame
		ld		bc,0x8000
		call	_vuitpakker 
		
		; unpack tileset
		
		ld		a,1
		ld		(_vbit16 ),a
		ld		de,	SAMPLE_START
		ld		bc,0
		call	_vuitpakker 

		; main init
			
		ld		hl,0
		ld		(_levelmappos),hl
		ld		(_nframes),hl
		ld		a,h
		ld		(_currentpage),a
		ld		(_dx),a
		
main_loop:
		xor		a
		ld		(_ticxframe),a

		ld		a,(_currentpage)
		xor		1
		ld		(_currentpage),a
		xor		1
		ld		e,a
		halt
        call	_setpage
		bit		0,e
		ld		hl,_shadow1
		jr		nz,1f
		ld		hl,_shadow0
1:		ld		(_shadowbuff),hl

		ld		c,WinHeight
		
		ld		hl,(_levelmappos)
		repeat 2
		srl		h
		rr		l
		endrepeat
		res		0,l
		ld		de,_levelmap
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
		ld		a,(_levelmappos)
		and		00000110B
		ld		d,0
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
		
[2]		inc		de			; the levelmap is int
		djnz	3b
		
		if (WinWidth<32)
			ld	de,32-WinWidth	; only if WinWidth<32
			add	hl,de
		endif
		
		pop		de
		
		if (mapWidth=256)
[2]			inc d
		else
			push	hl
			ld		hl,mapWidth*2
			add		hl,de
			ex		de,hl
			pop		hl
		endif
		
		dec		c
		jr	nz,2b

		call	_print_fps

		ld		hl,(_nframes)
		inc		hl
		ld		(_nframes),hl

		
		call	_cursors
		ld		a,l
		cp		1
		jp		z,up
		cp		3
		jp		z,right
		cp		5
		jp		z,dwn
		cp		7
		jp		z,left
		
		jp      main_loop

        ret

up:		ld		hl,(_levelmappos)
		ld		bc,-mapWidth*8
		add		hl,bc
		ld		(_levelmappos),hl
		jp      main_loop

dwn:	ld		hl,(_levelmappos)
		ld		bc,mapWidth*8
		add		hl,bc
		ld		(_levelmappos),hl
		jp      main_loop
		
right:	ld		hl,(_levelmappos)
		ld		a,(_ticxframe)
		ld		c,a					; if less than 10 FPS skip a step
		ld		b,0
		add		hl,bc
		ld		(_levelmappos),hl
		jp      main_loop

left:	ld		hl,(_levelmappos)
		ld		a,(_ticxframe)
		neg
		ld		c,a					; if less than 10 FPS skip a step
		ld		b,-1
		add		hl,bc
		ld		(_levelmappos),hl
		jp      main_loop

;-------------------------------------
JIFFY: equ 0xFC9E 
;-------------------------------------
_isr:	push	hl
		push	bc
		ld		hl,(JIFFY)
		ld		bc,-50			; PAL assumed
		add		hl,bc
		ld		hl,_ticxframe
		inc		(hl)
		pop		bc
		pop		hl
		ret	nc
		
		push	hl
		ld		hl,0
		ld		(JIFFY),hl
		ld		hl,(_nframes)
		ld		(_fps),hl
		ld		hl,0
		ld		(_nframes),hl
		call	_compute_fps
		pop		hl
		ret
;-------------------------------------
;   Power-up routine for 32K ROM
;   set pages and sub slot
;-------------------------------------
powerup:
        call    search_slot
		call	setrompage2
        ret

;-------------------------------------
		

; exttbl		equ	0xfcc1      ;main rom slot
; CALSLT		equ	0x001c
GTSTCK      equ 0x00D5      ;Returns the joystick status
GTTRIG      equ 0x00D8      ;Returns current trigger status


_cursors:

	xor     a
	call	GTSTCK
	push	af		;return the cursors
	ld		a,1
	call	GTSTCK
	pop		hl		;return the joystick
	or		h
	ld		l,a
	ret
	


        
;-------------------------------------
		
vdpport1 equ 0x99
vdpport2 equ 0x9A

levelcolors:
	incbin "palette.bin"

_SetPalet:   
	di
	xor a 			;Set pointer to zero.
	out (vdpport1),a        
	ld  a,16 | 010000000B
	out (vdpport1),a

	ld  hl,levelcolors
	ld bc,vdpport2+32*256
	otir
	ei
	ret

;-------------------------------------

_vuitpakker:
    push iy
    push ix

    call  1f

    pop ix
    pop iy
    ret

1:
; in de input
; in bc VRAM output

    ld h,d
    ld l,e
    ld d,b
    ld e,c

; pletter v0.5 msx unpacker

;-----------------------------------------------------------
; Pletter 0.5b VRAM Depacker - 64Kb version
; HL = RAM/ROM source ; DE = VRAM destination
;-----------------------------------------------------------
    di

; VRAM address setup
;    ld  a,e
;    out (0x99),a
;    ld  a,d
;    or  0x40
;    out (0x99),a
    call setVwrite

; Initialization
    ld  a,(hl)
    inc hl
    exx
    ld  de,0
    add a,a
    inc a
    rl  e
    add a,a
    rl  e
    add a,a
    rl  e
    rl  e
    ld  hl,__modes
    add hl,de
    ld  e,(hl)
    db    0xdd
    ld  l,e         ; ld ixl,e    
    inc hl
    ld  e,(hl)
    db    0xdd
    ld h,e          ; ld  ixh,e
    ld  e,1
    exx
    ld  iy,__loop

; Main depack loop
_literal:ld  c,098h
    outi
    inc de
__loop:   add a,a
    call    z,_getbit
    jr  nc,_literal

; Compressed data
    exx
    ld  h,d
    ld  l,e
_getlen: add a,a
    call    z,_getbitexx
    jr  nc,lenok
lus:    add a,a
    call    z,_getbitexx
    adc hl,hl
    ret c
    add a,a
    call    z,_getbitexx
    jr  nc,lenok
    add a,a
    call    z,_getbitexx
    adc hl,hl
    jp  c,Depack_out
    add a,a
    call    z,_getbitexx
    jp  c,lus
lenok:  inc hl
    exx
    ld  c,(hl)
    inc hl
    ld  b,0
    bit 7,c
    jp  z,offsok
    jp  (ix)

_mode7:  add a,a
    call    z,_getbit
    rl  b
_mode6:  add a,a
    call    z,_getbit
    rl  b
_mode5:  add a,a
    call    z,_getbit
    rl  b
_mode4:  add a,a
    call    z,_getbit
    rl  b
_mode3:  add a,a
    call    z,_getbit
    rl  b
_mode2:  add a,a
    call    z,_getbit
    rl  b
    add a,a
    call    z,_getbit
    jr  nc,offsok
    or  a
    inc b
    res 7,c
offsok: inc bc
    push    hl
    exx
    push    hl
    exx
    ld  l,e
    ld  h,d
    sbc hl,bc
    pop bc
    push    af
_loop: 
;    ld  a,l
;    out (0x99),a
;    ld  a,h
;    out (0x99),a
    call setVread
    
    in  a,(0x98)
    ex  af,af'
;    ld  a,e
;    out (0x99),a
;    ld  a,d
;    or  0x40
;    out (0x99),a
    call setVwrite
    
    ex  af,af'
    out (0x98),a
    inc de
    cpi
    jp  pe,_loop
    pop af
    pop hl
    jp  (iy)
;
_getbit: ld  a,(hl)
    inc hl
    rla
    ret

_getbitexx:
    exx
    ld  a,(hl)
    inc hl
    exx
    rla
    ret

; De-packer exit
Depack_out:
    ei
    ret



setVwrite:

    push    de
    push    bc
    ld      bc,(_vbit16)
    call    _vdpsetvramwr
    pop     bc
    pop     de

    ret
setVread:    

    push    de
    push    bc
    ld      e,l
    ld      d,h
    ld      bc,(_vbit16)
    call    _vdpsetvramrd
    pop     bc
    pop     de

    ret

__modes:
    dw  offsok
    dw  _mode2
    dw  _mode3
    dw  _mode4
    dw  _mode5
    dw  _mode6
    dw  _mode7

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	include plot_LMMM_tile.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_clean_buffs:
	ld	bc,2*32*24*2-1
	ld	hl,_shadow0
	ld	(hl),230
	ld	de,_shadow0+1
	ldir
	ret
	
;Set VDP for writing at address CDE (17-bit) 

_vdpsetvramwr:
	ld a,c
;Set VDP for writing at address ADE (17-bit) ;
	rlc d
	rla
	rlc d
	rla
	srl d ; primo shift, il secondo dopo la out

	out (0x99),a ;set bits 14-16
	ld a,14+128
	out (0x99),a

	srl d ; secondo shift.            
	ld a,e ;set bits 0-7
	out (0x99),a
	ld a,d ;set bits 8-13
	or 0x40 ; + write access
	out (0x99),a
	ret
	
;Set VDP port #98 to start reading at address CDE (17-bit) ;

_vdpsetvramrd:
	ld a,c
;Set VDP port #98 to start reading at address ADE (17-bit) ;
	rlc d
	rla
	rlc d
	rla
	srl d ; primo shift, il secondo dopo la out

	out (0x99),a ;set bits 14-16
	ld a,14+128
	out (0x99),a

	srl d ; secondo shift.            
	ld a,e ;set bits 0-7
	out (0x99),a
	ld a,d ;set bits 8-13
	and 0x3F
	out (0x99),a
	ret

;Display page E in screen 5
_setpage:
	ld a,e
	add a,a ;x32
	add a,a
	add a,a
	add a,a
	add a,a
	add a,31
	di
	out (0x99),a
	ld a,2+128
	out (0x99),a
	ei            
	ret


; exttbl        equ     0xfcc1      ;main rom slot
chgmod        equ     0x5f        ;change graphic mode
RDSLT         equ     0x000c      ;read address HL in slot A
; CALSLT        equ     0x001c      ;call ix in slot (iy)
KILBUF        equ     0x0156      ;clear keyboard buffer

_scr:
	ld  a,e
	push    ix
	push    iy
	ld     iy,(exttbl-1)
	ld     ix,chgmod
	call     CALSLT
	pop     iy
	pop     ix
	ei
	ret

_msxtype:
	ld    a,(exttbl)
	ld    hl,0x002d
	call  RDSLT
	ld    l,a
	ret

_is_pal:
	ld    a,(exttbl)
	ld    hl,0x002b
	call  RDSLT
	and   128
	ld    l,a
	ret

_kilbuf:
	push    ix
	push    iy
	ld     iy,(exttbl-1)
	ld     ix,KILBUF
	call     CALSLT
	pop     iy
	pop     ix
	ei
	ret
     
_vpeek:     ; _address in de, _bit16 loaded in c
	call	_vdpsetvramrd
	in	a,(098h)
	ld	l,a
	ret	     

_waitvdp:
	di
	ld a,2
	out (0x99),a
	ld a, 0x8f
	out (0x99),a

1:  in a,(0x99)
	rrca
	jp c, 1b

	xor a
	out (0x99),a
	ld a, 0x8f
	out (0x99),a
	ei
	ret


	
_print_fps:
	ld	de,(_buffer+3)
	ld	d,0
	ld	hl,1024+512-'0'+16
	add	hl,de
	ex	de,hl
	
	ld	hl,2*(23*32+30)
	call 	plot_foreground

	ld	a,(_buffer+4)
	ld	e,a
	ld	d,0
	ld	hl,1024+512-'0'+16
	add	hl,de
	ex	de,hl
	
	ld	hl,2*(23*32+31)
	jp 	plot_foreground
	

;-------------------------------------
_compute_fps:
	ld	de,(_fps)
	ld	bc,_buffer

int2ascii:
	
; in de input 
; in bc output

	ex  de,hl
	ld  e,c
	ld  d,b

Num2asc:
	ld  bc,-10000
	call    Num1
	ld  bc,-1000
	call    Num1
	ld  bc,-100
	call    Num1
	ld  c,-10
	call    Num1
	ld  c,-1

Num1:   
	ld  a,'0'-1  ; '0' in the tileset

Num2:   
	inc a
	add hl,bc
	jr  c,Num2
	sbc hl,bc

	ld  (de),a
	inc de
	ret
	

;-------------------------------------
; Sample data
;-------------------------------------
SAMPLE_START:
        incbin "tiles_.bin"
SAMPLE_END:

_metatable:
		incbin "metatable.bin"
_backmap:
		incbin "backmap.bin"
_level:
		incbin "metamap_.bin"			
_frame:
		incbin "frame_.bin"			

;-------------------------------------
; Padding, align rom image to a power of two.
;-------------------------------------

        if ($ <= 0C000h)
			ds (0C000h - $)
        endif

FINISH:


;---------------------------------------------------------
; Variables
;---------------------------------------------------------


	MAP 0xC000
slotvar				#1
slotram				#1
_dx					#1

_ticxframe			#1

_buffer:			#16
_fps:				#2
_nframes:			#2
_vbit16:			#2
_levelmappos:		#2

_shadowbuff:		#2
_currentpage:		#1

_shadow0:			#WinWidth*WinWidth*2
_shadow1:			#WinWidth*WinWidth*2

_levelmap:			#mapWidth*mapHeight*2	
	ENDMAP
	
