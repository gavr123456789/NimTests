
from strutils import parseInt

try:
    var x = parseInt("133a")

except ValueError as e:
    echo "We made an error: ", e.msg #We made an error: invalid integer: 133a

    #For when we don't use 'as e'
    var error = getCurrentException() 
    echo error.msg #invalid integer: 133a

    #If we're in a hurry
    echo getCurrentExceptionMsg() #invalid integer: 133a

finally:
    echo "I will get executed regardless of an error" 
