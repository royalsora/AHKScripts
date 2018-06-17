3::ExitApp

1::
Loop {
Random, x, 30, 70
Random, b, 600, 800
h=8500
	mouseclick, left, 288, 224
	ToolTip, %b%
	Sleep, b
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
	ToolTip, %b%
	Sleep, b
	SendInput, {F1}
	MouseClickDrag, left, 630, 368, 672, 475, 2
	Sleep, x
	Loop, 60 {
		Random, z, 10, 50
		mouseclick, left, 673, 477
		Sleep, z
		ToolTip, %z%
		mouseclick, left, 713, 476
	}
}