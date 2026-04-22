echo "For loop:"
for i in {1..5}; do 
    echo "Iteration $i"
done
echo 




echo "While loop:"
count=1
while [ $count -le 5 ]; do # lt: less than, le: less than or equal, gt: greater than, ge: greater than or equal
    echo "Count is $count"
    ((count++))
done
echo 

echo "Until loop:"
count=1
until [ $count -gt 5 ]; do # SPACES before and after the arguments in the [] MATTER
    echo "Count is $count"
    ((count++))
done
