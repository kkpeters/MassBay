#!/bin/bash

files=$(ls -ah *.txt)
for file in $files;
do 
    file_name=$(basename $file .txt)
    echo $file_name
    mv "$file" "${file_name}1.txt"
done
