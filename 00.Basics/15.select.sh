#!/bin/bash
  
select name in mark john tom ben
do 
    echo "$name selected"
done

#---------------------------------------------------------

# Define a list of options
options=("Option 1" "Option 2" "Option 3" "Quit")

# Prompt the user to select an option
PS3="Select an option: "
select choice in "${options[@]}"; do
    case $choice in
        "Option 1")
            echo "You chose Option 1"
            ;;
        "Option 2")
            echo "You chose Option 2"
            ;;
        "Option 3")
            echo "You chose Option 3"
            ;;
        "Quit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
