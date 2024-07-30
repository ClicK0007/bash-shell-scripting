#bash support simple 1D array
# Declaration
array1=( apple banana "hey cherry!" )
declare -a array2=(1 2 3 4 5)

# To add or update. In bash element can be add at any index. Printing will be done in order
array1[3]='watermelon'
array2+=(6 7 8)

#To remove element
unset array1[3]

# Accessing Elements
echo "First element of array1: ${array1[0]}"
echo "Second element of array2: ${array2[1]}"
echo "Elements are: ${array1[@]}" # to print all elements
echo "Elements are: ${array2[*]}" # to print all elements
echo "Index are: ${!array1[@]}" # to print index

# Array Length
echo "Length of array1: ${#array1[@]}"
echo "Length of array2: ${#array2[@]}"

# Iterating Over Array
echo "Elements of array1:"
for element in "${array1[@]}"; do
    echo "$element"
done



echo "Enter Names: "
read -a names
echo "Names : ${names[0]}, ${names[1]}"

#strings can also be in array but it is add at 0 index only.
string=dafhgaoh
echo "${string[@]}" #output - dafhgaoh
echo "${string[0]}" #output - dafhgaoh
echo "${string[1]}" #output - (output is nothing as nothing at index 1)
echo "${#string[@]}" #output - 1

#-----------------------------------------
# key value pair
declare -A myArray
myArray=( [name]=Tom [age]=33 [city]=Paris )
echo "Name is ${myArray[name]}" 
echo "Age is ${myArray[age]}" 