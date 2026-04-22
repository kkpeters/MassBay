#!/bin/bash

current=$(pwd)
directories=$(ls -d $current/*/)
mkdir backup
# echo $directories
for dir in $directories;
do 
    dir_name=$(basename $dir)
    # echo $dir_name
    cp -r $dir_name backup/$dir_name
done
