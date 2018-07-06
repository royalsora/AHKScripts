;easy use for methods 

FixedScreenSizeX := 781
FixedScreenSizeY := 541

#CommentFlag, Rand returns a random floating number between a and b
Rand( a=0.0, b=1 ) {
   IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
   Else Random,r,a,b
   Return r
}

#CommentFlag, ClickLeft clicks the left mouse button on the coordinates x, y with speed speed
ClickLeft(x=-1, y=-1, speed=0){
    if(x >= 0 && y >= 0){
        MouseMove, x, y, speed
    }
    MouseClick, Left
}

#CommentFlag, RightClick clicks the right mouse button on the coordinates x, y with speed speed
ClickRight(x=-1, y=-1, speed=0){
    if(x >= 0 && y >= 0){
        MouseMove, x, y, speed
    }
    MouseClick, Right
}

#CommentFlag, Send message message when sent it will take in account if the delay parameter is defined or not
SendMessage(message, delay=0){
    Send, message
    Sleep, delay
    Send, {enter}
}

#CommentFlag, Returns file file as string array`
FileToArray(file){
    ToolTip, %file%
    arr := [] 
    Loop, Read, %file%
    {
        arr.Push(%A_LoopReadLine%)
    }
    return arr
}

#CommentFlag, Sleep for amnt in ms
Snore(amnt){
    Sleep, %amnt%
}

#CommentFlag, finds largest item in array array
ArrSize(Array)
{
	For each, item in Array
		If (StrLen(item) > MaxLength)
			MaxLength := StrLen(item)
	return MaxLength
}


/*#CommentFlag, Scroll Down with amount speed
ScrollDown(speed=0){
    if(speed > 0){
        Loop, %speed%{
            MouseClick, ScrollDown
        }
    } else {
        MouseClick, ScrollDown
    }
}

#CommentFlag, Scroll Up with amount speed
ScrollUp(speed=0){
    if(speed > 0){
        Loop, %speed%{
            MouseClick, ScrollUp
        }
    } else {
        MouseClick, ScrollUp
    }
}

*/