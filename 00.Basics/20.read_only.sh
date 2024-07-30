var=31
readonly var

var=50

echo "var = $var" # var = 31

#---------------------------------------------------------
# Function can also be made read only

hello(){
    echo "Hello World"
}

readonly -f hello 

hello() {
    echo "Hello World Again" # warning - read only function
}

#---------------------------------------------------------
readonly # These command will list all the built-in read only variables.
readonly -f # will list all the read only function in these program
readonly -p # it is for variables.