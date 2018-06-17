2::ExitApp

1::
Loop{
        X+=1
                if (X==1 or X==4 or X==7 or X==10 or X==13 or X==16 or X==20 or X==23 or X==26 or X==29 or X==32 or X==35){
                        Click right
                }
                if (X==3 or X==6 or X==9 or X==12 or X==15 or X==18 or X==22 or X==25 or X==28 or X==31 or X==34 or X==37){
						MouseMove, 0, 36,0,R
						Sleep, 10
                        Click
						Sleep, 10
						Click
						Sleep, 10
                        MouseMove, 0, 36, 0, R
						Sleep, 10
                }
                if (X==9 or X==19 or X==28){
                        MouseMove, 42, -216, 0, R
                }
                if (X==38){
						mouseclick, left, 288, 224
						Sleep, 600
						MouseClick, right, 97, 133
						Mousemove,0, 72,0,R
						Sleep, z
						Click
						Send, {Esc}
                        X=0
                }
			}
        return