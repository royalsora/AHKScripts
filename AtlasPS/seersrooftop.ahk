3::ExitApp


1::

portalColor = 0x8D778D

i := 0

ActiveText = CREATED BY JAN JULIUS TO DO AGILITYYYYYYY

;
;Gui, Color, Black
;
;Gui, -caption +toolwindow +AlwaysOnTop
;
;Gui, font, s20 bold, Calibri
;
;Gui, add,text, vBN cWhite TransColor, Seers rooftop Agility
;Gui, add, text, vMT cWhite TransColor, %ActiveText%
;Gui, add, text, vCredits cWhite TransColor, Created By: Jan Julius
;
;WinGetPos, winX, winY, winW, winH, A
;
;Gui, Show, AutoSize Center ,TRANS-WIN
;
;WinSet, TransColor, Black, TRANS-WIN


;code

Loop {
PixelSearch, locx, locy, 231, 57, 318,125, 0x898a95, 3, Fast

MouseMove, locx, locy, 0
MouseClick, Right

ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\lastteleport.png
if(x>0){
	MouseMove, x, y, 0
	MouseClick, Left
}
2::
MouseMove, 242, 101, 0
Sleep, 10000
Click, Left
MouseMove, 42, 137
Sleep, 7000
Click, Left
MouseMove, 169, 268, 0
Sleep, 8000
Click, Left
MouseMove, 264, 318, 0
Sleep, 12000
Click, Left
MouseMove, 67, 299, 0
Sleep, 8000
Click, Left
MouseMove, 296, 299, 0
Sleep, 8000
Click, Left
Send, {F4}
ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\hometeleport.png
if(x>0){
	MouseMove, x, y, 0
	MouseClick, Left
}
}


