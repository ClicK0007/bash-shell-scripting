# let is used to know that it is arithmetic operation.
x=10
y=2

mul=$x*$y # output - 10*2
echo $mul

let mul=$x*$y # these will treated as arithmetic operation not as string
echo "$mul"

#-------------------------------------------------------
# To do arithmetic operation do operation in between $(( ))
echo "substraction is $(( $x-$y ))"
