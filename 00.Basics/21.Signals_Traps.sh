# "man 7 signal" to know about signal.
# "PID" stands for "Process IDentifier." It's a unique identification number assigned to each process running on a computer system. 
# $$ is used to print pid
# In shell scripting, signals are notifications sent to a process to indicate events such as the termination of a process, user interruptions, or system events. 
# The trap command is used to intercept/catch and handle these signals within a shell script.

echo "pid is $$"
while (( COUNT < 10 ))
do 
    sleep 10
    (( COUNT ++ ))
    echo $COUNT
done
exit 0

## Interrupt signals

# when user use "CTRL+C" it gives signal then script will get terminated.
# CTRL+C means SIGINT command and its value is 2

# when user use "CTRL+Z" it gives suspend signal
# In signal command, CTRL+Z means SIGTSTP command and its value is 18, 20, 24

# when user use "kill -9 _pid_no._" it gives kill signal
# In signal command, kill command is SIGKILL command and its value is 9.

#---------------------------------------------------------

## Trap command is used to catch interrupt

trap "echo Exit signal is detected" SIGINT      # or its value 2.
# when SIGINT command executed. The command inside " " exected. here echo command will executed.

echo "pid is $$"
while (( COUNT < 10 ))
do 
    sleep 10 
    (( COUNT ++ ))
    echo $COUNT
done
exit 0

# when user enter CTRL+C then the command in trap " " will execute but the process will not get terminated.
# in these there are exception, SIGKILL and SIGSTOP command will not get terminated in trap.

#---------------------------------------------------------

# Program to delete file when interrupt happens.

file=/home/click/Documents/shell/00.Basics/file_to_be_deleted.txt
trap "rm -f $file && echo file deleted; exit" 0 2 15           # rm -f for forced deletion.
# 0 is a success signal.

echo "pid is $$"
while (( COUNT < 10 ))
do 
    sleep 10 
    (( COUNT ++ ))
    echo $COUNT
done
exit 0


## in terminal, use command "trap" to know the traps.
# To remove trap, use command "trap -_value_of_signal_"