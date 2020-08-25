func @_QQmain() {
  return
}
fir.global internal @_QEi : i32 {
  %c-100_i32 = constant -100 : i32
  fir.has_value %c-100_i32 : i32
}
fir.global internal @_QEi1 : i32 {
  %c100_i32 = constant 100 : i32
  fir.has_value %c100_i32 : i32
}
fir.global internal @_QEi2 : i32 {
  %c100_i32 = constant 100 : i32
  fir.has_value %c100_i32 : i32
}
fir.global internal @_QEi3 : i16 {
  %c100_i16 = constant 100 : i16
  fir.has_value %c100_i16 : i16
}

