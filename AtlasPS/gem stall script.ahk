2::ExitApp
1::
Loop{
x=50
	mouseclick, right, 628, 265
	Sleep, x
	Mousemove,0, 72,0,R
	Sleep, x
	Click
	mouseclick, left, 494, 73
	mouseclick, left, 29, 170
	Sleep, 5000
	Loop, 28{
		mouseclick, left, 260, 158
		Sleep, 2500

		}
	mouseclick, right, 521, 177
	Mousemove,0,36,0,R
	Click
	Sleep, 5000
	}
 
; atlas autothiever
; press compass, zoom out fully then hold the up arrow key until you cant go up further
; make sure you are in fixed mode and have not changed the window
; be in trade screen with shopkeeper when starting
; have money at the first inventory slot, rest empty or rest sapphires
; press 2 to exit the application, press 1 to run it.
; created by Jan Julius