#!/bin/bash
echo "Enter a number between 1 and 3"
read choice

case $choice in
    1)
        echo "You selected choice 1"
        ;;
    2)
        echo "You selected choice 2"
        ;;
    3)
        echo "You selected choice 3"
        ;;
    *)
        echo "bruh i said 1 through 3"
        ;;
esac
