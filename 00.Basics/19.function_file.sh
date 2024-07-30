usage() {
    echo "You need to provide an argument : "
    echo "usage : $0 file_name"
}

is_file_exist() {
    local file="$1" # argument provided to function
    [[ -f "$file" ]] && return 0 || return 1
}
# true && return_0_will_execute || return_1_will_not_execute 
# false && return_0_will_not_execute || return_1_will_execute 
# return 0 means success 
# other than return 0 means failure

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" ) # return 0 means success so file found will execute
then
    echo "File found"
else
    echo "File not found"
fi

# If the return value is 0 (success), the then block executes, indicating the file exists.
# If the return value is non-zero (failure), the else block executes, indicating the file doesn't exist.