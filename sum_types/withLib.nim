import sumtypes
type AcceptedTypes = int or string



sumType(IntOrString, AcceptedTypes)


var a: IntOrString = 10 

case a: 
of int:
  echo it # unpack
else: 
  discard

a.unpack: # Unpacks it and runs the body on all kinds
  echo it 

a.unpack(someName): # Unpacks it as `someName`
  echo someName

a = "sas" # Implicit converter

### Seq
sumTypeSeq(IntOrStringSeq, AcceptedTypes)

var yourSeq: IntOrStringSeq
yourSeq.add 100
yourSeq.add "sas"

assert yourSeq.toSeq(string) == @["sas"] # `toSeq` will return a new seq of the type queried.
yourSeq.drop(string) # This will remove all instances of the `float` variant from the list.
yourSeq.filter(int) # This will remove all other types other than `int`
assert yourSeq.len == 1

yourSeq[0] = 100 # Assigns `0` to a new variant with value 100.

yourSeq[0] = initIntOrStringSeqEntry(100) # The above is the same as doing this, makes new variant and assigns it.

unpack(yourSeq.pop): # Removes the last element, passing `it` into the body.
  echo it
assert yourSeq.len == 0

