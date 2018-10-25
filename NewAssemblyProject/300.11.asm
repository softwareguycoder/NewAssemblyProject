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

mov		eax, 0000FF00h
mov		ebx, 00008800h
cmp		al,bl
jne		lowOrderNotEqual
mov		al,ah
mov		bl,bh
cmp		al,bl
je 		lowOrderEqual
INVOKE ExitProcess,0

lowOrderNotEqual:
INVOKE ExitProcess,0

lowOrderEqual:
INVOKE ExitProcess,0
main ENDP

; (insert additional procedures here)
END main