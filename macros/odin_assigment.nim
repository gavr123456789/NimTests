template `:=`(a, b: untyped) =
  var a = b
# cant create ::
template `:::`(a, b: untyped) =
  const a = b

template `^`(a, b: untyped) =
  const a = b

sas := "sas!"
echo sas

x ::: proc (a: string): string = a & " sas!"
echo x("foo")