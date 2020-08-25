func @_QQmain() {
  %0 = fir.alloca !fir.array<10xi32> {name = "aryunassign"}
  %1 = fir.alloca !fir.array<10x20x30xi32> {name = "morethanonedim"}
  %2 = fir.alloca !fir.array<10xi32> {name = "stridedaccess"}
  %c1_i64 = constant 1 : i64
  %c1_i64_0 = constant 1 : i64
  %3 = subi %c1_i64, %c1_i64_0 : i64
  %4 = fir.coordinate_of %0, %3 : (!fir.ref<!fir.array<10xi32>>, i64) -> !fir.ref<i32>
  %c2_i32 = constant 2 : i32
  fir.store %c2_i32 to %4 : !fir.ref<i32>

!part 2
  %c0 = constant 0 : index
  %c1 = constant 1 : index
  %c5_i64 = constant 5 : i64
  %5 = fir.convert %c5_i64 : (i64) -> index
  %6 = subi %5, %c1 : index
  fir.do_loop %arg0 = %c0 to %6 step %c1 {
    %c2_i32_6 = constant 2 : i32
    %c1_i64_7 = constant 1 : i64
    %c1_i64_8 = constant 1 : i64
    %11 = fir.convert %c1_i64_8 : (i64) -> index
    %12 = muli %arg0, %11 : index
    %13 = fir.convert %c1_i64_7 : (i64) -> index
    %14 = addi %13, %12 : index
    %15 = fir.coordinate_of %2, %14 : (!fir.ref<!fir.array<10xi32>>, index) -> !fir.ref<i32>
    fir.store %c2_i32_6 to %15 : !fir.ref<i32>
  }


  %c1_i64_1 = constant 1 : i64
  %c1_i64_2 = constant 1 : i64
  %7 = subi %c1_i64_1, %c1_i64_2 : i64
  %c2_i64 = constant 2 : i64
  %c1_i64_3 = constant 1 : i64
  %8 = subi %c2_i64, %c1_i64_3 : i64
  %c3_i64 = constant 3 : i64
  %c1_i64_4 = constant 1 : i64
  %9 = subi %c3_i64, %c1_i64_4 : i64
  %10 = fir.coordinate_of %1, %7, %8, %9 : (!fir.ref<!fir.array<10x20x30xi32>>, i64, i64, i64) -> !fir.ref<i32>
  %c2_i32_5 = constant 2 : i32
  fir.store %c2_i32_5 to %10 : !fir.ref<i32>
  return
}

