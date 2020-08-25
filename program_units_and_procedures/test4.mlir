func @_QQmain() {
  fir.call @_QPsub() : () -> ()
  return
}
func @_QPsub() {
  return
}

