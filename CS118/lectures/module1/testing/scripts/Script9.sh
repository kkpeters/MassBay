#!/bin/bash
echo "Welcome to the Script"
echo "================================================="
echo "Options:"
echo ""
echo "Press 1 for Hello"
echo "Press 2 for Goodbye"
echo "Press 3 for Aloha"
echo "Press 4 for Toodaloo"
echo "================================================="
echo ":Enter your choice:"
read input
if [ $input = 1 ]; then
    echo "Hello to you too!"
elif [ $input = 2 ]; then
    echo "Bye!!"
elif [ $input = 3 ]; then
    echo "Mahalo"
elif [ $input = 4 ]; then
    echo "Okayyy"
else
    echo "what the what"
fi
