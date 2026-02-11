#!/bin/bash
file_path="/tmp/special_file"
 
echo "Waiting for $file_path to be created..."
 
until [ -f "$file_path" ]; do # -f checks if it is a file
  sleep 1
done
 
echo "$file_path exists. Proceeding with the script..."
 
