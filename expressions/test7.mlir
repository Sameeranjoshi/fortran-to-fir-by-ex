func @_QQmain() {
  %0 = fir.address_of(@_QEch1) : !fir.ref<!fir.array<1x!fir.char<1>>>
  %1 = fir.address_of(@_QEch2) : !fir.ref<!fir.array<1x!fir.char<1>>>
  %2 = fir.alloca !fir.array<1x!fir.char<1>>
  %c1 = constant 1 : index
  %c1_0 = constant 1 : index
  %3 = addi %c1_0, %c1 : index
  %4 = fir.alloca !fir.char<1>, %3
  %c0 = constant 0 : index
  %c1_1 = constant 1 : index
  %5 = subi %c1_0, %c1_1 : index
  fir.do_loop %arg0 = %c0 to %5 step %c1_1 {
    %16 = fir.convert %0 : (!fir.ref<!fir.array<1x!fir.char<1>>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %17 = fir.coordinate_of %16, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    %18 = fir.load %17 : !fir.ref<!fir.char<1>>
    %19 = fir.convert %4 : (!fir.ref<!fir.char<1>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %20 = fir.coordinate_of %19, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    fir.store %18 to %20 : !fir.ref<!fir.char<1>>
  }
  %c1_2 = constant 1 : index
  %6 = subi %3, %c1_2 : index
  fir.do_loop %arg0 = %c1_0 to %6 step %c1_2 {
    %16 = subi %arg0, %c1_0 : index
    %17 = fir.convert %1 : (!fir.ref<!fir.array<1x!fir.char<1>>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %18 = fir.coordinate_of %17, %16 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    %19 = fir.load %18 : !fir.ref<!fir.char<1>>
    %20 = fir.convert %4 : (!fir.ref<!fir.char<1>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %21 = fir.coordinate_of %20, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    fir.store %19 to %21 : !fir.ref<!fir.char<1>>
  }
  %7 = fir.emboxchar %4, %3 : (!fir.ref<!fir.char<1>>, index) -> !fir.boxchar<1>
  %8:2 = fir.unboxchar %7 : (!fir.boxchar<1>) -> (!fir.ref<!fir.char<1>>, index)
  %c1_3 = constant 1 : index
  %9 = cmpi "slt", %c1_3, %8#1 : index
  %10 = select %9, %c1_3, %8#1 : index
  %11 = fir.alloca !fir.char<1>, %10
  %c0_4 = constant 0 : index
  %c1_5 = constant 1 : index
  %12 = subi %10, %c1_5 : index
  fir.do_loop %arg0 = %c0_4 to %12 step %c1_5 {
    %16 = fir.convert %8#0 : (!fir.ref<!fir.char<1>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %17 = fir.coordinate_of %16, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    %18 = fir.load %17 : !fir.ref<!fir.char<1>>
    %19 = fir.convert %11 : (!fir.ref<!fir.char<1>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %20 = fir.coordinate_of %19, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    fir.store %18 to %20 : !fir.ref<!fir.char<1>>
  }
  %c0_6 = constant 0 : index
  %c1_7 = constant 1 : index
  %13 = subi %10, %c1_7 : index
  fir.do_loop %arg0 = %c0_6 to %13 step %c1_7 {
    %16 = fir.convert %11 : (!fir.ref<!fir.char<1>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %17 = fir.coordinate_of %16, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    %18 = fir.load %17 : !fir.ref<!fir.char<1>>
    %19 = fir.convert %2 : (!fir.ref<!fir.array<1x!fir.char<1>>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %20 = fir.coordinate_of %19, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    fir.store %18 to %20 : !fir.ref<!fir.char<1>>
  }
  %c1_8 = constant 1 : index
  %14 = subi %c1_3, %c1_8 : index
  %c32_i8 = constant 32 : i8
  %15 = fir.convert %c32_i8 : (i8) -> !fir.char<1>
  %c1_9 = constant 1 : index
  fir.do_loop %arg0 = %10 to %14 step %c1_9 {
    %16 = fir.convert %2 : (!fir.ref<!fir.array<1x!fir.char<1>>>) -> !fir.ref<!fir.array<?x!fir.char<1>>>
    %17 = fir.coordinate_of %16, %arg0 : (!fir.ref<!fir.array<?x!fir.char<1>>>, index) -> !fir.ref<!fir.char<1>>
    fir.store %15 to %17 : !fir.ref<!fir.char<1>>
  }
  return
}
fir.global internal @_QEch1("m") : !fir.array<1x!fir.char<1>>
fir.global internal @_QEch2("y") : !fir.array<1x!fir.char<1>>
fir.global internal @_QEspace(" ") : !fir.array<1x!fir.char<1>>

