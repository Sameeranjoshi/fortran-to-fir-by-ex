program loss
	! data loss
	! constant folding handles it
	implicit none
	integer :: i		! undefined variables 
	i = 3.15
	i = (3.14, 2)	
end program
