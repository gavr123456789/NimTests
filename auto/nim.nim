proc `+`(a, b: string): string =
  result = a & b
  

# proc sas(a, b, c: auto) =
#   echo a + b + c
  
# sas "a", "b", "c"
# sas 5, 1, 7
var a = @[5,6,7]
echo a[1]
echo a.`[]`(1)

