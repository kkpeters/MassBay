# Hello Script:
```
#!/bin/bash
 
 
# Ask the user for their name
echo "Please enter your name:"
read name
 
 
# Get today's date
current_date=$(date +"%A, %B %d, %Y")
 
 
# Greet the user and display today's date
echo "Hello, $name! Today is $current_date."
```
Explanation:
- read name: This reads the user's input and stores it in the name variable.
- date +"%A, %B %d, %Y": This command retrieves the current date formatted as DayOfWeek, Month Day, Year (e.g., "Thursday, September 26, 2024").
- echo "Hello, $name! Today is $current_date.": This outputs a greeting with the user's name and the current date.

# Math Script:
```
#!/bin/bash
 
 
# Ask the user for the first number
echo "Please enter the first number:"
read num1
 
 
# Ask the user for the second number
echo "Please enter the second number:"
read num2
 
 
# Perform the operations
sum=$((num1 + num2))
product=$((num1 * num2))
difference=$((num1 - num2))
quotient=$(echo "scale=2; $num2 / $num1" | bc)
 
 
# Output the results
echo "Sum: $sum"
echo "Product: $product"
echo "Difference: $difference"
echo "Quotient: $quotient"
```
Explanation:
- read num1 and read num2: These prompt the user to input two numbers and store them in num1 and num2.
- sum=$((num1 + num2)): Adds the two numbers.
- product=$((num1 * num2)): Multiplies the two numbers.
- difference=$((num1 - num2)): Subtracts the second number from the first.
- quotient=$(echo "scale=2; $num2 / $num1" | bc): Uses bc to handle floating-point division with two decimal places.
- The results are printed using echo.

# Mad Lib Script
```
#!/bin/bash
# A simple Mad Lib script
 
echo "Welcome to the Mad Lib game!"
 
# Collect words from the user
read -p "Enter an adjective: " adjective
read -p "Enter a noun: " noun
read -p "Enter a verb (present tense): " verb
read -p "Enter another noun: " noun2
read -p "Enter a place: " place
read -p "Enter a number: " number
read -p "Enter an animal: " animal
 
# The Mad Lib story
echo ""
echo "Here is your Mad Lib story:"
echo "One day, a $adjective $animal decided to go on an adventure. It took its favorite $noun with it."
echo "On the way to $place, it decided to $verb for $number hours straight!"
echo "When it arrived, it found a giant $noun2 waiting for it. What a day!"
 
# End of the script
echo ""
echo "Thanks for playing!"
```
# For Loop
```
#!/bin/bash
 
 
# Create a directory called Happy in the current directory
mkdir Happy
 
 
# Get the list of directories in the root (/) directory
directories=$(ls -d /*/)
 
 
# Loop through each directory in the root
for dir in $directories; do
    # Extract the directory name (remove the leading / and trailing /)
    dirname=$(basename "$dir")
 
 
    # Use touch to create a file with the same name inside the Happy directory
    touch "Happy/$dirname"
done
 
 
echo "Files created in the Happy directory based on root directory names."
```
 
 
## Here is how your could do it with a while loop
```
#!/bin/bash
 
 
# Create a directory called Happy if it doesn't already exist
mkdir -p Happy
 
 
# Create a temporary file to store the list of root directories
temp_file="root_dirs.txt"
 
 
# Use ls to list directories in the root and store the output in a file
ls -d /*/ > "$temp_file"
 
 
# Read each line from the file and create a file with the same name inside Happy
while IFS= read -r line; do
    # Extract just the directory name without leading/trailing slashes
    dirname=$(basename "$line")
 
 
    # Use touch to create a file with the same name inside Happy directory
    touch "Happy/$dirname"
done < "$temp_file"
 
 
# Clean up: Remove the temporary file
rm "$temp_file"
 
 
echo "Files created in the Happy directory based on root directory names."
``` 
 
# Murphy Script
```
#!/bin/bash
 
 
# Function to create murphy folder and copy files
function create_murphy_folder() {
    mkdir -p murphy
    cp -r ~/.* ~/murphy 2>/dev/null  # Copy hidden files
    cp -r ~/.*murphy  # Copy other files and directories
    echo "Files from your home directory have been copied into the 'murphy' folder."
}
 
 
# Function to create tar backup named law with today's date
function create_law_backup() {
    current_date=$(date +%Y-%m-%d)
    tar_file="law_$current_date.tar.gz"
    tar -czf "$tar_file" ~
    echo "Backup of your home directory created as $tar_file."
}
 
 
# Presenting a menu for the user
echo "Menu:"
echo "Type 'murphy' to create a folder and copy files."
echo "Type 'law' to create a backup of your home directory."
echo "Type 'exit' to quit the script."
 
 
# Loop to accept user input
while true; do
    read -p "Please enter your choice: " user_input
 
 
    # Convert input to lowercase to make it case-insensitive
    user_input=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
 
 
    case $user_input in
        "murphy")
            create_murphy_folder
            ;;
        "law")
            create_law_backup
            ;;
        "exit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
``` 
 
How the Script Works:
- Menu: The script presents the user with options to either type murphy, law, or exit.
- murphy Command: When the user types "murphy" (case-insensitive), the script creates a folder named murphy and copies all files (including hidden files) from the home directory into it using the cp command.
- law Command: When the user types "law" (case-insensitive), the script creates a tarball (compressed backup file) of the home directory. The tar file is named law_YYYY-MM-DD.tar.gz, where YYYY-MM-DD is the current date.
- Case Insensitivity: The script uses tr '[:upper:]' '[:lower:]' to convert the user's input to lowercase so that both "Murphy" and "murphy" would trigger the same action.
- Exit: The user can type "exit" to leave the script.
- tr stands for translate or transliterate. It is a command that performs character-based transformations on text streams. It can be used to:

- Translate characters: Replace specific characters with other characters.
- Delete characters: Remove specified characters from the input.
- Squeeze characters: Replace sequences of repeated characters with a single instance.
