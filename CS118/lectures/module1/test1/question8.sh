#!/bin/bash

# Create a script: The script must do the following two things.
# The script should prompt the user for the names of a directory and a file.
# It should create the directory, then create the file in it.

# asking the user for the names
read -r -p "Give me the name of a directory: " dir_name
read -r -p "Give me the name of a file: " file_name

# we are assuming that the directory does not exist
mkdir $dir_name 
touch $dir_name/$file_name
