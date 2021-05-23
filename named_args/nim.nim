type 
  Sas = ref object
    age: int
    name: string
  Sus = ref object

proc newBuilderListItemFactoryFromBytes*(scope: Sas | Sus = nil;
    bytes: bool) =
  echo "sas"
  
# proc named args with =
newBuilderListItemFactoryFromBytes(scope= nil, bytes= true)
newBuilderListItemFactoryFromBytes(bytes= true)

# constructor named args with :
var sas = Sas(age: 42, name: "sas")