#!/bin/bash
echo "Select an option:"
echo "1) Show current date"
echo "2) Show logged-in user"
echo "3) Show current directory"
echo "4) Exit"
# added -r option after read (shellcheck prefers it) 
read -r -p "Enter your choice [1-4]: " choice
case $choice in
    1)
        echo "Today's date is:"
        date
        ;;
    2)
        echo "You are logged in as:"
        whoami
        ;;
    3)
        echo "Current working directory:"
        pwd
        # added ;; after pwd
        ;;
    4)
        echo "Exiting program."
        exit 0
        ;;
    *)
        echo "Invalid option. Please select a number between 1 and 4."
        ;;
# changed case to esac
esac
