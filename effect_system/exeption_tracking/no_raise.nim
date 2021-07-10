proc noRaise(x: proc()) {.raises: [].} =
  # unknown call that might raise anything, but valid:
  x()

proc doRaise() {.raises: [IOError].} =
  raise newException(IOError, "IO")

proc use() {.raises: [].} =
  # doesn't compile! Can raise IOError!
  noRaise(doRaise)
