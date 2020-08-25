program some 
	implicit none
	integer, dimension(10) :: aryunassign	
	integer, dimension(10) :: stridedaccess	
	integer, dimension(10, 20, 30) :: morethanonedim
	! now access them
	aryunassign(1) = 2
	stridedaccess(1:5) = 2
	morethanonedim(1,2,3) = 2
end
