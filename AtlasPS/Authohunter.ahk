
3::ExitApp

1::

HunterLevel = 99

LoopAmount = 5; ;change this depending on the hunter level, above 80 = 5 else 4
ActiveText = CREATED BY JAN JULIUS TO DO HUNTERssssssss

CaughtTrap = 0x332619
FallenTrap = 0x9B896A

#SingleInstance, force

Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, font, s30 bold, Calibri

Gui, add, text, vMT cRed TransColor, %ActiveText%
Gui, add, text, vHL cRed TransColor, Hunter Level: %HunterLevel%
Gui, add, text, vTM cRed TransColor, timeRunning
Gui, add, text, vCredits cRed TransColor, Created By: Jan Julius

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN


Loop {
Loop, 5 {
ImageSearch, x, y, 0, 0, 764, 501, %A_ScriptDir%\img\Box_trap.png

MouseMove, X, Y, 0
MouseClick, Left

ActiveText = Setting up box trap %A_Index%/%LoopAmount%
GuiControl,,MT, %ActiveText%
Sleep, 3000
}
ActiveText = Done setting up box traps
GuiControl,,MT, %ActiveText%

Sleep, 10000

ActiveText = Retrieving box traps
GuiControl,,MT, %ActiveText%
2::
Loop, 5{
PixelSearch, Px, Py, 15, 37, 514, 337, 0x607E8F, 5, Fast
PixelSearch, Px2, Py2, 15, 37, 514, 337, 0x526C7B, 5, Fast

MouseMove, %Px%, %Py%, 0
MouseMove, %Px2%, %Py2%, 0
MouseClick, Right

ImageSearch, x, y, 0,0,764,501,E:\Jan Julius\ahk\Scripts\Kratos\takeboxtrap.png
if(x>0){
MouseMove, x, y, 0
MouseClick, Left
}

ImageSearch, x, y, 0,0,764,501,E:\Jan Julius\ahk\Scripts\Kratos\checkshakingbox.png
if(x>0){
MouseMove, x, y, 0
MouseClick, Left
}

ImageSearch, x, y, 0,0,764,501,E:\Jan Julius\ahk\Scripts\Kratos\dismantlebox.png
if(x>0){
MouseMove, x, y, 0
MouseClick, Left
}

ToolTip, Found TAKEBOXTRAP at %Px% %Py%
Sleep, 3000
}
}