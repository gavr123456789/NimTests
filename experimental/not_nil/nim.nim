import sugar
{.experimental: "notnil"}

type
  TObj = ref object not nil
  PObject = ref TObj not nil

  TProc = (proc (x, y: int)) not nil

proc p(x: PObject) =
  echo "not nil"
  dump x == nil

# compiler catches this:
# p(nil)

# and also this:
var x: PObject
p(x)