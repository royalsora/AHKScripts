0::ExitApp

1:: ;pray magic
Send, {F3}

ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\praymagic.png

if(x>0)
	BlockInput, On
	MouseMove, x, y, 0
	Click, Left
	BlockInput, Off
	
	return
return
2:: ;pray range
Send, {F3}
ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\prayrange.png

if(x>0)
	BlockInput, On
	MouseMove, x, y, 0
	Click, Left
	
	BlockInput, Off
	return

return

3:: ;pray melee
Send, {F3}
ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\praymelee.png

if(x>0)
	MouseMove, x, y, 0
	Click, Left
	return
return
