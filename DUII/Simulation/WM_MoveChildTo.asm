﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_MoveChildTo.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_MoveChildTo
EXTRN	_WM__MoveWindow:PROC
EXTRN	_GUI_ALLOC_h2p:PROC
EXTRN	_WM_GetParent:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_movechildto.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_MoveChildTo
_TEXT	SEGMENT
_pWin$9442 = -32					; size = 4
_pParent$9441 = -20					; size = 4
_hParent$9439 = -8					; size = 4
_hWin$ = 8						; size = 4
_x$ = 12						; size = 4
_y$ = 16						; size = 4
_WM_MoveChildTo PROC					; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 38
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN3@WM_MoveChi
; Line 41
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_WM_GetParent
	add	esp, 4
	mov	DWORD PTR _hParent$9439[ebp], eax
; Line 42
	cmp	DWORD PTR _hParent$9439[ebp], 0
	je	SHORT $LN3@WM_MoveChi
; Line 44
	mov	eax, DWORD PTR _hParent$9439[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pParent$9441[ebp], eax
; Line 45
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$9442[ebp], eax
; Line 46
	mov	eax, DWORD PTR _pWin$9442[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	edx, DWORD PTR _pParent$9441[ebp]
	movsx	eax, WORD PTR [edx]
	sub	ecx, eax
	mov	edx, DWORD PTR _x$[ebp]
	sub	edx, ecx
	mov	DWORD PTR _x$[ebp], edx
; Line 47
	mov	eax, DWORD PTR _pWin$9442[ebp]
	movsx	ecx, WORD PTR [eax+2]
	mov	edx, DWORD PTR _pParent$9441[ebp]
	movsx	eax, WORD PTR [edx+2]
	sub	ecx, eax
	mov	edx, DWORD PTR _y$[ebp]
	sub	edx, ecx
	mov	DWORD PTR _y$[ebp], edx
; Line 48
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWin$[ebp]
	push	edx
	call	_WM__MoveWindow
	add	esp, 12					; 0000000cH
$LN3@WM_MoveChi:
; Line 52
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_MoveChildTo ENDP
_TEXT	ENDS
END
