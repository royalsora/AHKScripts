#include util/JAHK.ahk

gearArr := Array() 
amntArr := Array() 

dir1 = %A_ScriptDir%\autogear\gear.txt

1:: 
    arr := []
    Loop, Read, %dir1%
    {
        arr.Push(A_LoopReadLine)
    }
    num := ArrSize(arr)

    for index, element in arr{
        nm := InStr(element, ",")
        StringTrimLeft, amnt, element, nm
        StringTrimRight, item, element, StrLen(element) - nm + 1
        gearArr.push(item)
        amntArr.push(amnt)
    }

    loopSize := gearArr.MaxIndex()
    Loop, %loopSize%{
        gearName := gearArr[A_Index]
		ImageSearch, cx, cy, 0,0,FixedScreenSizeX,FixedScreenSizeY,%A_ScriptDir%\img\search.png
        if(cx>0){
            ClickLeft(cx, cy, 0)
            Snore(10)
            Send, %gearName%
            Send, {enter}
            Snore(600)
        }
        amount := amntArr[A_Index]
        if (amount == 1) {
            ClickLeft(88, 121, 0)
        } else if (amount == 5) {
            ClickRight(88, 121, 0)
            MouseMove, 0, 36, 0,R
            ClickLeft()
        } else if (amount == 10) {
            ClickRight(88, 121, 0)
            MouseMove, 0, 54, 0, R
            ClickLeft()
        } else if (amount == -1) {
            ClickRight(88, 121, 0)
            MouseMove, 0, 72, 0, R
            ClickLeft()    
        } else {
            ClickRight(88, 121, 0)
            MouseMove, 0, 90, 0, R
            ClickLeft()
            Snore(600)
            Send, %amount%
            Send, {enter}
            Snore(1200)
        }

		ImageSearch, cx, cy, 0,0,FixedScreenSizeX,FixedScreenSizeY,%A_ScriptDir%\img\searchred.png
        if(cx>0){
            ClickLeft(cx,cy,0)
        }
        MouseMove, 0, 0, 0
        Snore(200)
    }

    

return

3::ExitApp, 
