import sumtypes
type AcceptedTypes = int or string


# creates varian object based on acceepted types
sumType(IntOrString, AcceptedTypes)


var a: IntOrString = 10 # Implicit converter

case a: # Custom case statement that works with types
of int:
  echo it # Unpacking of the type in a case statement
else: # Works for remaining types
  discard

a.unpack: # Unpacks it and runs the body on all kinds
  echo it 

a.unpack(someName): # Unpacks it as `someName`
  echo someName

a = "sas" # Implicit converter