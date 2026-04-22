#!/bin/bash

# Task: Write a script that loops through all .txt files in a directory and prints the first line of each file.

allTxtFiles=$(ls *.txt)
echo $allTxtFiles
for file in $allTxtFiles;
do 
    head -n 1 $file
done
