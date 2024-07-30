#!/bin/bash

# Iterate over a sequence of values
for i in 1 2 3 4 5; do
    echo "Number: $i"
done
echo

# Iterate in range
for i in {1..10}; do
    echo "Number: $i"
done
echo

# Iterate in range with incrementation of 2 for example. Available in above 4 bash versions
for i in {1..10..2}; do # {start..end..increment}
    echo "Number: $i" 
done
echo

# Normal programming
for (( i=0; i<5; i++ )); do
    echo "Number: $i"
done
echo

# for loop with command
for command in ls pwd date; do
    echo "Name of command: $command"
    $command # To execute the command
done

