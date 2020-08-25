func @_QQmain() {
  return
}
fir.global internal @_QECconsstr("o") constant : !fir.array<1x!fir.char<1>>
fir.global internal @_QECconstvar constant : i32 {
  %c100_i32 = constant 100 : i32
  fir.has_value %c100_i32 : i32
}

