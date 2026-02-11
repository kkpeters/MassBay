#!/bin/bash
echo "Enter your name:"
# user=$(whoami)
read user
greeting="Welcome"
day=$(date +%A)
echo # blank line for readability
echo "$greeting back $user!"
echo "Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is:"
bash --version
