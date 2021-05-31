import json

type
  Person* = object
    name*: string
    age*: int

func initPerson*(name: string, age: int): Person = 
  result = Person(name: name, age: age)

### JSON

proc sasFromString*(str: string): Person = 
  let sasJson = parseJson(str)
  result = to(sasJson, Person)

func personToString*(sas: Person): string = 
  result = $(%*sas)




### TESTS
when isMainModule:
  let
    sas = Person(name: "sas", age: 42)
    jsonStrSas = sas.personToString()
    objFromJson = jsonStrSas.sasFromString()

  echo jsonStrSas
  echo objFromJson

### MOCK

func create10Sas*: seq[Person] = 
  for i in 0..10:
    result.add Person(name:"sas", age: i)

func convertSeqSasToSting*(persons: seq[Person]): seq[string] = 
  for person in persons:
    result.add person.personToString()

