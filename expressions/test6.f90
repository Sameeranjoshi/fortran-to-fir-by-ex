program logicalop
	implicit none
	logical :: l1, i=.true.,j=.false.
	l1 = i .and. j
	l1 = i .or. j
	l1 = .not. j
	l1 = i .eqv. j
	l1 = i .neqv. j
end
