# It asks the user for two numbers.
# 1. adds them together
# 2. multiplies them by each other
# 3. subtract the value of the second from the first 
# 4. divide the second by the first

read -r -p "Please enter a number: " num1
read -r -p "Please enter another number: " num2

echo $((${num1} + ${num2}))
echo $((${num1} * ${num2}))
echo $((${num1} - ${num2}))
echo $((${num1} / ${num2}))
