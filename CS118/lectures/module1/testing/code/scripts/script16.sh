#!/bin/bash
 
 
# Define an array
fruits=("Apple" "Banana" "Cherry" "Date" "Elderberry")
 
 
# Display the entire array
echo "All fruits in the array: ${fruits[@]}"
 
 
# Display the length of the array
echo "The number of fruits in the array: ${#fruits[@]}"

# Adding to the array
# NOTE: if i set 5 to 8 instead, the array would expand to put mango at index 8, and fill the rest of the spaces with nulls
fruits[5]="Mango"

# Removing from the array
unset fruits[2] 
 
# Display each element using a loop
echo "List of fruits:"
for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done
 
 
# Access an element by index
echo "The first fruit in the array: ${fruits[0]}"
echo "The last fruit in the array: ${fruits[-1]}"
 
 
