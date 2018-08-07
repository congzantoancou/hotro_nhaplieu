/* 
* Chương trình Hỗ trợ nhập liệu phần mềm Quản lý sinh viên
* Version: 8.0
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

; ________________ DECLARATION ___________________

; f4
p0x = 960 
p0y = 252

; f5
p1x = 625 
p1y = 278

; f6
p2x = 732 
p2y = 280

; f7
p3x = 579 
p3y = 395

; f8
p4x = 454 
p4y = 477

; f9
p5x = 478 
p5y = 507

; f10
p6x = 472 
p6y = 560

; f11
p7x = 479 
p7y = 638

; f12
p8x = 498 
p8y = 764

return



; ________________ INSIDE ___________________
#If Getkeystate("ScrollLock", "T") and Winactive("Quản lý sinh viên")
	
	; MACRO
	:?*:ny::Nguyễn
	:?*:n.::Nguyễn
	:?*:nt::Nguyễn Thị
	:?*:tf::Trần
	:?*:pp::Phạm
	:?*:pn::Phan
	:?*:t.::Thị
	:?*:v.::Văn
	:?*:ds::Đức
	:?*:dj::Đặng
	:?*:dx::Đỗ
	:?*:bf::Bùi
	;:?*:tg::Trương
	;:?*:hn::Huỳnh
	;:?*:hg::Hoàng

	:?*:nn::Nông dân
	:?*:cc::Công nhân
	:?*:ww::Ngư dân
	:?*:gg::Giáo viên
	:?*:td::Tự do
	:?*:hh::Học sinh
	:?*:ss::Sinh viên
	:?*:rr::Nội trợ
	:?*:nv::NVVP
	:?*:kk::Kinh doanh
	:?*:bb::Buôn bán
	:?*:xx::Xây dựng
	:?*:ke::Kế toán
	:?*:ll::Lao động tự do
	;:?*:tx::Tài xế


	:?*:gm::@gmail.com
	
	:?*:c.::Chị
	:?*:a.::Anh
	:*?:e.::Em
	
	:?*:d.::đường
	:?*:tn::thôn
	:?*:x.::xóm
	:?*:tz::tổ
	:?*:kp::KP
	:*?:ap::ấp

	:?*:182::18211

;___________________________________
	
	#IfWinActive, Quản lý sinh viên
	; FUNCTION KEYS
	F2:: Send, ^s

	f3::
		MouseGetPos, x, y
		MouseMove, 85, 323
		Send, {LButton 2}
		Send, ^a
		Send, 18211
		MouseMove, x, y
	return

	F4::
		MouseGetPos, x, y
		MouseMove, p0x, p0y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
;___________________________________
	F5::
		MouseGetPos, x, y
		MouseMove, p1x, p1y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F6::
		Clipboard :=
		Send, ^a
		Sleep, 10
		Send, ^c
		Sleep, 10
		var := Clipboard
		
		if (Strlen(var) == 0)
		{
			Send, {Tab}
			return
		}
		
		; Date formating
		if var is integer
		{
			if (StrLen(var) == 8)
			{
				result := SubStr(var,1,2) "/" SubStr(var,3,2) "/" SubStr(var,5,4)
				Send % result
			}
		}
		Clipboard :=

		MouseGetPos, x, y
		MouseMove, p2x, p2y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F7::
		MouseGetPos, x, y
		MouseMove, p3x, p3y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F8::
		MouseGetPos, x, y
		MouseMove, p4x, p4y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
;__________________________________
	F9::
		MouseGetPos, x, y
		MouseMove, p5x, p5y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F10::
		MouseGetPos, x, y
		MouseMove, p6x, p6y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F11::
		MouseGetPos, x, y
		MouseMove, p7x, p7y
		Send, {LButton 2}
		Send, ^a
		MouseMove, x, y
	return
	F12::
		MouseGetPos, x, y
		MouseMove, p8x, p8y
		Send, {LButton 2}
		MouseMove, x, y
	return
;___________________________________
	
	; TAB MAPPING
	\:: Tab
	`:: Send, {Tab 2}
	$Tab::
		; Copy the string
		Clipboard :=
		Send, ^a
		Sleep, 10
		Send, ^c
		Sleep, 10
		var := Clipboard
		
		if (Strlen(var) == 0)
		{
			Send, {Tab}
			return
		}
		
		; Date formating
		if var is integer
		{
			if (StrLen(var) == 8)
			{
				result := SubStr(var,1,2) "/" SubStr(var,3,2) "/" SubStr(var,5,4)
				Send % result
			}
		}

		; Title case (Capitalized)
		if not (RegExMatch(var, "\d+"))
		{
			StringUpper, result, var, T
			Sleep, 40
			Send % result
		}
		
		; Move tab
		Clipboard :=
		Send, {Right}
		Send, {Tab}
	return
	
#If

; ________________ OUTSIDE ___________________


#p::
	MouseGetPos, x, y
	Clipboard = %x% %y%
	Msgbox, %x%/%y%. Copied
return


^Bs:: Send, ^+{Left}{Bs}
Pause:: suspend
#j:: run, shell:Downloads

