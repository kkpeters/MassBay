#!/bin/bash
echo "Select an option:"
echo "1) Show current date"
echo "2) Show logged-in user"
echo "3) Show current directory"
echo "4) Exit"
# corrected spelling of choice
read -p "Enter your choice [1-4]: " choice
if [ "$choice" -eq 1 ]; then
    echo "Today's date is:"
    date
elif [ "$choice" -eq 2 ]; then
    echo "You are logged in as:"
    whoami
elif [ "$choice" -eq 3 ]; then
    echo "Current working directory:"
    pwd
elif [ "$choice" -eq 4 ]; then
    echo "Exiting program."
    exit 0
else
    echo "Invalid option. Please select a number between 1 and 4."
# added fi to close if statement
fi 
