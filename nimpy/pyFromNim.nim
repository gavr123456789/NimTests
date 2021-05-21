import nimpy
import std/with

let os = pyImport("os")
echo "Current dir is: ", os.getcwd().to(string)

# sum(range(1, 5))
let py = pyBuiltinsModule()
# with py:
  
echo py.range(0, 5).sum().to(int)

let s = py.sum(py.range(0, 5)).to(int)
# assert s == 10
# echo s