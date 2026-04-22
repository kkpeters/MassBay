#!/bin/bash
counter=1
# changed ge to le since we are counting up
while [ $counter -le 5 ];
do
    echo "Counter is: $counter"
    # added another set of parenthesis to the following line
    ((counter++))
done
echo "Loop finished."
