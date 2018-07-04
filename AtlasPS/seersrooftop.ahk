3::ExitApp
 
 
1::
Sleep, 3000
portalColor = 0x8D778D
 
i := 0
 
ActiveText = CREATED BY JAN JULIUS TO DO AGILITYYYYYYY sometimes fucks up at the home teleporter.
 
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
    TeleportToLastLocation()
    2::
    MouseMove, 259, 162, 0
    Sleep, 6000
    Click, Left
    MouseMove, 42, 137
    Sleep, 5500
    Click, Left
    MouseMove, 169, 268, 0
    Sleep, 7000
    Click, Left
    MouseMove, 264, 296, 0
    Sleep, 3500
    Click, Left
    MouseMove, 264, 317, 0
    Sleep, 8500
    Click, Left
    MouseMove, 67, 299, 0
    Sleep, 5500
    Click, Left
    MouseMove, 296, 299, 0
    Sleep, 5500
    Click, Left
    Sleep, 3500
    TeleportHome()
    Sleep, 4000
}