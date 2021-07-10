
type MyException* = object of Exception
if(1 == 1):
    raise MyException.newException("This Exception is mine!! Get your own!")
    #OR raise newException(MyException, "This Exception is mine!! Get your own!")

### raice with custom text
raise newException(IOError, "This is IO speaking, Er Yes you can!")
