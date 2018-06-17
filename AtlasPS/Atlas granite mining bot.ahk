
3::ExitApp

1::
Loop {
t=8000
a= 586
	Loop, 2{
	mouseclick, left, 240, 230
	Sleep, t
	}
	mouseclick, left, 240, 160
	Sleep, t
	
	Loop, 2{
	mouseclick, right, a, 260
	a+=40
	Mousemove, 0, 36, 0, R
	Click
	}
}

2::
Loop {
t=4000
a= 586
	Loop, 2{
	mouseclick, left, 171, 308
	Sleep, t
	}
	mouseclick, left, 185, 77
	Sleep, t
	
	Loop, 4{
	mouseclick, right, a, 260
	a+=40
	Mousemove, 0, 36, 0, R
	Click
	}
}

; have inventory open at start
; stand at the northmost granite ore in the west of the mine and stand on its east side
; press compass, zoom out fully and hold up arrow key till it cant go higher
; 2 is the same but zoomed in all the time (better less points for error)