#Include util/JAHK.ahk
#Include util/Methods.ahk

StallColor = 0x18ACC5
msToRunToStall = 5000
msToRunToBank = 5000

1::
Loop{
	SearchAndClickStall(273, 288, 524, 427) 
	
	Sleep, msToRunToStall
	
	Loop, 27{
		SearchAndClickStall(206, 218, 287, 302)
		Sleep, Rand(3000,5000)
	}
	
	BankItems(55,93,185,155)
}
	

return

3::ExitApp


SearchAndClickStall(screenRectX1, screenRectY1, screenRectX2, screenRectX3){
	
	PixelSearch, px,py,screenRectX1,screenRectY1, screenRectX2,screenRectX3, 0x405368, 3, Fast
	if(px>0){
		ClickRight(px,py)
		Sleep, 100
		ImageSearch, ix, iy, 0,0, 781, 597, %A_ScriptDir%/img/stealfromscimitar.png
		
		if(ix>0){
			ClickLeft(ix, iy)
		} else {
			MouseMove, 1, 1
			SearchAndClickStall(screenRectX1+10, screenRectY1+10, screenRectX2-10, screenRectX3-10)
		}
	}
}

BankItems(srx1, sry1, srx2, sry2){
	PixelSearch, px, py, srx1,sry1,srx2,sry2, 0x405A68, 3, Fast
	if(px>0){
		ClickRight(px,py)
		ImageSearch,ix,iy,0,0,781,597, %A_ScriptDir%/img/bank.png
		if(ix>0){
			ClickLeft(ix,iy)
			Sleep, 3000
			if(InBank() == 1){
				ImageSearch, jx, ji,0,0,781,597, %A_ScriptDir%/img/bankinvent.png
				if(jx>0){
					ClickLeft(jx,ji)
					ImageSearch,kx,ki, 0,0,781,597, %A_ScriptDir%/img/exitbank.png
					if(kx>0){
						ClickLeft(kx,ki)
					}
				}
			} 
		}else {
			MouseMove,1,1
			BankItems(srx1+10, sry1+10, srx2-10, sry2-10)
		}
	}
}
