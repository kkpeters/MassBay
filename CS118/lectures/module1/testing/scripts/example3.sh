#!/bin/bash
day="Friday"

case $day in 
    Monday)
        echo "Start of the work week..."
        ;;
    Friday)
        echo "TGIF"
        ;;
    *)
        echo "Just another day."
        ;;
esac
