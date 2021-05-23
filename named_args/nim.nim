type 
  Sas = ref object
  Sus = ref object

proc newBuilderListItemFactoryFromBytes*(scope: Sas | Sus = nil;
    bytes: bool) =
  echo "sas"
  

newBuilderListItemFactoryFromBytes(scope= nil, bytes= true)
newBuilderListItemFactoryFromBytes(bytes= true)