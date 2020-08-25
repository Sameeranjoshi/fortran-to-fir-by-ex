program some
	implicit none
	complex :: cmplxvar = (3, 2)
	complex :: otherway = cmplx (100,20)

	complex :: lazyassign
	lazyassign = cmplx (8,20)
end program some
