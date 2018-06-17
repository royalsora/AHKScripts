2::ExitApp

1::
Loop{
z=10
x=50
h=14000
a=97
	mouseclick, left, 288, 224
	Sleep, 600
	mouseclick, left, 446, 349
	Sleep, x
	Loop, 4{
		MouseClick, right, a, 133
		Mousemove,0, 72,0,R
		Sleep, z
		Click
		a+=50
	}
	Sleep, x
	mouseclick, left, 499, 50
	Sleep, x
	mouseclick, left, 671, 294
	Sleep, x
	mouseclick, left, 715, 294
	Sleep, 600
	mouseclick, left, 265, 453
	Sleep, h
	}

; start with nothing in your inventory
; have the torstol in first slot of the bank, then the 3 potions in any order in the 3 slots next to it
; zoom in all the way, make it so the bank is approxmately in the middle of your screen
; make sure withdraw x is set to 7
; be on fixed mode and have not touched the window size
; press 1 to start the script and 2 to stop it
; written by Jan Julius