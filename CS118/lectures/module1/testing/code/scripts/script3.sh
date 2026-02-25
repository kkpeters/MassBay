#!/bin/bash
echo "File Name: $0" # Positional variable, gives us the name
echo "First Argument: $1"
echo "Second Argument: $2"
echo "Quoted Values: $@" # @ represent an array, all the argumnets we give the script, we can use this to run any code we write in this file
echo "Quoted Values: $*" # everything that we passed in as arguments
echo "Total Number of Arguments: $#"
echo "Error code: $?"
exit 10 # edits the exit code, only shows up after you run the script and type echo $?
# when we come out of a script, $?, exit state, 0 is clean, error number otherwise

# The $ character represents the process ID number, or PID, of the current shell Ã¢Ë†â€™
# $echo $$
# The above command writes the PID of the current shell
 
# The following shows a number of special variables that you can use in your shell scripts
# $0
# The filename of the current script.
 
# $n
# These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is 
# $1, the second argument is $2, and so on).
 
# $?
# Will display the exit code on the script.
 
# $#
# The number of arguments supplied to a script.
 	
# $*
# All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
 	
# $@
# All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
 	
# $?
# The exit status of the last command executed.
 	
# $$
# The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
 	
# $!
# The process number of the last background command.
