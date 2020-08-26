program array_expr
	implicit none
	integer, DIMENSION(10) :: a,b,c
	c(2) = a(2) + b(2)
	! Array expr lowering isn't complete yet, wait for it.
	c = a + b
	c = a(2:5) + b (5:7)
	c(1:3) = a(2:5) + b (5:7)
end 
