#!/bin/bash
# Function to display the current date
show_date() {
    echo "Today's date is:"
    date
    # alternatively can be displayed as:
    # echo "Today's date is: $(date)"
}
 
# Function to display the current user
show_user() {
    echo "You are logged in as:"
    # removed spaced between who, am, and i
    whoami
    # alternatively can be displayed as:
    # echo "You are logged in as: $(whoami)"
}
 
# Function to display a greeting
greet_user() {
    echo "Welcome to the Bash function demo!"
}
 
# Main script execution starts here
# dont need $ in front of function call
greet_user
echo ""
show_date
echo ""
show_user
