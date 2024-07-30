# Numerical Comparisons:
# -eq: Equal to
# -ne: Not equal to
# -lt: Less than
# -le: Less than or equal to
# -gt: Greater than
# -ge: Greater than or equal to

# String Comparisons:
# =: Equal to
# !=: Not equal to
# <: Less than (based on ASCII alphabetical order)
# >: Greater than (based on ASCII alphabetical order)
# -z: Checks if a string is empty

# Arithmetic Comparisons (within double parentheses (( ))):
# ==: Equal to
# !=: Not equal to
# <: Less than
# <=: Less than or equal to
# >: Greater than
# >=: Greater than or equal to



#!/bin/bash

# Prompt the user to enter their age
echo "Enter your age: "
read age

# Check the age and provide a message based on the condition
if [ "$age" -lt 18 ]     # or if [ "$age" -lt 18 ]; then     
then
    echo "You are a minor."
elif [ "$age" -ge 18 ] && [ "$age" -lt 65 ]; then
    echo "You are an adult."
else
    echo "You are a senior citizen."
fi # end of if else

# ------------------------------------------------------------------------------------------------------

#!/bin/bash

# Prompt the user to enter their age
echo "Please enter your age:"
read age

# Check if the age is less than 18 using arithmetic comparison within double parentheses
if ((age < 18)); then
    echo "You are a minor."
elif ((age >= 18 && age <= 65)); then
    echo "You are an adult."
else
    echo "You are a senior citizen."
fi

# ------------------------------------------------------------------------------------------------------


#!/bin/bash

# Prompt the user to enter their favorite color
echo "What is your favorite color?"
read color

# Check if the color is "blue" using string comparison
if [ "$color" == "blue" ]; then
    echo "Blue is a nice color!"
elif [ "$color" == "red" ]; then
    echo "Red is also a great choice!"
else
    echo "That's an interesting color."
fi

# ------------------------------------------------------------------------------------------------------

#!/bin/bash

# Prompt the user to enter two characters
echo "Enter the first character:"
read char1

echo "Enter the second character:"
read char2

# Compare the characters based on their ASCII values
if [[ "$char1" < "$char2" ]]; then
    echo "$char1 comes before $char2 in ASCII order."
elif [[ "$char1" > "$char2" ]]; then
    echo "$char1 comes after $char2 in ASCII order."
else
    echo "Both characters are the same in ASCII order."
fi

