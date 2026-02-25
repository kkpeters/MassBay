#!/bin/bash

# create a menu
# user can type "murphy" and will create a folder called "murphy" and copy all the files from home into it. 
# user can type "law" and will create a backup file of the home directory, labeled law and with today's date
# bonus: make murphy and law non case sensitive


echo "Choose from the following menu:"
echo "1. Murphy"
echo "2. Law"
read answer
if [ ${answer} = "murphy" || ${answer} = "Murphy" ]; then
    # create folder called murphy and copy all files from home into it
    mkdir murphy
    allFiles=$(ls -al /home/kris) # kris bc im scared linuxbrew is too big
    for file in ${allFiles};
    do 
        # copies the file over
        cp ${file} murphy/${file}
    done
    echo "All files copied into the murphy folder."
elif [ ${answer} = "law" || ${answer} = "Law" ]; then
    # create backup file of the home directory called law
    zip -r law.zip home/
else
    echo "I do not know what you want."
    exit 101
fi
