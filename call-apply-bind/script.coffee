# 
# Call
# 
myObj = {num: 5}
myObj2 = {num: 10}

applyTo = (a, b, c) ->
    console.log this.num + a + b + c
    
# Missing the object
applyTo(1, 2, 3)

# Pass the object and the argument
applyTo.call(myObj, 1, 2, 3) #functionname.call(obj, functionarguments)

# 
# Apply
# 
myArray = [5,6,7] # Apply (Passing arguments as Arrays)
applyTo.apply(myObj, myArray)
applyTo.apply(myObj2, myArray)

#
# Bind 
#
bindFn = applyTo.bind(myObj)
bindFn(1,2,3)