
#include util/Methods.ahk
#include util/JAHK.ahk

charterColor = 0x230034

option = 7
cr = 


portalColor = 0x8D778D


expGained := 0
i := 0

ActiveText = noted astral rc with craft cape


Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, add, Button,w50 h20 gStartButton, Start

Gui, font, s20 bold, Calibri

Gui, add,text, vBN cWhite TransColor, Ironman crafting trainer
Gui, add, text, vMT cWhite TransColor, %ActiveText%

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

3::ExitApp

StartButton:

Loop{
	TeleportToLastLocation()

	Sleep, Rand(5000, 12000)
	
	ClickLeft(477, 357, 0)
		
	Sleep, Rand(3000, 5000)

	MouseMove, 402,160,3
	MouseClick, Left

	Sleep, Rand(3000, 4000)

	
CraftingCapeTeleport()
		Sleep, 4000
		ImageSearch, nessx, nessy, 0,0,781,541,%A_ScriptDir%\img\ness.png
		
		if(nessx > 0){
				MouseMove, nessx,nessy, 0
				MouseClick, Left
				Sleep, Rand(400,500)
					MouseMove, 294,206,3
					Sleep, Rand(600,1299)
					MouseClick, Right
					Sleep, Rand(400,500)
					ImageSearch eobx, eoby, 0,0,764,501,%A_ScriptDir%\img\essonbank.png
					if(eobx>0){
							MouseMove, eobx, eoby, 0
							MouseClick, Left
							Sleep, Rand(600, 1200)
							Send, 111111111
							Sleep, Rand(50, 150)
							Send, {enter}
					}
		}
		
		TeleportHome()
		Send,{F1}
		Sleep, 1500
	}
return
