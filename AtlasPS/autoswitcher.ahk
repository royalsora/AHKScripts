0::ExitApp


1::
amountOfSwitches=5 ;switches downward

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