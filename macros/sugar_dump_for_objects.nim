# usual dump
import sugar
type SomeType = object 
  str: string
  num: int

var x, y = SomeType()
dump x # x = (str: "", num: 0)

y.num = 40; x.num = 2


dump y.num + x.num # y.num + x.num = 42

# dump y.num, x.num not compiles

# same but with varargs
import macros

macro debug*(n: varargs[typed]): untyped =
  result = newNimNode(nnkStmtList, n)
  for i in 0..n.len-1:
    if n[i].kind == nnkStrLit:
      # pure string literals are written directly
      result.add(newCall("write", newIdentNode("stdout"), n[i]))
    else:
      # other expressions are written in <expression>: <value> syntax
      result.add(newCall("write", newIdentNode("stdout"), toStrLit(n[i])))
      result.add(newCall("write", newIdentNode("stdout"), newStrLitNode(" = ")))
      result.add(newCall("write", newIdentNode("stdout"), n[i]))
    if i != n.len-1:
      # separate by ", "
      result.add(newCall("write", newIdentNode("stdout"), newStrLitNode(", ")))
    else:
      # add newline
      result.add(newCall("writeLine", newIdentNode("stdout"), newStrLitNode("")))

debug x
debug y.num + x.num
debug y.num, x.num