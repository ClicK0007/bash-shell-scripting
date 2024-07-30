# -e: Checks whether a file or directory exists.
# -f: Specifically checks whether a file exists.
# -d: Checks whether a directory exists.
# -c: Checks whether a file is a character device.
# -s: Checks whether a file is not empty (has a non-zero size).
# -b: Checks whether a file is a block device.
# -r: Checks whether a file has read permission.
# -w: Checks whether a file has write permission.
# -x: Checks whether a file has execute permission.


echo -e "Enter file name: \c"  
# Use \c to keep the input prompt on the same line.
# The -e option is used to enable interpretation of backslash escapes like \c.

read file_name

if [ -e "$file_name" ]; then    # enter SPACE between [  ] to reduce errors. 
    echo "File Found."
else
    echo "File not found."
fi