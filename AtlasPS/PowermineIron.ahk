3::ExitApp

1::
IfWinActive, Atlas #163.7
{
rockColor = 0x0D1522

i := 0

ActiveText = CREATED BY JAN JULIUS TO DO MININGGGGGGGGG


Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, font, s20 bold, Calibri

Gui, add,text, vBN cWhite TransColor, Iron powerminer
Gui, add, text, vMT cWhite TransColor, %ActiveText%
Gui, add, text, vCredits cWhite TransColor, Created By: Jan Julius

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

Loop{
PixelSearch, locx, locy, 0, 0, 514,334, %rockColor%, 5, Fast

	if(locx > 0){
ActiveText = Finding Rocks (%i%/20) mined
GuiControl,,MT, %ActiveText%
		MouseMove, locx, locy, 0
		MouseClick, Right
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\minerocks.png
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
		} else {
			SendInput, {Up down}{Rightdown}
		Sleep, 50
		;~ SendInput, {Up up}{Right up}
		MouseMove, 0, 0
			continue
		}
ActiveText = Mining rock %i% (%i%/20) mined
GuiControl,,MT, %ActiveText%
		
		Sleep, 4000
		i++
		ToolTip, %i%
	}
	
	if(i >= 15){
ActiveText = Dropping rocks
GuiControl,,MT, %ActiveText%
		Loop, 40{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\ironore.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		i = 0
	}
}


return


	}