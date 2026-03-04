#!/bin/bash

# Create a script: The script must do the following two things.
# Please create a bash script that will ask the user for a folder name. 
# It will then test if that folder exists. 
# If it exists, it will echo that it exists and exit the script. 
# If it does not exist, it will create the directory with that name.

read -r -p "Please give me the name of a folder: " folder_name
# testing if the folder exists
if [ -d $folder_name ]; then
    # if it exists, then echo and exit 
    echo "A folder with that name exists!"
    exit 0
else
    # does not exist, create dir with that name
    mkdir $folder_name
fi
