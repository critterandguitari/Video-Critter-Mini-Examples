	.file	"load.c"
	.arch atmega8
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"/home/owen/critterandguitari/code/finals/VideoCritterMini/VideoCritterMiniExample/",100,0,0,.Ltext0
	.stabs	"load.c",100,0,0,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=@s32;r(0,3);0020000000000;0017777777777;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0000000000000;0000000177777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=@s32;r(0,5);0000000000000;0037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0000000000000;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0000000000000;0000000177777;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"complex int:t(0,15)=s4real:(0,1),0,16;imag:(0,1),16,16;;",128,0,0,0
	.stabs	"complex float:t(0,16)=R3;8;0;",128,0,0,0
	.stabs	"complex double:t(0,17)=R3;8;0;",128,0,0,0
	.stabs	"complex long double:t(0,18)=R3;8;0;",128,0,0,0
	.stabs	"void:t(0,19)=(0,19)",128,0,0,0
	.stabs	"__builtin_va_list:t(0,20)=*(0,19)",128,0,0,0
	.stabs	"_Bool:t(0,21)=@s8;-16;",128,0,0,0
	.stabs	"/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/io.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/3.4.3/../../../../avr/include/avr/sfr_defs.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/3.4.3/../../../../avr/include/inttypes.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/3.4.3/../../../../avr/include/stdint.h",130,0,0,0
	.stabs	"int8_t:t(4,1)=(0,10)",128,0,65,0
	.stabs	"uint8_t:t(4,2)=(0,11)",128,0,70,0
	.stabs	"int16_t:t(4,3)=(0,1)",128,0,104,0
	.stabs	"uint16_t:t(4,4)=(0,4)",128,0,109,0
	.stabs	"int32_t:t(4,5)=(0,3)",128,0,120,0
	.stabs	"uint32_t:t(4,6)=(0,5)",128,0,125,0
	.stabs	"int64_t:t(4,7)=(0,6)",128,0,136,0
	.stabs	"uint64_t:t(4,8)=(0,7)",128,0,141,0
	.stabs	"intptr_t:t(4,9)=(4,3)",128,0,155,0
	.stabs	"uintptr_t:t(4,10)=(4,4)",128,0,160,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
.global	newSync
.global	newSync
	.section .bss
	.type	newSync, @object
	.size	newSync, 1
newSync:
	.skip 1,0
.global	lineCount
.global	lineCount
	.type	lineCount, @object
	.size	lineCount, 2
lineCount:
	.skip 2,0
.global	line
.global	line
	.type	line, @object
	.size	line, 1
line:
	.skip 1,0
.global	syncOn
	.data
	.type	syncOn, @object
	.size	syncOn, 1
syncOn:
	.byte	7
.global	syncOff
.global	syncOff
	.section .bss
	.type	syncOff, @object
	.size	syncOff, 1
syncOff:
	.skip 1,0
	.text
	.stabs	"__vector_9:F(0,19)",36,0,65,__vector_9
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
	.stabn 68,0,65,.LM1-__vector_9
.LM1:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r24
	push r25
/* prologue end (size=8) */
	.stabn 68,0,66,.LM2-__vector_9
.LM2:
	ldi r24,lo8(-111)
	out 82-0x20,r24
	.stabn 68,0,67,.LM3-__vector_9
.LM3:
	lds r24,lineCount
	lds r25,(lineCount)+1
	adiw r24,1
	sts (lineCount)+1,r25
	sts lineCount,r24
	.stabn 68,0,70,.LM4-__vector_9
.LM4:
	lds r24,lineCount
	lds r25,(lineCount)+1
	cpi r24,248
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L2
	.stabn 68,0,70,.LM5-__vector_9
.LM5:
	lds r24,lineCount
	lds r25,(lineCount)+1
	cpi r24,251
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L2
	.stabn 68,0,71,.LM6-__vector_9
.LM6:
	out 53-0x20,__zero_reg__
	.stabn 68,0,72,.LM7-__vector_9
.LM7:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,73,.LM8-__vector_9
.LM8:
/* #NOAPP */
	ldi r24,lo8(7)
	out 53-0x20,r24
	.stabn 68,0,74,.LM9-__vector_9
.LM9:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,75,.LM10-__vector_9
.LM10:
/* #NOAPP */
	out 53-0x20,r24
	.stabn 68,0,76,.LM11-__vector_9
.LM11:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,77,.LM12-__vector_9
.LM12:
/* #NOAPP */
	out 53-0x20,r24
	.stabn 68,0,78,.LM13-__vector_9
.LM13:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
/* #NOAPP */
	rjmp .L3
.L2:
	.stabn 68,0,83,.LM14-__vector_9
.LM14:
	ldi r24,lo8(7)
	out 53-0x20,r24
	.stabn 68,0,84,.LM15-__vector_9
.LM15:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,85,.LM16-__vector_9
.LM16:
/* #NOAPP */
	out 53-0x20,__zero_reg__
	.stabn 68,0,86,.LM17-__vector_9
.LM17:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,87,.LM18-__vector_9
.LM18:
/* #NOAPP */
	ldi r24,lo8(6)
	out 53-0x20,r24
	.stabn 68,0,88,.LM19-__vector_9
.LM19:
/* #APP */
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.stabn 68,0,89,.LM20-__vector_9
.LM20:
/* #NOAPP */
	out 53-0x20,__zero_reg__
.L3:
	.stabn 68,0,92,.LM21-__vector_9
.LM21:
	lds r24,lineCount
	lds r25,(lineCount)+1
	subi r24,lo8(263)
	sbci r25,hi8(263)
	brne .L4
	.stabn 68,0,93,.LM22-__vector_9
.LM22:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts (lineCount)+1,r25
	sts lineCount,r24
.L4:
	.stabn 68,0,97,.LM23-__vector_9
.LM23:
	lds r24,lineCount
	lds r25,(lineCount)+1
	sts line,r24
	.stabn 68,0,98,.LM24-__vector_9
.LM24:
	lds r24,line
	cpi r24,lo8(30)
	brlo .L5
	.stabn 68,0,99,.LM25-__vector_9
.LM25:
	lds r24,line
	subi r24,lo8(-(-30))
	sts line,r24
	.stabn 68,0,100,.LM26-__vector_9
.LM26:
	lds r24,line
	lsr r24
	lsr r24
	lsr r24
	sts line,r24
.L5:
	.stabn 68,0,103,.LM27-__vector_9
.LM27:
	ldi r24,lo8(1)
	sts newSync,r24
/* epilogue: frame size=0 */
	pop r25
	pop r24
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=8) */
/* function __vector_9 size 574 (558) */
	.size	__vector_9, .-__vector_9
.Lscope0:
	.stabs	"",36,0,0,.Lscope0-__vector_9
	.stabs	"delay:F(0,19)",36,0,107,delay
	.stabs	"u_sec:P(4,2)",64,0,107,24
.global	delay
	.type	delay, @function
delay:
	.stabn 68,0,107,.LM28-delay
.LM28:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,109,.LM29-delay
.LM29:
	tst r24
	breq .L11
.L9:
	.stabn 68,0,109,.LM30-delay
.LM30:
	subi r24,lo8(-(-1))
	brne .L9
.L11:
	ret
/* epilogue: frame size=0 */
/* epilogue: noreturn */
/* epilogue end (size=0) */
/* function delay size 6 (6) */
	.size	delay, .-delay
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-delay
	.stabs	"delay_ms:F(0,19)",36,0,113,delay_ms
	.stabs	"dtime:P(4,4)",64,0,113,24
.global	delay_ms
	.type	delay_ms, @function
delay_ms:
	.stabn 68,0,113,.LM31-delay_ms
.LM31:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,115,.LM32-delay_ms
.LM32:
	clr r26
	clr r27
	.stabn 68,0,116,.LM33-delay_ms
.LM33:
	mov r0,r23
	ldi r23,10
1:	lsl r24
	rol r25
	rol r26
	rol r27
	dec r23
	brne 1b
	mov r23,r0
	.stabn 68,0,119,.LM34-delay_ms
.LM34:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L17
.L15:
	.stabn 68,0,118,.LM35-delay_ms
.LM35:
/* #APP */
	NOP
	.stabn 68,0,119,.LM36-delay_ms
.LM36:
/* #NOAPP */
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	brne .L15
.L17:
	ret
/* epilogue: frame size=0 */
/* epilogue: noreturn */
/* epilogue end (size=0) */
/* function delay_ms size 25 (25) */
	.size	delay_ms, .-delay_ms
	.stabs	"time:r(4,6)",64,0,114,24
	.stabn	192,0,0,delay_ms-delay_ms
	.stabn	224,0,0,.Lscope2-delay_ms
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-delay_ms
	.stabs	"set_tone:F(0,19)",36,0,125,set_tone
	.stabs	"f:P(4,4)",64,0,125,18
.global	set_tone
	.type	set_tone, @function
set_tone:
	.stabn 68,0,125,.LM37-set_tone
.LM37:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	movw r18,r24
	.stabn 68,0,126,.LM38-set_tone
.LM38:
	mov r24,r25
	clr r25
	out 75-0x20,r24
	.stabn 68,0,127,.LM39-set_tone
.LM39:
	out 74-0x20,r18
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function set_tone size 6 (5) */
	.size	set_tone, .-set_tone
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-set_tone
	.stabs	"main:F(0,1)",36,0,131,main
.global	main
	.type	main, @function
main:
	.stabn 68,0,131,.LM40-main
.LM40:
/* prologue: frame size=960 */
	ldi r28,lo8(__stack - 960)
	ldi r29,hi8(__stack - 960)
	out __SP_H__,r29
	out __SP_L__,r28
/* prologue end (size=4) */
	.stabn 68,0,133,.LM41-main
.LM41:
	clr r2
	.stabn 68,0,134,.LM42-main
.LM42:
	mov r3,r2
	.stabn 68,0,145,.LM43-main
.LM43:
	mov r20,r2
	.stabn 68,0,150,.LM44-main
.LM44:
	clr r4
	clr r5
	.stabn 68,0,153,.LM45-main
.LM45:
	sbi 49-0x20,5
	.stabn 68,0,156,.LM46-main
.LM46:
	ldi r25,lo8(1)
	out 89-0x20,r25
	.stabn 68,0,157,.LM47-main
.LM47:
	ldi r24,lo8(-125)
	out 82-0x20,r24
	.stabn 68,0,158,.LM48-main
.LM48:
	ldi r24,lo8(2)
	out 83-0x20,r24
	.stabn 68,0,162,.LM49-main
.LM49:
	ldi r24,lo8(32)
	out 75-0x20,r24
	.stabn 68,0,163,.LM50-main
.LM50:
	out 74-0x20,r2
	.stabn 68,0,164,.LM51-main
.LM51:
	in r24,79-0x20
	ori r24,lo8(64)
	out 79-0x20,r24
	.stabn 68,0,165,.LM52-main
.LM52:
	sbi 55-0x20,1
	.stabn 68,0,166,.LM53-main
.LM53:
	in r24,78-0x20
	ori r24,lo8(9)
	out 78-0x20,r24
	.stabn 68,0,169,.LM54-main
.LM54:
	out 67-0x20,r25
	.stabn 68,0,170,.LM55-main
.LM55:
	sbi 55-0x20,3
	.stabn 68,0,171,.LM56-main
.LM56:
	ldi r24,lo8(25)
	out 69-0x20,r24
	.stabn 68,0,174,.LM57-main
.LM57:
	in r24,52-0x20
	ori r24,lo8(7)
	out 52-0x20,r24
	ldi r26,lo8(24)
	ldi r27,hi8(24)
	movw r22,r28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
.L27:
	.stabn 68,0,178,.LM58-main
.LM58:
	clr r6
	mov r18,r20
	clr r19
.L26:
	.stabn 68,0,179,.LM59-main
.LM59:
	mov r24,r6
	clr r25
	mul r24,r26
	movw r30,r0
	mul r24,r27
	add r31,r0
	mul r25,r26
	add r31,r0
	clr r1
	movw r24,r30
	add r24,r22
	adc r25,r23
	movw r30,r24
	add r30,r18
	adc r31,r19
	st Z,__zero_reg__
	.stabn 68,0,178,.LM60-main
.LM60:
	inc r6
	ldi r31,lo8(39)
	cp r31,r6
	brsh .L26
	.stabn 68,0,177,.LM61-main
.LM61:
	subi r20,lo8(-(1))
	cpi r20,lo8(24)
	brlo .L27
	.stabn 68,0,184,.LM62-main
.LM62:
/* #APP */
	sei
/* #NOAPP */
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.L28:
	.stabn 68,0,191,.LM63-main
.LM63:
	lds r24,newSync
	tst r24
	brne .+2
	rjmp .L30
	lds r24,lineCount
	lds r25,(lineCount)+1
	cpi r24,222
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L30
	.stabn 68,0,192,.LM64-main
.LM64:
	inc r3
	.stabn 68,0,193,.LM65-main
.LM65:
	ldi r18,lo8(3)
	and r3,r18
	.stabn 68,0,194,.LM66-main
.LM66:
	breq .+2
	rjmp .L31
	.stabn 68,0,196,.LM67-main
.LM67:
	in r25,50-0x20
	ldi r24,lo8(32)
	eor r24,r25
	out 50-0x20,r24
	.stabn 68,0,198,.LM68-main
.LM68:
	inc r2
	.stabn 68,0,199,.LM69-main
.LM69:
	mov r24,r2
	clr r25
	mul r4,r24
	movw r30,r0
	mul r4,r25
	add r31,r0
	mul r5,r24
	add r31,r0
	clr r1
	movw r4,r30
	.stabn 68,0,200,.LM70-main
.LM70:
	sec
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	.stabn 68,0,201,.LM71-main
.LM71:
	movw r24,r4
	rcall set_tone
	.stabn 68,0,203,.LM72-main
.LM72:
	inc r6
	.stabn 68,0,205,.LM73-main
.LM73:
	mov r20,r3
	mov r24,r5
	clr r25
	movw r10,r24
	ldi r22,lo8(24)
	ldi r23,hi8(24)
	rcall __udivmodhi4
	or r24,r25
	breq .L31
	mov __tmp_reg__,r31
	ldi r31,lo8(40)
	mov r7,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(24)
	mov r12,r31
	clr r13
	mov r31,__tmp_reg__
	clr r14
	clr r15
	inc r14
	add r14,r28
	adc r15,r29
	mov __tmp_reg__,r31
	ldi r31,lo8(5)
	mov r8,r31
	clr r9
	mov r31,__tmp_reg__
.L35:
	.stabn 68,0,206,.LM74-main
.LM74:
	mov r24,r6
	mov r22,r7
	rcall __udivmodqi4
	mov r24,r25
	clr r25
	mul r24,r12
	movw r18,r0
	mul r24,r13
	add r19,r0
	mul r25,r12
	add r19,r0
	clr r1
	movw r24,r18
	add r24,r14
	adc r25,r15
	movw r30,r24
	add r30,r20
	adc r31,__zero_reg__
	movw r24,r4
	movw r22,r8
	rcall __udivmodhi4
	subi r24,lo8(-(1))
	st Z,r24
	.stabn 68,0,205,.LM75-main
.LM75:
	subi r20,lo8(-(1))
	mov r18,r20
	clr r19
	movw r24,r10
	movw r22,r12
	rcall __udivmodhi4
	cp r18,r24
	cpc r19,r25
	brlo .L35
.L31:
	.stabn 68,0,208,.LM76-main
.LM76:
	sts newSync,__zero_reg__
.L30:
	.stabn 68,0,212,.LM77-main
.LM77:
	lds r24,newSync
	tst r24
	brne .+2
	rjmp .L36
	lds r24,lineCount
	lds r25,(lineCount)+1
	sbiw r24,31
	brsh .+2
	rjmp .L36
	lds r24,lineCount
	lds r25,(lineCount)+1
	cpi r24,220
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L36
	.stabn 68,0,214,.LM78-main
.LM78:
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,215,.LM79-main
.LM79:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	ldd r24,Z+24
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,216,.LM80-main
.LM80:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	ldd r24,Z+48
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,217,.LM81-main
.LM81:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(72))
	sbci r31,hi8(-(72))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,219,.LM82-main
.LM82:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(96))
	sbci r31,hi8(-(96))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,220,.LM83-main
.LM83:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(120))
	sbci r31,hi8(-(120))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,221,.LM84-main
.LM84:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(144))
	sbci r31,hi8(-(144))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,222,.LM85-main
.LM85:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(168))
	sbci r31,hi8(-(168))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,224,.LM86-main
.LM86:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(192))
	sbci r31,hi8(-(192))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,225,.LM87-main
.LM87:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(216))
	sbci r31,hi8(-(216))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,226,.LM88-main
.LM88:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(240))
	sbci r31,hi8(-(240))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,227,.LM89-main
.LM89:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(264))
	sbci r31,hi8(-(264))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,229,.LM90-main
.LM90:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(288))
	sbci r31,hi8(-(288))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,230,.LM91-main
.LM91:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(312))
	sbci r31,hi8(-(312))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,231,.LM92-main
.LM92:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(336))
	sbci r31,hi8(-(336))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,232,.LM93-main
.LM93:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(360))
	sbci r31,hi8(-(360))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,234,.LM94-main
.LM94:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(384))
	sbci r31,hi8(-(384))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,235,.LM95-main
.LM95:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(408))
	sbci r31,hi8(-(408))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,236,.LM96-main
.LM96:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(432))
	sbci r31,hi8(-(432))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,237,.LM97-main
.LM97:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(456))
	sbci r31,hi8(-(456))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,239,.LM98-main
.LM98:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(480))
	sbci r31,hi8(-(480))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,240,.LM99-main
.LM99:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(504))
	sbci r31,hi8(-(504))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,241,.LM100-main
.LM100:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(528))
	sbci r31,hi8(-(528))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,242,.LM101-main
.LM101:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(552))
	sbci r31,hi8(-(552))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,244,.LM102-main
.LM102:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(576))
	sbci r31,hi8(-(576))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,245,.LM103-main
.LM103:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(600))
	sbci r31,hi8(-(600))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,246,.LM104-main
.LM104:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(624))
	sbci r31,hi8(-(624))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,247,.LM105-main
.LM105:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(648))
	sbci r31,hi8(-(648))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,249,.LM106-main
.LM106:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(672))
	sbci r31,hi8(-(672))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,250,.LM107-main
.LM107:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(696))
	sbci r31,hi8(-(696))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,251,.LM108-main
.LM108:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(720))
	sbci r31,hi8(-(720))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,252,.LM109-main
.LM109:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(744))
	sbci r31,hi8(-(744))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,254,.LM110-main
.LM110:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(768))
	sbci r31,hi8(-(768))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,255,.LM111-main
.LM111:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(792))
	sbci r31,hi8(-(792))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,256,.LM112-main
.LM112:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(816))
	sbci r31,hi8(-(816))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,257,.LM113-main
.LM113:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(840))
	sbci r31,hi8(-(840))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,259,.LM114-main
.LM114:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(864))
	sbci r31,hi8(-(864))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,260,.LM115-main
.LM115:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(888))
	sbci r31,hi8(-(888))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,261,.LM116-main
.LM116:
/* #NOAPP */
	lds r24,line
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(912))
	sbci r31,hi8(-(912))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,262,.LM117-main
.LM117:
/* #NOAPP */
	lds r24,line
	movw r30,r16
	add r30,r24
	adc r31,__zero_reg__
	subi r30,lo8(-(936))
	sbci r31,hi8(-(936))
	ld r24,Z
	out 53-0x20,r24
/* #APP */
	nop
	nop
	nop
	nop
	.stabn 68,0,263,.LM118-main
.LM118:
/* #NOAPP */
	out 53-0x20,__zero_reg__
	.stabn 68,0,264,.LM119-main
.LM119:
	sts newSync,__zero_reg__
.L36:
	.stabn 68,0,266,.LM120-main
.LM120:
	in r24,85-0x20
	ori r24,lo8(-128)
	out 85-0x20,r24
/* #APP */
	sleep
	
/* #NOAPP */
	in r24,85-0x20
	andi r24,lo8(127)
	out 85-0x20,r24
	.stabn 68,0,187,.LM121-main
.LM121:
	rjmp .L28
/* epilogue: frame size=960 */
/* epilogue: noreturn */
/* epilogue end (size=0) */
/* function main size 898 (894) */
	.size	main, .-main
	.stabs	"frameCount:r(4,2)",64,0,133,3
	.stabs	"count2:r(4,2)",64,0,134,2
	.stabs	"image:(0,22)=ar(0,23)=r(0,23);0000000000000;0000000177777;;0;39;(0,24)=ar(0,23);0;23;(4,2)",128,0,142,1
	.stabs	"i:r(4,2)",64,0,145,20
	.stabs	"j:r(4,2)",64,0,146,6
	.stabs	"freq:r(4,4)",64,0,150,4
	.stabn	192,0,0,main-main
	.stabn	224,0,0,.Lscope4-main
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-main
	.comm temp,1,1
	.stabs	"newSync:G(0,25)=B(4,2)",32,0,41,0
	.stabs	"lineCount:G(0,26)=B(4,4)",32,0,42,0
	.stabs	"line:G(0,25)",32,0,43,0
	.stabs	"syncOn:G(0,25)",32,0,44,0
	.stabs	"syncOff:G(0,25)",32,0,45,0
	.stabs	"temp:G(0,25)",32,0,46,0
	.text
	.stabs "",100,0,0,Letext
Letext:
/* File "load.c": code 1509 = 0x05e5 (1488), prologues  12, epilogues   9 */
