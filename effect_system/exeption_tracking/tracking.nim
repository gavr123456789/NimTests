proc p(what: bool) {.raises: [IOError].} =
  if what: 
    raise newException(IOError, "It won't compile") #ERROR

p(true) 


