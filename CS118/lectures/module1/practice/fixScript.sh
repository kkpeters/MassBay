#!/bin/bash
 
# Ping Google's DNS
ping -c 4 8.8.8.8 > /dev/null
 
# Check the exit status of the ping command
if [ $? -eq 0 ]; then
    echo "Ping to Google DNS (8.8.8.8) was successful."
else
    echo "Ping to Google DNS (8.8.8.8) failed."
fi
 
 
