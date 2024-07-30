while read p # p is a variable in which content will be saved line by line
do
    echo $p # printing content in p
done < 12.file_using_while.sh  # '<' - input redirection. file contains goes in < while loop

# -------------------------------------------------------

cat 12.file_using_while.sh | while read p   # whatever read by cat will be input for while loop
do 
    echo $p
done

# --------------------------------------------------------

# Problem with above methods is that sometimes it will not able to read special characters and indentation

#!/bin/bash

# While loop to read each line from the file
# IFS= sets the Internal Field Separator to nothing, preserving leading and trailing whitespace
# -r prevents backslash escapes from being interpreted
while IFS='' read -r line; do # we giving ' ' SPACE as input to IFS not read.
    echo $line  # Print each line
done < 12.file_using_while.sh  
