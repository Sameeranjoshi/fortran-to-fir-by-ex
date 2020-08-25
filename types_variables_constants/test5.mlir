func @_QQmain() {
  return
}
fir.global internal @_QEfixstring("Ok go") : !fir.array<5x!fir.char<1>>
fir.global internal @_QEotherstring("O\00\00\00k\00\00\00 \00\00\00g\00\00\00o\00\00\00o\00\00\00g\00\00\00l\00\00\00e\00\00\00 \00\00\00") : !fir.array<10x!fir.char<4>>
fir.global internal @_QEsomestr("O") : !fir.array<1x!fir.char<1>>

