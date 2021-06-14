type
  IntOrStringKind = enum Int, String
  IntOrString = object
    case kind: IntOrStringKind
    of Int: intVal: int
    of String: strVal: string
  

var x: seq[IntOrString]
x = @[IntOrString(kind: Int, intVal: 42), IntOrString(kind: String, strVal: "Hello world")]
echo x # @[(kind: Int, intVal: 42), (kind: String, strVal: "Hello world")]