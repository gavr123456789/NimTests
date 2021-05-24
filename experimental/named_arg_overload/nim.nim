proc foo(x: int) =
  echo "Using x: ", x
proc foo(y: int) =
  echo "Using y: ", y

foo(x = 2)
# Using x: 2
foo(y = 2)
# Using y: 2
# foo(5) ERRROR