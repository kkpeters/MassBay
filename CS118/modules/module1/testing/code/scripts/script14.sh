#!/bin/bash
 
# Variables
file="/home/kris/MassBay/CS118/lectures/module1/testing/code/scripts/script14.sh"
min_size=100 # Minimum file size in bytes
 
 
# Check if file exists and has a size greater than min_size
if [ -f "$file" ] && [ $(stat -c %s "$file") -gt $min_size ]; then
  echo "The file exists and is larger than $min_size bytes."
else
  echo "The file does not exist or is smaller than $min_size bytes."
fi
 
 
# Check if file does not exist or is not writable
if [ ! -f "$file" ] || [ ! -w "$file" ]; then
  echo "The file does not exist or is not writable."
else
  echo "The file exists and is writable."
fi
 
 
# Inverting the logic using !
# user_input="no"
read user_input
if [ ! "$user_input" = "yes" ]; then
  echo "You did not say yes."
else
  echo "You said yes."
fi
