;FixedScreenSizeX = 781
;FixedScreenSizeY = 541

Rand( a=0.0, b=1 ) {
   IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
   Else Random,r,a,b
   Return r
}

;teleports to last location onthe teleporter at home
TeleportToLastLocation(){
    Loop{
		PixelSearch, locx, locy, 251, 88, 320,216, 0x824E77, 3, Fast
		
		MouseMove, locx, locy, 0
		MouseClick, Right
		
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\lastteleport.png
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
			break
			}
	}
}

;teleports the player home 
TeleportHome(){
    Send, {F4}
		Sleep, 600
		
		ImageSearch hx, hy, 0,0,764,501,%A_ScriptDir%\img\hometeleport.png
		
		if(hx>0){
				Mousemove, hx, hy, 0
				MouseClick, Left
		}
}