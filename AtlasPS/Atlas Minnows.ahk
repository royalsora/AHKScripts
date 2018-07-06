
#include util/JAHK.ahk

3::ExitApp
Return

1::
Loop{
    PixelSearch, cx, cy, 0, 0, FixedScreenSizeX, FixedScreenSizeY, 0x1F639A, 3, Fast
    
    if(cx > 0){
        ClickRight(cx, cy, 0)
            ImageSearch, ix, iy, 0, 0,FixedScreenSizeX, FixedScreenSizeY, %A_ScriptDir%\img\netfishingspot.png
            if( ix > 0){
                ClickLeft(ix, iy, 0)
                Snore(Rand(15000, 20000))
                continue
            }
    }
    else {
        Loop{ 
        Sendinput, {Left down}
        Sendinput, {Down down}
        PixelSearch, cx, cy, 0, 0, FixedScreenSizeX, FixedScreenSizeY, 0x1F639A, 3, Fast
            if(cx > 0){
                SendInput, {Left up}
                SendInput, {Down up}
                break
            }
        }
    }
}

return