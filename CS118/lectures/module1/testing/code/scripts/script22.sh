#!/bin/bash
URL="https://youtube.com"
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)
if [ $STATUS -eq 200 ]; then
    echo "Website $URL is up."
else
    echo "Website $URL is down or unreachable."
fi
 
 
