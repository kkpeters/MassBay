#!/bin/bash
 
# Prompting the user to enter a hostname or IP address to ping
read -p "Enter the hostname or IP address to ping: " target_host
 
 
# Pinging the specified host
ping -c 4 "$target_host"
 
 
# Checking the exit status of the ping command
if [ $? -eq 0 ]; then
    echo "Ping successful: $target_host is reachable."
else
    echo "Ping failed: $target_host is unreachable."
fi
