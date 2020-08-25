program some 
	implicit none
	integer, dimension(10) :: aryunassign	
	integer, dimension(10) :: aryassign = (/ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 /)
	integer, dimension(10) :: aryassigndiffstyle = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
	integer, dimension(-10:10) :: lb_ub
	integer, dimension(10, 20, 30) :: morethanonedim
	! The error here comes from older gfortran.
	real, dimension(10,10,10,10,10,10,10,10,10,10,10,10,10,10) :: toobig
end
