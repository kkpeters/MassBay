# asks the user for their name
# reply using their name, and say today's date

read -r -p "What is your name: " name
echo "Hello ${name}! Today's date is: $(date +%D)."
