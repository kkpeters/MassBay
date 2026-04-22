# Please create a bash script that will ask the user for a folder name. It will then test if that folder exists. If it does exist it will echo back that it exists and exit the script. If it does not exist it will create the directory with that name. It will then ask the user for a file name. It will then create create version of that file name in 
# 1. all capital letters, 
# 2. another in all lowercase letters, 
# 3. and a third with the number 1 at the end.

#!/bin/bash

read -r -p "What folder would you like to check: " folder

if [ -d folder ]; then
    echo "The folder exisits!"
    exit 0
else 
    echo "The folder does not exist, creating new folder..."
    read -r -p "What file would you like to create: " file
    mkdir "$folder"
    touch "${folder}/${file^^}.txt"
    touch "${folder}/${file,,}.txt"
    touch "${folder}/${file}1.txt"
    echo "All files have now been created."
fi
