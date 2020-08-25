func @_QQmain() {
  %0 = fir.alloca !fir.logical<4> {name = "laterassign"}
  %false = constant false
  %1 = fir.convert %false : (i1) -> !fir.logical<4>
  fir.store %1 to %0 : !fir.ref<!fir.logical<4>>
  return
}
fir.global internal @_QElog : !fir.logical<4> {
  %true = constant true
  %0 = fir.convert %true : (i1) -> !fir.logical<4>
  fir.has_value %0 : !fir.logical<4>
}

