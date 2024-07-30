#!/bin/bash

# Prompt the user to enter their age
echo "Enter your age:"
read age

# Check if the age is within the range of 18 to 60
if [[ "$age" -ge 18 || "$age" -le 60 ]]; then

# or          if [ "$age" -ge 18 ] || [ "$age" -le 60 ]; then
# or          if [ "$age" -ge 18 -o "$age" -le 60 ]; then

    echo "Your age is between 18 or 60."
else
    echo "Your age is not between 18 or 60."
fi
