#!/bin/bash
 
 
# Ask for the user's name
echo "What is your name?"
read name
 
 
# Check if the name string is empty
if [ -z "$name" ]; then
  echo "You didn't enter your name."
else
  echo "Hello, $name!"
fi
 
 
# Ask for a greeting message
echo "Please enter a greeting message:"
read greeting
 
 
# Check if the greeting message is not empty
if [ -n "$greeting" ]; then
  echo "Your greeting message is: $greeting"
else
  echo "You didn't enter a greeting message."
fi
 
 
# Predefined greeting for comparison
expected_greeting="Howdy"
 
 
# Compare the entered greeting with the expected greeting
if [ "$greeting" = "$expected_greeting" ]; then
  echo "Your greeting matches the expected greeting."
else
  echo "Your greeting does not match the expected greeting."
fi
 
