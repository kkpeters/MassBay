#!/bin/bash
echo "Welcome to the Script"
echo "================================================="
echo "Options:"
echo ""
echo "Press 1 for Hello"
echo "Press 2 to see the files in this directory."
echo "Press 3 for Aloha"
echo "Press 4 for Toodaloo"
echo "Press 5 for Konnichiwa"
echo "================================================="
echo ":Enter your choice:"
read input
if [ $input = 1 ]; then
    echo "Hello to you too!"
elif [ $input = 2 ]; then
    # echo "Bye!!"
    echo ll
elif [ $input = 3 ]; then
    echo "Mahalo"
elif [ $input = 4 ]; then
    echo "Okayyy"
elif [ $input = 5 ]; then
    echo "Konnichiwa"
else
    echo "what the what"
fi
