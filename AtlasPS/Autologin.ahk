3::ExitApp

1::

UserName = abc
passwd = abc
enterUserName = true

ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\existinguser.png

MouseMove, x, y, 0
MouseClick, Left

if(enterUserName){
	Send, %UserName%
	Send, {Enter}
}
Send, %passwd%

ImageSearch,x,y,0,0,764,501,%A_ScriptDir%\img\login.png

MouseMove,x,y,0
MouseClick, Left

Loop, 3000{
	Sleep, 1
	
ImageSearch,x,y,0,0,764,501,%A_ScriptDir%\img\clicktoplay.png

if(x>0){
	MouseMove,x,y,0
	MouseClick, Left
	break
}
ToolTip, %A_Index%

}

ToolTip, Done