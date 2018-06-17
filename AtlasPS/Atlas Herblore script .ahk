Rand( a=0.0, b=1 ) {
   IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
   Else Random,r,a,b
	ToolTip, %r%
   Return r
}

3::ExitApp
1::
Loop{
h=8500
	mouseclick, left, 288, 224
	Sleep, 600
	mouseclick, left, 446, 349
    mouseclick, right, 97, 133
	Sleep, Rand(50,150)
	Mousemove,0, 72,0,R
	Sleep, Rand(50,150)
	Click
	Sleep, Rand(50,150)
	mouseclick, right,139, 133
	Sleep, Rand(50,150)
	Mousemove,0,72,0,R
	Sleep, Rand(50,150)
	Click
	mouseclick, left, 499, 50
	Sleep, Rand(50,150)
	mouseclick, left, 634, 369
	Sleep, Rand(50,150)
	mouseclick, left, 673, 366
	Sleep, 600
	mouseclick, left, 265, 453
	Sleep, Rand(22500, 25000)
	}
 
; use big bank, preferably ge bank
; when you press 1 and it doesnt click on the bank reajust your screen
; best is to zoom in all the way
; have the 2 ingrediants at the top 2 slots of your bank
; start with anything in your inventory or empty 