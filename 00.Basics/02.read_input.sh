# Reading a single input from the user
echo "Enter name:"
read name
echo "Name: $name"

# Reading multiple inputs from the user
echo "Enter names (space-separated):"
read name1 name2 name3
echo "Names: $name1 $name2 $name3"

# Reading input on the same line
read -p "Enter username: " user_val
echo "Username: $user_val"

# If password has to be read and not have to be shown 
read -sp "Enter password: " user_password  # input will be silent not shown on cmd
echo # to be on next line
echo "Password: $user_password"

echo "Enter name: "
read                    # if no variable is provided after read then it stores value in default variable i.e. REPLY
echo "Name : $REPLY"