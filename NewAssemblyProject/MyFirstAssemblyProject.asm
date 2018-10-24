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
INVOKE ExitProcess,0
main ENDP

; (insert additional procedures here)
END main