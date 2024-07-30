# to add arguments: ./variables.sh arg1 arg2 arg3

#!/bin/bash

echo "Script name: $0"       # $0 represents the script name itself
echo "First argument: $1"    # $1, $2, ... represent the command-line arguments
echo "Second argument: $2"   # Use "$@" to represent all command-line arguments
echo "Number of arguments: $#"  # $# represents the number of arguments passed
echo "Exit status of last command: $?"  # $? represents the exit status of the last command

# Store all command-line arguments in an array named 'args'
args=("$@") # if SPACE is given then syntactical error

# Print each argument using array indexing
echo "Arguments stored in an array:"
echo "First argument: ${args[0]}"
echo "Second argument: ${args[1]}"
echo "Third argument: ${args[2]}"

# Alternatively, you can print all arguments using "$@"
echo "All arguments: $@"
