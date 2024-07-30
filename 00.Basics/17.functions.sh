function Hello (){
    echo "Hello"
}

Hello

#---------------------------------------------------------

quit(){ # function can be defined like these also without function written at start
    exit # to exit from console
}

# quit
echo "foo" # these will not print as we exits from console

# ------------------------------------------------------

# How to pass arguments to function

print(){
    echo $1 $2
}

print hello
print world
print hello world

#---------------------------------------------------------
