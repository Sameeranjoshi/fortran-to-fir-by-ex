func @_QQmain() {
  %0 = fir.alloca !fir.array<10xi32> {name = "aryunassign"}
  %1 = fir.alloca !fir.array<21xi32> {name = "lb_ub"}
  %2 = fir.alloca !fir.array<10x20x30xi32> {name = "morethanonedim"}
  %3 = fir.alloca !fir.array<10x10x10x10x10x10x10x10x10x10x10x10x10x10xf32> {name = "toobig"}
  return
}
fir.global internal @_QEaryassign : !fir.array<10xi32> {
  %0 = fir.undefined !fir.array<10xi32>
  %c1_i32 = constant 1 : i32
  %c0 = constant 0 : index
  %1 = fir.insert_value %0, %c1_i32, %c0 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c2_i32 = constant 2 : i32
  %c1 = constant 1 : index
  %2 = fir.insert_value %1, %c2_i32, %c1 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c3_i32 = constant 3 : i32
  %c2 = constant 2 : index
  %3 = fir.insert_value %2, %c3_i32, %c2 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c4_i32 = constant 4 : i32
  %c3 = constant 3 : index
  %4 = fir.insert_value %3, %c4_i32, %c3 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c5_i32 = constant 5 : i32
  %c4 = constant 4 : index
  %5 = fir.insert_value %4, %c5_i32, %c4 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c6_i32 = constant 6 : i32
  %c5 = constant 5 : index
  %6 = fir.insert_value %5, %c6_i32, %c5 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c7_i32 = constant 7 : i32
  %c6 = constant 6 : index
  %7 = fir.insert_value %6, %c7_i32, %c6 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c8_i32 = constant 8 : i32
  %c7 = constant 7 : index
  %8 = fir.insert_value %7, %c8_i32, %c7 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c9_i32 = constant 9 : i32
  %c8 = constant 8 : index
  %9 = fir.insert_value %8, %c9_i32, %c8 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c10_i32 = constant 10 : i32
  %c9 = constant 9 : index
  %10 = fir.insert_value %9, %c10_i32, %c9 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  fir.has_value %10 : !fir.array<10xi32>
}
fir.global internal @_QEaryassigndiffstyle : !fir.array<10xi32> {
  %0 = fir.undefined !fir.array<10xi32>
  %c1_i32 = constant 1 : i32
  %c0 = constant 0 : index
  %1 = fir.insert_value %0, %c1_i32, %c0 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c2_i32 = constant 2 : i32
  %c1 = constant 1 : index
  %2 = fir.insert_value %1, %c2_i32, %c1 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c3_i32 = constant 3 : i32
  %c2 = constant 2 : index
  %3 = fir.insert_value %2, %c3_i32, %c2 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c4_i32 = constant 4 : i32
  %c3 = constant 3 : index
  %4 = fir.insert_value %3, %c4_i32, %c3 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c5_i32 = constant 5 : i32
  %c4 = constant 4 : index
  %5 = fir.insert_value %4, %c5_i32, %c4 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c6_i32 = constant 6 : i32
  %c5 = constant 5 : index
  %6 = fir.insert_value %5, %c6_i32, %c5 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c7_i32 = constant 7 : i32
  %c6 = constant 6 : index
  %7 = fir.insert_value %6, %c7_i32, %c6 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c8_i32 = constant 8 : i32
  %c7 = constant 7 : index
  %8 = fir.insert_value %7, %c8_i32, %c7 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c9_i32 = constant 9 : i32
  %c8 = constant 8 : index
  %9 = fir.insert_value %8, %c9_i32, %c8 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  %c10_i32 = constant 10 : i32
  %c9 = constant 9 : index
  %10 = fir.insert_value %9, %c10_i32, %c9 : (!fir.array<10xi32>, i32, index) -> !fir.array<10xi32>
  fir.has_value %10 : !fir.array<10xi32>
}

