func @_QQmain() {
  %0 = fir.alloca i32 {name = "i"}
  %c3_i32 = constant 3 : i32
  fir.store %c3_i32 to %0 : !fir.ref<i32>
  %c3_i32_0 = constant 3 : i32
  fir.store %c3_i32_0 to %0 : !fir.ref<i32>
  return
}

