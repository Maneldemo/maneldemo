;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

        output "maneldem.rom"

		defpage	0,0x4000, 0x4000		; page 0 main code + far call routines
		defpage	1,0x8000, 0x4000		; swapped data 
		defpage	2..15
	
_bank1	equ	0x6000
_bank2	equ	0x7000
		
		page 0
		
        org 4000h
        dw  4241h,START,0,0,0,0,0,0


		include "header.asm"
	
		include "rominit64.asm"

rdslt	equ	0x000c
CALSLT	equ	0x001c
chgcpu	equ	0x0180	; change cpu mode
exttbl	equ	0xfcc1	; main rom slot

; _levelmap:			#mapWidth*mapHeight*2	

_levelmap equ	0x8000	; ram in page 1

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
		
	
checkkbd:
		in	a,(0aah)
		and 011110000B			; upper 4 bits contain info to preserve
		or	e
		out (0aah),a
		in	a,(0a9h)
		ld	l,a
		ret
		
;-------------------------------------		
		
		include plot_frame.asm
		
;-------------------------------------
; Entry point
;-------------------------------------
START:
        ld		e,5
		call	_scr

		call 	_set_r800
        call    powerup

		ld e,6
		call	checkkbd
		ld	a,1
		rrc	l				; shift
		jp	nc,_ntsc
		xor	a
_ntsc:	ld	(SEL_NTSC),a	; if set NSTC, if reset PAL
		
		; ld	e,7
		; call	checkkbd
		; and	0x04				; ESC
		; jp 	z,_mballon_start
		
		ld		de,0
		ld		c,e
		di
		call	_vdpsetvramwr
		ld		bc,0x0000
1:		xor		a
		out		(0x98),a
		dec		bc
		ld		a,b
		or		c
		jr	nz,1b
		
		di
		// sprites 16x16
		ld	a,(0xF3E0)
		or	2
		ld	(0xF3E0),a
		out		(0x99),a
		ld		a,128+1
		out		(0x99),a

		// border color
		ld		a,0x55
		out		(0x99),a
		ld		a,128+7
		out		(0x99),a
		
		// enable sprites + TP
		ld		a,(0xFFE7)
		or		32
		ld		(0xFFE7),a
		out		(0x99),a
		ld		a,128+8
		out		(0x99),a
		
		// Set 192 lines @50Hz (PAL assumed!)
		ld	a,(SEL_NTSC)
		and 	a
		jr		nz,1f
		
		ld		a,(0xFFE8)		; PAL
		and		127
		or		2
		ld		(0xFFE8),a
		jr	2f
1:		ld		a,(0xFFE8)		; NTSC
		and		127
		or		2
		xor		2
		ld		(0xFFE8),a
2:	
		out		(0x99),a
		ld		a,128+9
		out		(0x99),a
		ei

		call _hw_sprite_init
		
		LD	A,0xC3
		LD	HL,_isr
		DI
		LD	(0xFD9F),A
		LD	(0xFDA0),HL
		EI

		call	_clean_buffs

		call	_SetPalet
		ld		e,0
        call	_setpage
		
		; unpack level map (meta_tiles)
		ld	a, :_level
		ld	(_bank2),a
		
		xor	a
		ld		(_vbit16 ),a
		ld		de,	_level
		ld		bc,0
		call	_vuitpakker 
		
		call	setrampage2
		
		ld		de,0
		ld		c,e
		call	_vdpsetvramrd
		ld		hl,_levelmap
		ld		de,mapWidth*mapHeight*2
		ld		c,0x98
1:		ini
		dec	de
		ld	a,d
		or	e
		jr	nz,1b

		call	setrompage2
				
		; unpack frame
		ld		a, :_frame
		ld		(_bank2),a
		
		xor	a
		ld		(_vbit16 ),a
		ld		de,	_frame
		ld		bc,0
		call	_vuitpakker 

		ld		e,1
        call	_setpage

		ld		de,	_frame
		ld		bc,0x8000
		call	_vuitpakker 
		
		ld		e,2
        call	_setpage

		; unpack tileset
		ld		a, :_tiles0
		ld		(_bank2),a
		
		ld		a,1
		ld		(_vbit16 ),a
		ld		de,	_tiles0
		ld		bc,0
		call	_vuitpakker 
		
		ld		e,3
        call	_setpage
		
		ld		a, :_tiles1
		ld		(_bank2),a
		
		ld		a,1
		ld		(_vbit16 ),a
		ld		de,	_tiles1
		ld		bc,0x8000
		call	_vuitpakker 
		
		; call	int_sprites

		; main init
		
		call	setrampage2
		ei
		
		ld		hl,0
		ld		a,h
		ld		(_levelmappos),hl
		ld		(_levelmappos+2),a
		ld		(_ymappos),a
		ld		(_xmappos),hl
		
		ld		(_nframes),hl
		ld		(_currentpage),a
		ld		(_mcdx),a
		ld		(_mcframe),a
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

		; ld	ix,enemylist
		; call save_background

		; ld	ix,enemylist
		; call plot_sprite

		call	plot_frame
		
		call	enemies_LMMM

		; ld	ix,enemylist
		; call restore_background

		; ld	ix,enemylist
		; call	move_sprites
		
		call	_compute_fps
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
		ld		a,-1
		ld		(_mcframe),a
		jp      main_loop

        ret

up:		
		ld		a,(_ymappos)
		ld		b,a
		ld		a,(_ticxframe)
		neg
		add		a,b
		ld		(_ymappos),a
		ld	a,2
		ld	(_mcstate),a
		jp      main_loop

dwn:	
		ld		a,(_ymappos)
		ld		b,a
		ld		a,(_ticxframe)
		add		a,b
		ld		(_ymappos),a
		ld	a,3
		ld	(_mcstate),a
		jp      main_loop
		
right:	
		ld		a,4
		ld		(_mcdx),a

		ld	a,1
		ld	(_mcstate),a

		ld		a,(_ticxframe)
		ld		c,a
		ld		b,0
		ld		hl,(_xmappos)
		add		hl,bc
		ld		(_xmappos),hl
		jp      main_loop

left:	
		ld		a,4
		neg
		ld		(_mcdx),a

		xor	a
		ld	(_mcstate),a
		
		ld		a,(_ticxframe)
		neg
		ld		c,a
		ld		b,-1
		ld		hl,(_xmappos)
		add		hl,bc
		ld		(_xmappos),hl
		jp      main_loop


;-------------------------------------
JIFFY: equ 0xFC9E 
;-------------------------------------
_isr:	push	hl
		push	bc
		ld		hl,(JIFFY)

		ld	a,(SEL_NTSC)
		and 	a
		jr		nz,1f
		
		ld		bc,-50			; PAL 
		jr	2f
1:
		ld		bc,-60			; NTSC
		
2:		add		hl,bc
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
		pop		hl
		ret
;-------------------------------------
;   Power-up routine for 32K ROM
;   set pages and sub slot
;-------------------------------------
powerup:
        call    search_slot
        call    search_slotram
		jp		setrompage2
        

;-------------------------------------


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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	include vuitpakker.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	include plot_tile.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_clean_buffs:
	ld	bc,2*WinWidth*WinWidth*2-1
	ld	hl,_shadow0
	ld	(hl),-1
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

chgmod        equ     0x005f      ;change graphic mode
RDSLT         equ     0x000c      ;read address HL in slot A
KILBUF        equ     0x0156      ;clear keyboard buffer

_scr:
	ld  a,e
	call	chgmod
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
	ld	a,(_buffer+3)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-3)-'0'+16
	add	hl,de
	ex	de,hl
	
	ld	hl,2*(23*32+30)
	call 	plot_foreground

	ld	a,(_buffer+4)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-3)-'0'+16
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

_metatable:
	incbin "metatable.bin"
_backmap:
	incbin "backmap.bin"

; start
; _mballon_start
	; ld	de,0xc000
	; ld	hl,_relocate
	; ld	bc,_endrelocate-_relocate
	; ldir
	; jp	0xc000
; _relocate:
	; ld	a,:mballon
	; ld	(_bank1),a
	; inc	a
	; ld	(_bank2),a
	; ld	hl,(0x4002)
	; jp	(hl)
; _endrelocate:

	include enemies.asm

	include hwsprites.asm
	
	include enemies_LMMM.asm

	page 1
_frame:
	incbin "frame_.bin"			
	
	page 2
_tiles0:
	incbin "tiles0_.bin"
	
	page 3
_tiles1:
	incbin "tiles1_.bin"

	page 4
_level:
	incbin "metamap_.bin"			
	
	page 5
sprtdata
	include 	SPROL.ASM
FINISH:

;---------------------------------------------------------
; Variables
;---------------------------------------------------------


	
	MAP 0xC000
slotvar				#1
slotram				#1
SEL_NTSC			#1
_mcdx				#1
_mcdy				#1
_mcx				#2
_mcy				#2
_mcframe			#1
_mcstate			#1


_ticxframe			#1

_buffer:			#16
_fps:				#2
_nframes:			#2
_vbit16:			#2
_levelmappos:		#3

_ymappos:			#1
_xmappos:			#2

_shadowbuff:		#2
_currentpage:		#1

_shadow0:			#32*24*2
_shadow1:			#32*24*2

enemylist:			#enemy*nenemies
	ENDMAP