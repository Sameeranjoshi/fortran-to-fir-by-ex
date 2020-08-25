program chartest
	implicit none
	character :: somestr = "Ok google"
	character(LEN=5) :: fixstring = "Ok google"
	character(LEN=10, KIND=4) :: otherstring = "Ok google"
end program
