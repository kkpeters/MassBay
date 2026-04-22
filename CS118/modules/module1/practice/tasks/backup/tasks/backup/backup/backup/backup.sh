#!/bin/bash

directories=$(ls)
for dir in $directories;
do 
    cp -r $dir backup/$dir
done
