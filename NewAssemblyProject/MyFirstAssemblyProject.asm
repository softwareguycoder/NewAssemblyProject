; Program Name:					MyFirstAssemblyProject.asm

; Program Description:			Assembly programming tutorial for Visual Studio
; Author:						ENS Brian Hart
; Date:							24 Oct 2018

.386
.model	flat, stdcall
.stack	4096
ExitProcess	PROTO, dwExitCode:DWORD

.data
; declare variables here

.code
main PROC
; write your code here

; 300.11 eax = 0xFF00, ebx = 0x8800.  Write commands to compare eax and ebx using just al and bl.

mov		eax, 0000FF00h
mov		ebx, 00008800h
cmp		al,bl
jne		lbl6
mov		al,ah
mov		bl,bh
cmp		al,bl
je 		lbl7

lbl6:
lbl7:
INVOKE ExitProcess,0
main ENDP

; (insert additional procedures here)
END main