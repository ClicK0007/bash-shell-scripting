# if the condition is false then the commands in loop will execute

#!/bin/bash

# Initialize a variable
counter=0

# Loop until the counter is greater than or equal to 5
until [ $counter -ge 5 ]; do
    echo "Counter is $counter"
    ((counter++))  # Increment the counter
done
