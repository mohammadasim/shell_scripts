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


rename_files(){
	read -p "Please selec the type of file you want to rename. Enter t for text and j for jpg " selection
	
	while [[ "$selection" != "j" && "$selection" != "t" ]]; do
		read -p "Your selection is not correct, please try again " selection
	done
	read -p "Please enter the prefix you wan to add to the names of the file " prefix
	if [ "$selection" == "t" ]; then
		for files in ./*; do
			echo "Inside for loop $files"
			if [[ "$files" = *"txt" ]]; then
				echo "inside if statement $files"
				local short_file_name=$(echo $files | cut -d'/' -f 2)
				echo "The short file name is $short_file_name"
				sudo mv $(echo $short_file_name) "$prefix""$short_file_name"
			fi
			
		done
	fi	
	if [[ $selection == "j" ]]; then
		for files in ./*; do
			echo "Inside for loop the file selected is $files"
			if [[ $files = *"jpg" ]]; then
				echo "inside if statement the file selected is $files"
				local short_file_name=$(echo $files | cut -d'/' -f 2)
				echo "The short file name is $short_file_name"
				sudo mv $(echo $short_file_name) "$prefix""$short_file_name"
			fi
		done
	fi
}

rename_files