`::Suspend
1::
Loop{
x=50
h=8500
	mouseclick, left, 288, 224
	Sleep, 600
	mouseclick, left, 446, 349
    mouseclick, right, 97, 133
	Sleep, x
	Mousemove,0, 72,0,R
	Sleep, x
	Click
	Sleep, x
	mouseclick, right,139, 133
	Sleep, x
	Mousemove,0,72,0,R
	Sleep, x
	Click
	mouseclick, left, 499, 50
	Sleep, x
	mouseclick, left, 634, 369
	Sleep, x
	mouseclick, left, 673, 366
	Sleep, 600
	mouseclick, left, 265, 453
	Sleep, h
	}
 
; Use resizeable mode with the smallest window and zoom all the way in (alt+scroll wheel), stand at the bank booth with the camera down so the booth fills most of the screen. In Konduit you don't need resizeable mode and you can zoom in with ctrl+scroll.
; Preferably the Grand Exchange bank booth.
; Place herbs in the very first slot in any bank tab.
; Hover over the center of the herb in the very first inventory slot before beginning.
; Hold 1 to clean herbs, then open the bank.
; Hold 2 when the bank pops up to do the banking sequence, then get ready to clean again.
; Hold 3 to do a combination of 1 and 2 non-stop. (if the server is lagging or your ping is high, use 1 and 2)
; Press 4 or 0 to reset the script progress for the 1 and 2 keys.
; Press ~ ` key to suspend/unsuspend the script.