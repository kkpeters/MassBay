#!/bin/bash

directories=$(ls -f)
for dir in $directories;
do 
    cp -r $dir backup/$dir
done
