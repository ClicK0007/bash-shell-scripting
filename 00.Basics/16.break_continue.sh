#!/bin/bash

# Example of break and continue in a loop

echo "Example using break:"
for i in {1..5}; do
    echo "Iteration $i"
    if [ $i -eq 3 ]; then
        echo "Breaking loop at iteration $i"
        break
    fi
done

echo

echo "Example using continue:"
for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo "Skipping iteration $i"
        continue
    fi
    echo "Iteration $i"
done
