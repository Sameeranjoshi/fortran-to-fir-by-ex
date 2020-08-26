func @_QQmain() {
  %0 = fir.alloca i32 {name = "i"}
  %1 = fir.alloca i32 {name = "j"}
  %2 = fir.alloca i32 {name = "k"}
  %c4_i32 = constant 4 : i32
  fir.store %c4_i32 to %0 : !fir.ref<i32>
  return
}

