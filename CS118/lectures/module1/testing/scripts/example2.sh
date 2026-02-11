#!/bin/bash
echo "Guess my number!"
myNum=73
guesses=()
while true;
do
    read guess
    if [ $myNum -lt $guess ]; then
        echo
        echo "A little high!"
        guesses+=("$guess")
        echo "Previous guesses: ${guesses[@]}"
        echo "Guess again!"
    elif [ $myNum -gt $guess ]; then
        echo
        echo "A little low!"
        guesses+=("$guess")
        echo "Previous guesses: ${guesses[@]}"
        echo "Guess again!"
    else
        echo "You got it! My number was $myNum"
        exit
    fi
done
