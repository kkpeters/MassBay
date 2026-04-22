#!/bin/bash
host="www.massbay.edu"
echo "Testing connectivity to $host..."
echo ""
# added a count, so that we actually read the if statements, also added quotations around $host
ping -c 4 "$host"
if [ $? -eq 0 ]; then
    echo ""
    echo "Ping successful. $host is reachable."
# changed or to else
else
    echo ""
    echo "Ping failed. $host is not reachable."
fi
