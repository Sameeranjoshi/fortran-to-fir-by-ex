func @_QQmain() {
  %0 = fir.alloca i32 {name = "i"}
  %1 = fir.alloca i32 {name = "j"}
  %2 = fir.alloca i32 {name = "k"}
  %c0_i32 = constant 0 : i32
  fir.store %c0_i32 to %1 : !fir.ref<i32>
  %c3_i32 = constant 3 : i32
  %3 = fir.no_reassoc %c3_i32 : i32
  %c2_i32 = constant 2 : i32
  %4 = fir.load %1 : !fir.ref<i32>
  %c0_i32_0 = constant 0 : i32
  %5 = subi %c0_i32_0, %4 : i32
  %6 = fir.no_reassoc %5 : i32
  %7 = muli %6, %c2_i32 : i32
  %8 = divi_signed %7, %3 : i32
  fir.store %8 to %2 : !fir.ref<i32>
  return
}

