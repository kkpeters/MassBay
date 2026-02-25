#!/bin/bash
while read line
do
    echo $line
done < input.txt # will keep reading lines, so we need to tell it to stop when there are no more lines, if you take it out, then it will keep going
