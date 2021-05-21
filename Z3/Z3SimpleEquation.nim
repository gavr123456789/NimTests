# yay -S z3
# nimble install z3
import z3

### 1
echo 1
z3:
  let x = Int("x")
  let y = Int("y")
  let z = Int("z")
  let s = Solver()
  s.assert 3 * x + 2 * y - z == 1
  s.assert 2 * x - 2 * y + 4 * z == -2
  s.assert x * -1 + y / 2 - z == 0
  s.check_model:
    echo model

### 2
echo 2
z3:
  let s = Solver()
  
  let i1 = Int("i1")
  let i2 = Int("i2")
  let b = Bool("b")
  let f1 = Float("f1")
  
  s.assert b == (i1 * i2 == 25) and (i1 + i2) == 10
  s.assert b and (f1 == 3.0)
  
  s.check_model:
    echo model