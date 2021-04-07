#!/bin/bash

echo "This script was developed by Alina Nabieva a student of the group 727-1"

operation="true"
answer="y"

while [ "$operation" = "true" ]
do

	echo "----------Format request:----------"
	echo "Enter file name with format, please."
	read file
	echo "Enter new file name with format, please."
	read file_1
	convert $file $file_1

	echo "---Request the size of a new image---"
	echo "Enter the size of a new image, please."
	read size
	convert $file_1 -thumbnail $size $file_1
	echo "Successful!"

	echo "Would you like to continue? Choose, please, your answer y/n."
	read answer
	if [ "$answer" = "n" ];
	then operation=false
	fi
done
