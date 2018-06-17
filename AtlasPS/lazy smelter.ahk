Rand( a=0.0, b=1 ) {
   IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
   Else Random,r,a,b
	ToolTip, %r%
   Return r
}

3::ExitApp


1::
Loop{
	MouseMove, 245, 135, 0
	MouseClick, Left
	Sleep, Rand(600, 1500)
	MouseMove, 673,258,0
	MouseClick, Right
	MouseMove, 673, 320, 0
	MouseClick, Left
	MouseMove, 97, 130, 0
	MouseClick, Left
	Sleep, Rand(10, 50)
	MouseClick, Left
	Sleep, Rand(10, 50)
	MouseClick, Left
	MouseMove, 142,128,0
	MouseClick, Right
	Sleep, Rand(100,150)
	MouseMove, 134,250,0
	Mouseclick, Left
	Send, {ESC}
	Sleep, Rand(660,800)
	Send, {F4}
	MouseMove, 673,338,0
	Mouseclick, Left
	MouseMove, 673,258,0
	Mouseclick, Left
	Sleep, Rand(2300, 2600)
	MouseMove, 673,338,0
	Mouseclick, Left
	MouseMove, 673,258,0
	Mouseclick, Left
	Sleep, Rand(2300, 2600)
	MouseMove, 673,338,0
	Mouseclick, Left
	MouseMove, 673,258,0
	Mouseclick, Left
	Sleep, Rand(2300,2600)
}

