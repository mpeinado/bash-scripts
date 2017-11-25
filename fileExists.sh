#!/bin/bash
# Check if a file exists and delete it if it exists
# Reference: https://www.cyberciti.biz/faq/unix-linux-test-existence-of-file-in-bash/
#	https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php

echo "***** Enter file name to delete: *****"
read file

# check if file exists
if [ -f "$file" ]
then
	# if file was found 
	echo "$file found"
	echo "Would you like to delete the file? (y/n)"

	read deleteFile

	if [ $deleteFile = "y" ]
	then
		rm $file
		echo "$file was deleted."
	else
		echo "File will NOT be deleted."
	fi
else
	echo "$file not found."
fi

