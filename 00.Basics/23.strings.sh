myVar="Hey Buddy, how are you?"

myVarLength=${#myVar}
echo "Length of the myVar is $myVarLength"

echo "upper case is ------ ${myVar^^}"
echo "lower case is ------ ${myVar,,}"

#To replace the string
newVar=${myVar/Buddy/Paul}
echo "New var is ------ $newVar"

# To slice a string
echo "After slice ${myVar:4:5}" # from 4th char slice 5 next char.
#output- Buddy