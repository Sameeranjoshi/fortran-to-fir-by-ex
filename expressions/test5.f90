program relationalOp
	implicit none
	integer :: i
	logical :: ll  = 2 < 3 ! Constant folding
	logical :: l2
	l2 = i < i
	l2 = i > i
	l2 = i /= i
	l2 = i >= i
	l2 = i == i
end 
