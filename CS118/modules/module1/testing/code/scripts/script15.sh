#!/bin/bash
# Define a function to display a greeting message
function greet {
    echo "Hello, $1 $2! Welcome to the bash scripting world."
}
 
# Main script starts here
echo "Please enter your first name:"
read name
echo "Please enter your last name:"
read lastName
 
# Call the greet function with the user's input as an argument
greet "$name $lastName"
