func @_QQmain() {
  %0 = fir.alloca i32 {name = "i"}
  %1 = fir.alloca !fir.logical<4> {name = "l2"}
  %2 = fir.load %0 : !fir.ref<i32>
  %3 = fir.load %0 : !fir.ref<i32>
  %4 = cmpi "slt", %3, %2 : i32
  %5 = fir.convert %4 : (i1) -> !fir.logical<4>
  fir.store %5 to %1 : !fir.ref<!fir.logical<4>>
  %6 = fir.load %0 : !fir.ref<i32>
  %7 = fir.load %0 : !fir.ref<i32>
  %8 = cmpi "sgt", %7, %6 : i32
  %9 = fir.convert %8 : (i1) -> !fir.logical<4>
  fir.store %9 to %1 : !fir.ref<!fir.logical<4>>
  %10 = fir.load %0 : !fir.ref<i32>
  %11 = fir.load %0 : !fir.ref<i32>
  %12 = cmpi "ne", %11, %10 : i32
  %13 = fir.convert %12 : (i1) -> !fir.logical<4>
  fir.store %13 to %1 : !fir.ref<!fir.logical<4>>
  %14 = fir.load %0 : !fir.ref<i32>
  %15 = fir.load %0 : !fir.ref<i32>
  %16 = cmpi "sge", %15, %14 : i32
  %17 = fir.convert %16 : (i1) -> !fir.logical<4>
  fir.store %17 to %1 : !fir.ref<!fir.logical<4>>
  %18 = fir.load %0 : !fir.ref<i32>
  %19 = fir.load %0 : !fir.ref<i32>
  %20 = cmpi "eq", %19, %18 : i32
  %21 = fir.convert %20 : (i1) -> !fir.logical<4>
  fir.store %21 to %1 : !fir.ref<!fir.logical<4>>
  return
}
fir.global internal @_QEll : !fir.logical<4> {
  %true = constant true
  %0 = fir.convert %true : (i1) -> !fir.logical<4>
  fir.has_value %0 : !fir.logical<4>
}

