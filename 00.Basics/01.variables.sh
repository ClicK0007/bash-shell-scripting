# variables are containers which stores data.
# variables can be categorized in two types in shell:
# System Variables - (Most of the time they are in capital) System variables are predefined variables that are provided by the shell or the system environment.
# user defined variables - (Most of the time lower case - no strict rule) 

#!/bin/bash

# User-defined variables
name="John"
age=25

# System variables
echo "Which bash is using: $BASH"        #not necessary to include in "" or ''. But if it is used then it will improve readibilty
echo 'Bash version: $BASH_VERSION'
echo Users home directory: $HOME
echo "Current working directory: $PWD" 
echo "Path: $PATH" 
echo "Username of the current user: $USER or $LOGNAME"

# Accessing user-defined variables
echo "Name: $name"
echo Age: $age

# variable name can't be start with numbers
10val = 10
echo $10val # output - Oval
