func @_QQmain() {
  %0 = fir.alloca !fir.complex<4> {name = "lazyassign"}
  %cst = constant 8.000000e+00 : f32
  %cst_0 = constant 2.000000e+01 : f32
  %1 = fir.undefined !fir.complex<4>
  %c0 = constant 0 : index
  %2 = fir.insert_value %1, %cst, %c0 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  %c1 = constant 1 : index
  %3 = fir.insert_value %2, %cst_0, %c1 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  fir.store %3 to %0 : !fir.ref<!fir.complex<4>>
  return
}
fir.global internal @_QEcmplxvar : !fir.complex<4> {
  %cst = constant 3.000000e+00 : f32
  %cst_0 = constant 2.000000e+00 : f32
  %0 = fir.undefined !fir.complex<4>
  %c0 = constant 0 : index
  %1 = fir.insert_value %0, %cst, %c0 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  %c1 = constant 1 : index
  %2 = fir.insert_value %1, %cst_0, %c1 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  fir.has_value %2 : !fir.complex<4>
}
fir.global internal @_QEotherway : !fir.complex<4> {
  %cst = constant 1.000000e+02 : f32
  %cst_0 = constant 2.000000e+01 : f32
  %0 = fir.undefined !fir.complex<4>
  %c0 = constant 0 : index
  %1 = fir.insert_value %0, %cst, %c0 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  %c1 = constant 1 : index
  %2 = fir.insert_value %1, %cst_0, %c1 : (!fir.complex<4>, f32, index) -> !fir.complex<4>
  fir.has_value %2 : !fir.complex<4>
}

