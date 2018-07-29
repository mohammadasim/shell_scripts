#! /bin/bash

check_divisibility(){
	var=$1
	echo "The value entered is $var"
	if [ $((var % 2)) -eq 0 ]; then
		echo "Number is divisible by 2"
	fi
	if [ $((var % 3)) -eq 0 ]; then
		echo "Number is divisible by 3"
	fi
	if [ $((var % 5)) -eq 0 ]; then
		echo "Number is divisible by 5"
	fi
}

check_text_files_in_directory(){
	number_files=0
	for files in ~/shell_scripts/*; do
		if [[ $files =~ ".txt" ]]; then 
		    number_files=$((number_files + 1))
	    fi
	done
	echo "The total number of text files in the directory is $number_files"
}

