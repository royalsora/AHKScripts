2::ExitApp



1::

PixelSearch, OX, OY, 0, 0, 781, 541, 0x4D5562, 3, Fast

ToolTip, %OX% %OY% %x1% %y1% %x2% %y2% col %Col%
 
nPosX = %OX% 
nPosY = %OY% - 2

MouseMove, nPosX, nPosY, 0
MouseGetPos, mXpos, mYpos
PixelGetColor, MousePosColor, %mXpos%, %mYpos%

MouseClick, Left
;0x0000FF
ToolTip, %MousePosColor% mousepos %mXpos% %mYPos% %MousePosColor%