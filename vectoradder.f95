program vectoradder1
implicit none
real :: a,m,vx,vy,vx1,vy1 
integer :: o,c
call picker(o)
if (o == 1) then 
call radianelements(vx,vy,a,m)
else 
call matrix(vx,vy,a,m)
endif
call picker(o)
if (o == 1) then 
call radianelements(vx1,vy1,a,m)
else
call matrix(vx1,vy1,a,m)
endif
vx=vx1+vx
vy=vy1+vy
a=atan(vy,vx)
m=sqrt(vx**2+vy**2)
print *,'angle',a,'magnitude',m
print *,'vx :',vx,'vy',vy
end program vectoradder1
subroutine picker(o)
integer, intent(out) :: o
o=0
print *, 'angle and magnitude(1) or matrix(2)' 
print *, '(1) or (2)?'
read *,o
end subroutine picker
subroutine radianelements (vx,vy,a,m)
implicit none
real , intent (out) :: a
real , intent (out) :: m
real , intent (out) :: vx
real , intent (out) :: vy
print *, 'radian and magnitude'
read *,a,m
print *, a,m
vy=m*sin(a)
vx=m*cos(a)
print *,vx,vy
end subroutine radianelements 
subroutine matrix (vx,vy,a,m)

real , intent (out) :: a
real , intent (out) :: m
real , intent (out) :: vx
real , intent (out) :: vy
print *,'vx and vy'
read *,vx,vy
a=atan(vy,vx)
m=sqrt(vx**2+vy**2)
print *, 'angle',a,'magnitude',m
end subroutine matrix
