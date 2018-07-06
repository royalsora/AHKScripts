charterColor = 0x230034

option = 7
cr = 

expGained := 0
i := 0

ActiveText = CREATED BY JAN JULIUS TO DO CRAFTINGGGGGGGGG


Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop


Gui, add, Button,w50 h20 gStartButton, Start
Gui, add, Button,w100 h20 gSetButton1, LanternLens
Gui, add, Button, w50 h20 gSetButton2, Orbs

Gui, font, s20 bold, Calibri

Gui, add,text, vBN cWhite TransColor, Ironman crafting trainer
Gui, add, text, vMT cWhite TransColor, %ActiveText%
;Gui, add, text, vCredits cWhite TransColor, Created By: Jan Julius

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

3::ExitApp

SetButton1:
option = 7
cr = lantern lenses
ActiveText = You will now create %cr%
	GuiControl,,MT, %ActiveText%
return

SetButton2:
option = 8
cr = dorgeshuun orbs
ActiveText = You will now create %cr%
	GuiControl,,MT, %ActiveText%
return

StartButton:

Loop {
	
	GuiControl,,BN, %cr% %expGained%

	PixelSearch, cx, cy, 13, 37, 533, 369, %charterColor%, 5, Fast ;find charter lady with purple clothing
	
	ActiveText = Searching for charter crewmember
	GuiControl,,MT, %ActiveText%
	
	Loop, 20{ ;spin the screen if there is no charterlady in the screen
		Sendinput, {Left down}
		if(cx > 0){
			SendInput, {Left up}
			break
		}
	}
	
	if(cx > 0){ ;found the charterlady
		
		ActiveText = Found charter crewmember, waiting for shop
		GuiControl,,MT, %ActiveText%
		MouseMove, cx, cy, 0
		MouseClick, Right
		
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\tradecharter.png ;trade her
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
			Sleep, 5000
			Loop, 3000{
				ImageSearch, ax, ay, 0,0,764,501,%A_ScriptDir%\img\bucketofsand.png ;buy buckets of sand
				if(ax > 0){
					ActiveText = Purchasing sand
					GuiControl,,MT, %ActiveText%
					
					MouseMove, ax, ay, 0
					MouseClick, Right
					
					ImageSearch, a2x, a2y, 0,0,764,501,%A_ScriptDir%\img\buy10.png
					
					if(a2x >0){
						MouseMove, a2x, a2y, 0
						MouseClick, Left
					}
				}
				Sleep, 1000
				
				ImageSearch, bx, by, 0,0,764,501,%A_ScriptDir%\img\sodaash.png ;buy soda ash
				if(bx > 0){
					ActiveText = Purchasing ash
					GuiControl,,MT, %ActiveText%
					
					MouseMove, bx, by, 0
					MouseClick, Right
					
					ImageSearch, b2x, b2y, 0,0,764,501,%A_ScriptDir%\img\buy10.png
					
					if(b2x >0){
						MouseMove, b2x, b2y, 0
						MouseClick, Left
					}
				}
				if(!(bx > 0) && !(ax > 0)){
					break
				}
			}
		}
		ActiveText = Finished purchasing items, casting glassmake spell
		GuiControl,,MT, %ActiveText%
		
		Send, {Esc} ;close shop and cast superglass
		Sleep, 300
		Send, {F4}
		Sleep, 300
		
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\superglassmake.png ;cast superglass
		Sleep, 300
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
		}
		
		Send, {F1}
		Sleep, 5000
		
		ActiveText = Blowing glass
		GuiControl,,MT, %ActiveText%
		
		ImageSearch, x, y, 0, 0, 764, 501, %A_ScriptDir%\img\glassblowingpipe.png ;click glassblowingpipe
		if(x>0){
			MouseMove, x,y,0
			MouseClick, Left
		}
		expGained += 2000
		GuiControl,,BN, %expGained% ;%cr% (%option%) Gained: %expGained%
		
		ImageSearch, x, y, 0, 0, 764, 501, %A_ScriptDir%\img\moltenglass.png ;click moltenglass
		if(x > 0){
			MouseMove, x,y,0
			MouseClick, Left
		}
		
		Sleep, 1000
		Send, %option%
		
		Loop, 3000{
			ImageSearch, x,y,0,0,764,501, %A_ScriptDir%\img\moltenglass.png ;stop creation sequence when there is no more moltenglass in the screen
			if(!(x>0)){
				break
			}
			Sleep, 2000
			if(option == 7){
				expGained += 1100
			} else {
				expGained += 1400
			}
			GuiControl,,BN, %expGained% ;%cr% (%option%) Gained: %expGained%
		}
		
		ActiveText = There is no moltenglass left in the inventory
		GuiControl,,MT, %ActiveText%
		
		Sleep, 3000
		ActiveText = Dropping
		GuiControl,,MT, %ActiveText%
		
		Loop, 3000{
			if(option == 7){
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\lanternlens.png ;drop lantern lenses
			}else{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\dorgorb.png ;drop dorgorbs
			}	
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			} else {
			break	
			}
		}
		
		MouseMove, 626, 263, 0
		MouseClick, Left ;safety click to make sure the bot doesnt get stuck by clicking the pipe with nothing in the inventory
	}
}
return