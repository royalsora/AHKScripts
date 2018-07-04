#include util/Methods.ahk

Lvl75StallColor = 0xB11594

3::ExitApp

1::

;TODO add random delays
;TODO move close to the gem stall

Loop, 27{ ;loop 27 times to fill inventory with gems
	PixelSearch, sX, sY, 0, 0, 781, 541, Lvl75StallColor, 3, Fast ;find the stall based on one of the gem colors in the stall
	if(sX>0){ ;if its there
		MouseMove, sX, sY, 0 ;move the mouse there
		MouseClick, Right ;right click
		ImageSearch, sfX, sfY, 0,0,781,541,%A_ScriptDir%\img\stealfromgemstall.png ;find the "steal from gem stall" option
		if(sfX>0){ ;if its there
			MouseMove, sfX, sfY, 0 ;move the mouse there
			MouseClick, Left ;click
		}
	}
	Sleep, Rand(2500, 3200) ;wait for stealing again
}

;TODO move close to shop keeper
;find him based on hair color
;rightclick and find trade with option
;sell all the gems
return