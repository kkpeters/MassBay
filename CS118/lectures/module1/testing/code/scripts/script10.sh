#!/bin/bash
echo "What would you like to do?"
echo "Pick one: code, sleep, or exercise."
read action
case $action in 
    "code")
        echo "write some code"
        exit 10
        ;;
    "sleep")
        echo "go to bed"
        exit 99
        ;;
    "exercise")
        echo "time for jimmmm"
        exit 74
        ;;
    *)
        echo "fking do nothing i guess"
        ;;
esac

