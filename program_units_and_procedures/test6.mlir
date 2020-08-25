func @_QQmain() {
  %0 = fir.alloca f32 {name = "a"}
  %1 = fir.call @_QPfoo() : () -> f32
  fir.store %1 to %0 : !fir.ref<f32>
  return
}
func @_QPfoo() -> f32 {
  %0 = fir.alloca f32 {name = "foo"}
  %1 = fir.load %0 : !fir.ref<f32>
  return %1 : f32
}

