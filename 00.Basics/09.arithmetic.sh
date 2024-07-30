# use 'man bc' command to know about bc command.

echo 1+1  #output - 1+1

num1=20 #No SPACE in between
num2=5

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

#or
echo

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 ) # for multiplication use escape character \
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

# if we try to perform FLOAT operation using above operation then it will show errors
# for floating point use 'bc' command bc-basic calculator
echo

n1=20.5
n2=5

echo "$n1+$n2" | bc 
echo "20.5-5" | bc
echo "$n1 * $n2" | bc
echo "scale=2; $n1 / $n2" | bc  #scale to tell how many number after decimal point
echo "20.5%5" | bc

num=4

echo "scale=2; sqrt($num)" | bc -l
echo "3^3" | bc -l