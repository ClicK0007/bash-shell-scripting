# By default every variable we declare is global variable

print() {
    name=$1 # these is also a global variable
    echo "name=$name" # output - name=Name_pass_as_argument
}

name="name_just_declared" #these will ignored

print Name_pass_as_argument # as these statement will update the name value

echo $name # output - Name_pass_as_argument

#---------------------------------------------------------------------

print() {
    local name=$1 # these is also a local variable
    echo "name=$name" # output - name=Name_pass_as_argument
}

name="name_just_declared" #these will ignored

print Name_pass_as_argument 

echo $name # output - name_just_declared