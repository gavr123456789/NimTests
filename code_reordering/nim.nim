{.experimental: "codeReordering".}

foo(10)

proc foo(x: int) =
  bar(x)

proc bar(x: int) =
  echo(x)
