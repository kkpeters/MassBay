#!/bin/bash
 
# Specify the file or directory to check
file="/etc/shadow"
directory="/etc"
 
 
# Check if the file exists
if [ -e "$file" ]; then
    echo "The file exists."
else
    echo "The file does not exist."
fi
 
 
# Check if the file is a regular file
if [ -f "$file" ]; then
    echo "This is a regular file."
else
    echo "This is not a regular file."
fi
 
 
# Check if the directory exists and is indeed a directory
if [ -d "$directory" ]; then
    echo "This is a directory."
else
    echo "This is not a directory."
fi
 
 
# Check if the file has read permission
if [ -r "$file" ]; then
    echo "The file has read permission."
else
    echo "The file does not have read permission."
fi
 
 
# Check if the file has write permission
if [ -w "$file" ]; then
    echo "The file has write permission."
else
    echo "The file does not have write permission."
fi
 
 
# Check if the file has execute permission
if [ -x "$file" ]; then
    echo "The file has execute permission."
else
    echo "The file does not have execute permission."
fi
 
