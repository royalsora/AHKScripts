FixedScreenSizeX = 781
FixedScreenSizeY = 597

InBank(){
	ToolTip, Checking if we are in the bank
	ImageSearch, ix,iy, 0, 0, 781,597, %A_ScriptDir%/img/inbank.png
	
	if(ix>0){
		return 1
		
	}
	return 2
}