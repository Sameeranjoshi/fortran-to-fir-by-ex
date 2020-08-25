func @_QQmain() {
  return
}
func @_QPfoo() -> f32 {
  %0 = fir.alloca f32 {name = "foo"}
  %1 = fir.load %0 : !fir.ref<f32>
  return %1 : f32
}

