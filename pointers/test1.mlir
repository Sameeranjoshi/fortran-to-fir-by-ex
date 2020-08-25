func @_QQmain() {
  %0 = fir.alloca !fir.ptr<f32> {name = "ptr"}
  %c0 = constant 0 : index
  %1 = fir.convert %c0 : (index) -> !fir.ptr<f32>
  fir.store %1 to %0 : !fir.ref<!fir.ptr<f32>>
  return
}
fir.global internal @_QEptr2 : !fir.ptr<i32> {
  %c0 = constant 0 : index
  %0 = fir.convert %c0 : (index) -> !fir.ref<none>
  %1 = fir.convert %0 : (!fir.ref<none>) -> !fir.ptr<i32>
  fir.has_value %1 : !fir.ptr<i32>
}

