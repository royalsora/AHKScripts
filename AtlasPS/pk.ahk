1::F1
Return

2::F2
Return

3::F3
Return

4::F4
Return

0::ExitApp

XButton1::
XButton2::
amountOfSwitches=4 ;switches downward

loopA := Ceil(amountOfSwitches /= 2)
loopB := Floor(amountOfSwitches /= 2)

MouseGetPos, xpos, ypos

MouseMove, 586, 260, 0
Send, {F1}
loop, %loopA% {
	Click, Left
	loop, %loopB% {
            MouseMove, 42, 0, 0, R
			Click, Left
	}
	MouseMove, -42, 36, 0, R
}
MouseMove, xpos, ypos, 0
return

5::
Send, {F4}
ImageSearch, ix, iy, 0, 0, 1000, 1000, %A_ScriptDir%\img\icebarrage.png

if(ix>0){
	MouseMove, ix, iy, 0
	MouseClick, Left
}

PixelSearch, px, py, 50, 50, 1000, 1000, 0xD000FF, 3, Fast
if(px>0){
	MouseMove, px, py, 0
	MouseClick, Left
}

