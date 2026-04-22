#!/bin/bash

# Create a script: The script must do the following two things.
# The script will ask the user for a noun, a verb, and an adjective.
# Please then use these variables in a funny story that will be written to a file called 'madlib'.

# taking in user input using read
read -r -p "Give me a noun: " noun
read -r -p "Give me a verb in the past tense: " verb
read -r -p "Give me an adjective ending with -ly: " adjective

# writing the output to madlib, and if the script is run again, the previous attempt is overwritten
echo "The $noun was late for work, so he $adjective $verb as fast as possible." > madlib
