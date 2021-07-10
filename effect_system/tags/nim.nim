type IO = object ## input/output effect
proc readLine(): string {.tags: [IO].} = discard

proc no_IO_please() {.tags: [].} =
  # the compiler prevents this:
  let x = readLine()

no_IO_please()