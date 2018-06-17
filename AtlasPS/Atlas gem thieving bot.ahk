2::ExitApp
1::
Loop{
Random, x, 40, 100
Random, x1, 40, 100
Random, x2, 40, 150
Random, sl, 4500, 6500
x=2
ToolTip, x %x% x1 %x1% sl %sl%
	mouseclick, right, 628, 265
	ToolTip, Waiting to sell to shopkeeper shop delay x %x%
	Sleep, x
	Mousemove,0, 72,0,R
	ToolTip, Waiting at sleep button x1 %x1%
	Sleep, x1
	Click
	ToolTip, waiting to go to stall at delay x2 %x2%
	mouseclick, left, 494, 73
	mouseclick, left, 29, 170
	Sleep, sl
	Loop, 30{
		if(x = 1){
		Send, 3
		x = 0
		}
		Random, gem, 1500, 3000
		ToolTip, stealing gem at delay %gem%
		mouseclick, left, 260, 158
		Sleep, gem

		}
		ToolTip, Returning to shopkeeper delay s1 %s1% 
	mouseclick, right, 521, 177
	Mousemove,0,36,0,R
	Click
	Sleep, sl
	}
 
 3::
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
			ToolTip, I've found a mod replying with a message
			if(R == 1){
		Send, hi mod im not afk!!!
	} if(R == 2){
		Send, I'm definitely not botting oh mr mod
	}
	if(R == 3){
		Send, fuck off you prick
	} else {
		Send, hi
}
		}
		if(ColorAtPixel == constAdminColor){
		ToolTip, I've found the color of an admin ,replying with message
		if(R == 1){
		Send, hi please dont ban me im not using any kind of macro ive read the rules
	} if(R == 2){
		Send, I'm not botting I'm just watching television
	}
	if(R == 3){
		Send, go back to programming u knob
	} else {
		Send, hi
}
		}
		else {
		Send, {enter}
		}
 
; atlas autothiever
; press compass, zoom out fully then hold the up arrow key until you cant go up further
; make sure you are in fixed mode and have not changed the window
; be in trade screen with shopkeeper when starting
; have money at the first inventory slot, rest empty or rest sapphires
; press 2 to exit the application, press 1 to run it.
; created by Jan Julius
; this bot now has random values attached makign it harder to find, 3.0 will have random mouse clicks too
; to enable auto reponse to moderators on line 8 set x=2 to x=1,
; change the messages you want to send at line 63, 65, 68, 70 for messages to mods
; at line 76, 78, 81 and 83 is the messages to admins.