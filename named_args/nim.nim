type 
  Person = ref object
    age: int
    name: string
  Sus = ref object

proc newBuilderListItemFactoryFromBytes*(scope: Person | Sus = nil;
    bytes: bool) =
  echo "sas"
  
# proc named args with =
newBuilderListItemFactoryFromBytes(scope= nil, bytes= true)
newBuilderListItemFactoryFromBytes(bytes= true)

# constructor named args with :
var sas = Person(age: 42, name: "sas")