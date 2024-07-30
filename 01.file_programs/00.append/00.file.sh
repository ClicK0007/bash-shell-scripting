# Program to append text in current file

echo -e "Enter file name: \c"
read -r file_name 
# The -r is "raw." When used with read, it prevents backslashes (\) from being interpreted as escape characters. allowing you to read input exactly as it is entered by the user.

if [ -e "$file_name" ]; then
    if [ -w "$file_name" ]; then
        echo "Type some data. To quite press ctrl+d."
        cat >> $file_name # '>>' is used to append. '>' is used to overwritten.
    else
        echo "Write permission is not available."
    fi
else
    echo "File not exists."
fi