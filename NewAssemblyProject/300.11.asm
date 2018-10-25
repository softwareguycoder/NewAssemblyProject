; Program Name:					300.11.asm

; Program Description:			Answer for Basic Developer JQR Item 300.11
; Author:						ENS Brian Hart
; Date:							24 Oct 2018

.386
.model	flat, stdcall
.stack	4096
ExitProcess	PROTO, dwExitCode:DWORD

.data
; declare variables here
resne db "Values not equal$", 0
reseq db "Values equal$", 0
.code
main PROC
; write your code here

; 300.11 eax = 0xFF00, ebx = 0x8800.  Write commands to compare eax and ebx using just al and bl.

;mov		eax, 0000FF00h
;mov		ebx, 00008800h
;cmp		al,bl
;jne		lowOrderNotEqual
;mov		al,ah
;mov		bl,bh
;cmp		al,bl
;je 		lowOrderEqual

; 300.13 Draw the stack after the following commands, assume that the value of esp before the commands is 0x1000.

nop
nop
nop
; I want ESP to be aligned on a 4-KiB boundary
and ESP,0FFFFF000h		; SET esp TO A NICE EVEN ADDRESS ENDING IN 3 ZERO'S -- TO QWORD-ALIGN IT
mov	EAX,10h
mov EBX,20h
mov EDX,30h
mov ECX,40h
mov ESI,50h
mov EDI,60h
mov EBP,70h
pushad

INVOKE ExitProcess,0

lowOrderNotEqual:
INVOKE ExitProcess,0

lowOrderEqual:
INVOKE ExitProcess,0
main ENDP

; (insert additional procedures here)
END main