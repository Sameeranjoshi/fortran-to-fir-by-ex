func @_QQmain() {
  %0 = fir.address_of(@_QEi) : !fir.ref<!fir.logical<4>>
  %1 = fir.address_of(@_QEj) : !fir.ref<!fir.logical<4>>
  %2 = fir.alloca !fir.logical<4> {name = "l1"}
  %3 = fir.load %0 : !fir.ref<!fir.logical<4>>
  %4 = fir.load %1 : !fir.ref<!fir.logical<4>>
  %5 = fir.convert %3 : (!fir.logical<4>) -> i1
  %6 = fir.convert %4 : (!fir.logical<4>) -> i1
  %7 = and %5, %6 : i1
  %8 = fir.convert %7 : (i1) -> !fir.logical<4>
  fir.store %8 to %2 : !fir.ref<!fir.logical<4>>
  %9 = fir.load %0 : !fir.ref<!fir.logical<4>>
  %10 = fir.load %1 : !fir.ref<!fir.logical<4>>
  %11 = fir.convert %9 : (!fir.logical<4>) -> i1
  %12 = fir.convert %10 : (!fir.logical<4>) -> i1
  %13 = or %11, %12 : i1
  %14 = fir.convert %13 : (i1) -> !fir.logical<4>
  fir.store %14 to %2 : !fir.ref<!fir.logical<4>>
  %15 = fir.load %1 : !fir.ref<!fir.logical<4>>
  %true = constant true
  %16 = fir.convert %15 : (!fir.logical<4>) -> i1
  %17 = xor %16, %true : i1
  %18 = fir.convert %17 : (i1) -> !fir.logical<4>
  fir.store %18 to %2 : !fir.ref<!fir.logical<4>>
  %19 = fir.load %0 : !fir.ref<!fir.logical<4>>
  %20 = fir.load %1 : !fir.ref<!fir.logical<4>>
  %21 = fir.convert %19 : (!fir.logical<4>) -> i1
  %22 = fir.convert %20 : (!fir.logical<4>) -> i1
  %23 = cmpi "eq", %21, %22 : i1
  %24 = fir.convert %23 : (i1) -> !fir.logical<4>
  fir.store %24 to %2 : !fir.ref<!fir.logical<4>>
  %25 = fir.load %0 : !fir.ref<!fir.logical<4>>
  %26 = fir.load %1 : !fir.ref<!fir.logical<4>>
  %27 = fir.convert %25 : (!fir.logical<4>) -> i1
  %28 = fir.convert %26 : (!fir.logical<4>) -> i1
  %29 = cmpi "ne", %27, %28 : i1
  %30 = fir.convert %29 : (i1) -> !fir.logical<4>
  fir.store %30 to %2 : !fir.ref<!fir.logical<4>>
  return
}
fir.global internal @_QEi : !fir.logical<4> {
  %true = constant true
  %0 = fir.convert %true : (i1) -> !fir.logical<4>
  fir.has_value %0 : !fir.logical<4>
}
fir.global internal @_QEj : !fir.logical<4> {
  %false = constant false
  %0 = fir.convert %false : (i1) -> !fir.logical<4>
  fir.has_value %0 : !fir.logical<4>
}

