3::ExitApp

1::
;	Pretty shitty black warlock hunting script but it seems to work. -Voided
Loop 
{
PixelSearch, locx, locy, 36, 63, 506,350, 0x0D1878, 3, Fast
MouseMove, locx, locy, 0
MouseClick, Left
Sleep, 5000
}