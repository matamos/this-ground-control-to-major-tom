 function partxn(a) result(vxn)
        implicit none 
        real, intent (in) :: a
        real                  :: vxn
        vxn = cos(a)
        end function
 
 function partyn(a) result(vyn)
        implicit none 
        real, intent (in) :: a
        real                  :: vyn
        vyn = sin(a)
        end function

PROGRAM vectoradder
        implicit none 
        REAL :: A,M,vxn,vyn,partxn,partyn,vy,vx,vy1,vx1 
        PRINT *,' gimmie angle in radians cuz we scientific'
        READ *, A
        print *,' gimme magintude'
        read *,M
        vxn=partxn(a)
        vyn=partyn(a)
        vx = vxn*m
        vy = vyn*m
        print *, 'you have a vector!!'
        print *, ' a = ', A ,' m = ' ,M
        print *, 'x part of your first vector' , vx , 'y of your first vector' , vy
        read *, 
        print *, 'new vector specificatons !!!!?'
        print *, 'give angle in radians electric boogaloo'
        read *, a 
        print *, 'give magnitude electric boogaloo'
        read *, m 
        print *, 'you have a vector!! electric boogaloo'
        print *, ' a = ', A ,' m = ' ,M
        vxn=partxn(a)
        vyn=partyn(a)
        vx1 = vxn*m
        vy1 = vyn*m
        vy = vy1+vy
        vx = vx1+vx
        a = tan(vy/vx)
        m = sqrt(vy**2+vx**2)
        print *, 'x part of your second vector' , vx1 , 'y of your second vector' , vy1
        print *, 'x part of your new vector' , vx , 'y of your first vector' , vy
        print *, ''
END PROGRAM
