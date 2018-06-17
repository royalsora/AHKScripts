
2::ExitApp

8::

   Random Number, 1, 3

   RandomVar := Var%Number%

   MsgBox Random Number == %Number%`nVar%Number% == %RandomVar%

Return

9::
	Random, a, 1, 3
	Random, b, 1, 3
	Random, c, 1, 3
	Random, d, 1, 3
	MouseGetPos, xpos, ypos
	
	constRegDonatorColor := 0x007F0E
	
	
	constRubyDonatorColor := 0xCC2525
	
	
	cModColor := 0xA2A2A1
	
	
	constAdminColor := 0xF7FF0b
	
	PixelGetColor ColorAtPixel, 22, 479, RGB
	ToolTip, %ColorAtPixel% %Number%
	
		if(ColorAtPixel == cModColor){
		Send, hi mod im not afk!!!
		}
		if(ColorAtPixel == constRegDonatorColor){
		;MsgBox, I've found the color of a regular donator, replying with message (%ColorAtPixel% == %constRegDonatorColor%)
		if(a == 1){
			Send, hi nice donator rank
		} else if(a == 2){
			Send, is that emerald donator rank?
		} else if(a == 3){
			Send, hi
		}
		}
		if(ColorAtPixel == constRubyDonatorColor){
		Send, nice ruby donator i wish i had more money to buy that!!	
		}
		if(ColorAtPixel == constAdminColor){
		;MsgBox, I've found the color of an admin ,replying with message
		Send, hi please dont ban me im not using any kind of macro ive read the rules
		}
		else {
		;Send, {enter}
		}
