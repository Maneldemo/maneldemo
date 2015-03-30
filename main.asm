;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

        output "maneldem.rom"

		defpage	0,0x4000, 0x2000		; page 0 main code + far call routines
		defpage	1,0x6000, 0x2000		; page 1 main code + far call routines
		defpage	2,0x8000, 0x2000		; swapped data 
		defpage	3,0xA000, 0x2000		; swapped data 
		defpage	4,0x8000, 0x2000		; swapped data 
		defpage	5,0xA000, 0x2000		; swapped data 
		defpage	6,0x8000, 0x2000		; swapped data 
		defpage	7,0xA000, 0x2000		; swapped data 
		defpage	8,0x8000, 0x2000		; swapped data 
		defpage	9,0xA000, 0x2000		; swapped data 
		defpage	10,0x8000, 0x2000		; swapped data 
		defpage	11,0xA000, 0x2000		; swapped data 

		defpage	14,0x8000, 0x2000		; swapped data 
		defpage	15,0xA000, 0x2000		; swapped data 

		defpage	12,0x4000, 0x2000		; swapped code
		defpage	13,0x6000, 0x2000		; swapped code 

		defpage	16,0x8000, 0x2000		; swapped code
		defpage	17,0xA000, 0x2000		; swapped code 
		
		;	konami scc
		
_kBank1:	equ 05000h ;- 57FFh (5000h used)
_kBank2: 	equ 07000h ;- 77FFh (7000h used)
_kBank3: 	equ 09000h ;- 97FFh (9000h used)
_kBank4: 	equ 0B000h ;- B7FFh (B000h used)
	
;	ascii 16
; _bank1	equ	0x6000 
; _bank2	equ	0x7000
		
	macro setpage_a
		ld	(_kBank3),a
		inc	a
		ld	(_kBank4),a
	endmacro
  
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
		; page 0
		include plot_frame.asm
		
;-------------------------------------
; Entry point
;-------------------------------------
		; page 0
START:

		ld e,6
		call	checkkbd
		ld	a,1
		rrc	l				; shift
		jp	nc,_ntsc
		xor	a
_ntsc:	ld	(SEL_NTSC),a	; if set NSTC, if reset PAL
	
		call	_scr5
		call	_cls

		call 	_set_r800
        call    powerup

		xor	a
		ld	(_kBank1),a
		inc	a
		ld	(_kBank2),a
	
		
		call _hw_sprite_init
	
	;--- initialise demo song
	
		ld	a, :_demo_song
		setpage_a
		ld	de,demo_song
		ld	hl,0x8000
		ld	bc,_enddemo_song-_demo_song+1
		ldir
		
		ld	hl,demo_song
		call	replay_init
		ld	hl,demo_song
		call	replay_loadsong

		call	_SetPalet
		ld		e,0
        call	_setpage
		
		; unpack level map (bit field for collisions)
		ld	a, :_level_bf
		setpage_a
		
		ld	bc,mapWidth*mapHeight/2
		ld	hl,	_level_bf
		ld	de,	_cur_level_bf
		ldir

		; unpack level map (meta_tiles)
		ld	a, :_level
		setpage_a
		
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

		; unpack mc frames
		ld		a, :_mc_sprites
		setpage_a
		xor	a
		ld		(_vbit16 ),a
		ld		de,	_mc_sprites
		ld		bc,212*128+256*128
		call	_vuitpakker 

		; unpack frame
		ld		a, :_frame
		setpage_a
		
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
		setpage_a
		
		ld		a,1
		ld		(_vbit16 ),a
		ld		de,	_tiles0
		ld		bc,0
		call	_vuitpakker 
		
		ld		e,3
        call	_setpage
		
		ld		a, :_tiles1
		setpage_a
		
		ld		a,1
		ld		(_vbit16 ),a
		ld		de,	_tiles1
		ld		bc,0x8000
		call	_vuitpakker 
		
		di
		ld	a,:int_sprites
		ld	(_kBank2),a
		call	int_sprites
		ld	a,1
		ld	(_kBank2),a
		ei
		
		; main init
		
		call	init_hero
		call	setrampage2
		ei

		LD	A,0xC3
		LD	HL,_isr
		DI
		LD	(0x0038),A
		LD	(0x0038+1),HL
		EI

		
		ld		hl,0
		ld		a,h
		ld		(_ymappos),a
		ld		(_xmappos),hl
		
		ld		(_nframes),hl
		ld		(_currentpage),a
		ld		(_mcdx),hl
		ld		(_mcframe),a

		; test to print some text
		
		call	setrompage2
		ld	a, :_print_string
		setpage_a
		call	_print_string
		call	setrampage2
		EI
		
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

		di
		ld		a,:save_background
		ld		(_kBank2),a
		call 	save_background
		call 	plot_sprite
		ld		a,1
		ld		(_kBank2),a
		ei
		call	plot_frame

		call	plot_hero
			
		di
		ld		a,:restore_background
		ld		(_kBank2),a
		call 	restore_background
		call	move_sprites
		ld		a,1
		ld		(_kBank2),a
		ei

		call	manage_hero		
		
		call	_compute_fps
		call	_print_fps
		call	_print_probe
		
		ld		hl,(_nframes)
		inc		hl
		ld		(_nframes),hl
		jp      main_loop

        ret


;-------------------------------------
JIFFY: equ 0xFC9E 
;-------------------------------------
_isr:	
		push   hl     
		push   de     
		push   bc     
		push   af     
		exx           
		ex     af,af' 
		push   hl     
		push   de     
		push   bc     
		push   af     
		push   iy     
		push   ix     
		
		in     a,(0x99)
		
		call	manage_music
		call	manage_counters
		
		pop    ix     
		pop    iy     
		pop    af     		
		pop    bc     		
		pop    de     		
		pop    hl     		
		ex     af,af' 		
		exx           		
		pop    af     		
		pop    bc     		
		pop    de     		
		pop    hl     		
		ei            		
		ret
		
		
		
manage_music:

		call	setrompage2
		
		; ld	a,15
		; ld	(_kBank4),a
		call	replay_route		; first output data

		call	replay_play			; calculate next output		
		call	setrampage2
		ret
		
manage_counters:
		ld		hl,(JIFFY)
		inc		hl
		ld		(JIFFY),hl
		
		ld		a,(SEL_NTSC)
		and 	a
		jr		nz,1f
		
		ld		bc,-50			; PAL 
		jr		2f
1:
		ld		bc,-60			; NTSC
		
2:		add		hl,bc

		ld		a,4
		ld		(_ticxframe),a
		
		ret	nc
		
		ld		hl,0
		ld		(JIFFY),hl
		ld		hl,(_nframes)
		ld		(_fps),hl
		ld		hl,0
		ld		(_nframes),hl
		ret
;-------------------------------------
;   Power-up routine for 32K ROM
;   set pages and sub slot
;-------------------------------------
powerup:
        call    search_slot
        call    search_slotram
		call	setrompage2
		call	setrampage0
		ld	hl,0x0038
		ld	(hl),0xC9
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

_scr5:
		ld  a,5
		call	chgmod
		
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
		or		32+2
		ld		(0xFFE7),a
		out		(0x99),a
		ld		a,128+8
		out		(0x99),a
		
		// Set 192/212 lines @50Hz (PAL assumed!)
		ld	a,(SEL_NTSC)
		and 	a
		jr		nz,1f
		
		ld		a,(0xFFE8)		; PAL
		and		01111111B
		or		2+128
		ld		(0xFFE8),a
		jr	2f
1:		ld		a,(0xFFE8)		; NTSC
		and		01111101B
		ld		(0xFFE8),a
2:	
		out		(0x99),a
		ld		a,128+9
		out		(0x99),a
		ei

		ret
_cls:
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

_print_probe
	ld	a,(_mcprobeb)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)
	add	hl,de
	ex	de,hl
	ld	hl,2*(23*32+0)
	call 	plot_foreground
	
	ld	de,(_ticxframe)
	ld	d,0
	ld	bc,_buffer
	call	int2ascii
	
	ld	a,(_buffer+2)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)-'0'
	add	hl,de
	ex	de,hl
	ld	hl,2*(22*32)
	call 	plot_foreground

	ld	a,(_buffer+3)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)-'0'
	add	hl,de
	ex	de,hl
	ld	hl,2*(22*32+1)
	call 	plot_foreground

	ld	a,(_buffer+4)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)-'0'
	add	hl,de
	ex	de,hl
	ld	hl,2*(22*32+2)
	jp 	plot_foreground
	
	
_print_fps:
	ld	a,(_buffer+3)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)-'0'
	add	hl,de
	ex	de,hl
	
	ld	hl,2*(23*32+30)
	call 	plot_foreground

	ld	a,(_buffer+4)
	ld	e,a
	ld	d,0
	ld	hl,32*(64-2)-'0'
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
	
	include enemies.asm
	
	page 16,17	
	include text.asm	
	
	page 0,1	
_metatable:
	incbin 	metatable.bin
	
	page 1
_backmap:
	incbin	backmap.bin

	include hwsprites.asm
	
	include mainhero_LMMM.asm
	include probe_level.asm


	page 2,3
_frame:
	incbin "_frame.bin"
_mc_sprites:	
	incbin "_sprites.bin"			
	
	page 4
_tiles0:
	incbin "_tiles0.bin";,,0x2000
	page 5
	; incbin "_tiles0.bin",0x2000
	
	page 6
_tiles1:
	incbin "_tiles1.bin";,,0x2000
	page 7
	; incbin "_tiles1.bin",0x2000

	page 8,9
_level:
	incbin "_metamap.bin"
_level_bf:	
	incbin "BitField.bin"	
	
	page 10,11
sprtdata
	include 	SPROL.ASM
	


	page 14,15
	org	0x0040
_demo_song:
	include	".\demosong.asm"
	include	"..\code\ttreplayDAT.asm"
_enddemo_song:
	page 1
	include	"..\code\ttreplay.asm"
	
FINISH:


;---------------------------------------------------------
; Variables
;---------------------------------------------------------

	
	MAP 0x0040
demo_song:			#(_enddemo_song-_demo_song+1)
	

_shadow0:			#32*24*2
_shadow1:			#32*24*2

enemylist:			#enemy*nenemies

_cur_level_bf:		#mapWidth*mapHeight/2

	ENDMAP
	
	
	MAP 0xC000
	include	"..\code\ttreplayRAM.asm"

slotvar				#1
slotram				#1
SEL_NTSC			#1

joystick			#1

_mcx				#2	; relative with in the frame on the screen
_mcy				#2

_mclx				#2	; absolute with the level in ram
_mcly				#2

_mcframe			#1
_mcstate			#1

_mcdx				#2
_mcdy				#2

_mcprobe:			#1
_mcprobeb:			#1

_ticxframe			#1

_buffer:			#16
_fps:				#2
_nframes:			#2
_vbit16:			#2

_ymappos:			#1
_xmappos:			#2

_shadowbuff:		#2
_currentpage:		#1



	ENDMAP
