#!/bin/bash

# Create a script: The script must do the following two things.
# Use the tar command
# Backup all the contents of a users home directory to a single file in /tmp

# tar -cvf archive.tar file1 file2
echo "Beginning back up now..."
echo ""
user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
tar -czf "$output" "$input" 2> /dev/null
echo "Finished back up!"
