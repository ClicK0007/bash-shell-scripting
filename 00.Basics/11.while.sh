n=1
while [ $n -le 10 ] #SPACE between [ ] is neccessary
do
    echo "$n"
    n=$(( n+1 ))
done

#-------------------------------------------------------------

#!/bin/bash

# Initialize a counter variable
counter=1

# Loop while the counter is less than or equal to 5
while [ $counter ]
do
    echo "Count: $counter"
    ((counter++))  # Increment the counter
    sleep 1 # To stop execution for 1 sec
done

echo "Loop finished"

# ------------------------------------------------

# To open terminal

n=1
while [ $n -le 3 ] #Three terminals will be open
do
    echo "$n"
    $(( n++ ))
    gnome-terminal & # To open terminal
done


