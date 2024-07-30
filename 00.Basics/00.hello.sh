# shell scripts intrepreted not compiled 
# there are different types of shell we will be learning bash shell

# A shell is a command-line interface or scripting environment that lets users interact with an operating system by typing 
# commands or executing scripts to perform tasks like file manipulation, program execution, and system configuration.

# Types-
# bash
# sh
# ksh
# tsh 
# fish
# zsh

# to know default shell, use command "echo $0"


# Bash (Bourne Again Shell) and sh (Bourne Shell) are both Unix shell interpreters, but they have some differences:
# Features: Bash is an extended version of sh and includes additional features for interactive use and scripting. It provides command-line editing, history expansion, job control, and other conveniences not found in the original Bourne shell.
# Compatibility: Bash is backward-compatible with sh, meaning that most sh scripts can be run with Bash without modification. However, the reverse is not necessarily true, as Bash includes features that are not available in sh.
# Default Shell: On many Unix-like operating systems, including Linux distributions and macOS, /bin/sh is typically symlinked to Bash. This means that when you invoke /bin/sh, you are actually using Bash. However, some systems may use a different shell for /bin/sh, such as Dash (Debian Almquist Shell), which aims to be lightweight and efficient.
# Portability: While Bash is widely available on various Unix-like systems and is the default shell for many, sh is a more basic shell that is typically used for scripting in a more portable manner. Writing scripts that adhere to the POSIX standard (Portable Operating System Interface) ensures compatibility across different Unix-like systems.

# To know the location of bash use command : which bash

# when file is created using touch command, the file is in read mode for user
# "-rw-rw-r--" --> - indicates type of file here hyphen (-) means regular file.
# First Three Characters (rw-): Owner's permissions. The owner of the file has read and write permissions but does not have execute permission.
# Second Three Characters (rw-): Group's permissions. Users who belong to the file's group have read and write permissions but do not have execute permission.
# Third Three Characters (r--): Others' permissions. All other users have only read permission for this file and do not have write or execute permissions.
# use "chmod +x __file_name__" to make the file read write and executable. chmode means change mode.
# +x means give permission and -x to remove permission.

#! /usr/bin/bash  #! pronouce as SHEBANG // not neccesary but it tells that the file written is in bash.
echo "hello world"

#### In bash 
var=10 # DON'T GIVE SPACE
if (( )) # GIVE SPACE BETWEEN THESE BRACKETS
# ; semicolon is used to add two commands.

# This is a single line comment
<<comment
This 
is 
multiline 
line 
comments
comment
