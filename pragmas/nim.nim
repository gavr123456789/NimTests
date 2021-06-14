
proc qwe: void =
  let x = 4 + 5

proc sas(): string {.noInit.}=
  qwe()

  

echo sas()

###




type
  Sas {.requiresinit.} = object 
    name : string

var fgh = Sas()

