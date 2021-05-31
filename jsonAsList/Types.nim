import json

type
  Sas* = object
    name*: string
    age*: int
    # age: int

### JSON

proc sasFromString*(str: string): Sas = 
  let sasJson = parseJson(str)
  result = to(sasJson, Sas)

func sasToString*(sas: Sas): string = 
  result = $(%*sas)

when isMainModule:
  let
    sas = Sas(name: "sas", age: 42)
    jsonStrSas = sas.sasToString()
    objFromJson = jsonStrSas.sasFromString()

  echo jsonStrSas
  echo objFromJson

### MOCK

func create10Sas*: seq[Sas] = 
  for i in 0..10:
    result.add Sas(name:"sas", age: i)

func convertSeqSasToSting*(sass: seq[Sas]): seq[string] = 
  for sas in sass:
    result.add sas.sasToString()

