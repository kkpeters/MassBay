#!/bin/bash
echo "Guess my number! Type "GU" to Give Up."
myNum=$RANDOM
guesses=()
while true;
do
    read guess
    if [ $guess = "GU" ]; then
        echo "Nice try! My number was $myNum"
        exit
    fi
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
