func @_QQmain() {
  %0 = fir.alloca !fir.array<1x!fir.char<1>>
  %1 = fir.alloca !fir.complex<4> {name = "com"}
  %2 = fir.alloca i32 {name = "i"}
  %3 = fir.alloca !fir.logical<4> {name = "l"}
  %4 = fir.alloca f32 {name = "r"}
  return
}

