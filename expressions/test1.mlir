func @_QQmain() {
  %0 = fir.alloca i32 {name = "i"}
  %1 = fir.alloca i32 {name = "j"}
  %2 = fir.alloca i32 {name = "k"}
  %c3_i32 = constant 3 : i32
  fir.store %c3_i32 to %0 : !fir.ref<i32>
  %3 = fir.load %0 : !fir.ref<i32>
  %c1_i32 = constant 1 : i32
  %4 = addi %c1_i32, %3 : i32
  fir.store %4 to %1 : !fir.ref<i32>
  %5 = fir.load %1 : !fir.ref<i32>
  %6 = fir.load %0 : !fir.ref<i32>
  %7 = addi %6, %5 : i32
  fir.store %7 to %2 : !fir.ref<i32>
  return
}
fir.global internal @_QEl : i32 {
  %c3_i32 = constant 3 : i32
  fir.has_value %c3_i32 : i32
}

