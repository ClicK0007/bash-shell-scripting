vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * )
        echo "unknown vehicle" ;;
esac

#-----------------------------------------------------------

#!/bin/bash

# Prompt the user to enter a day of the week
echo "Enter a day of the week:"
read day

# Check the input using a case statement
case "$day" in
    "Monday")
        echo "It's the first day of the week."
        ;;
    "Tuesday" | "Wednesday" | "Thursday")
        echo "It's a weekday."
        ;;
    "Friday")
        echo "TGIF! It's Friday!"
        ;;
    "Saturday" | "Sunday")
        echo "It's the weekend."
        ;;
    *)
        echo "Invalid input. Please enter a valid day of the week."
        ;;
esac

# ---------------------------------------------------------

echo -e "Enter some character : \c"
read value

case $value in
    [a-z] )
        echo "user entered $value a to z"
        ;;
    [A-Z] )
        echo "user entered $value A to Z"
        ;;
    [0-9] )
        echo "user entered $value 0 to 9"
        ;;
    ? )
        echo "user entered $value special character"
        ;;
    * )
        echo "unknown input"
        ;;
esac

# if not getting proper output use command "LANG=C" 
# LANG environment variavle indicates the language/locale and 
# encoding, where "C" is the language setting.