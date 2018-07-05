;easy use for methods 

Rand( a=0.0, b=1 ) {
   IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
   Else Random,r,a,b
   Return r
}

ClickLeft(x=-1, y=-1, speed=0){
    if(x >= 0 && y >= 0){
        MouseMove, x, y, speed
    }
    MouseClick, Left
}

ClickRight(x=-1, y=-1, speed=0){
    if(x >= 0 && y >= 0){
        MouseMove, x, y, speed
    }
    MouseClick, Right
}

Sleep(amnt){
    Sleep, %amnt%
}