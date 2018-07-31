#! /bin/bash
# We have used basename to get only the name of the file not the path to the file
mkdir hot_folder
for dir in $(find . -type d); do
	if [[ "$dir" != ./hot_folder ]]; then
		echo "This is the folder $dir"
		for file in $dir/*; do
			if [[ -f "$file" ]]; then
				echo "This is the file $file"
				grep -ni "number" "$files"
				if [[ $? -eq 0 ]]; then
					name_f=$(basename $file)
					echo "-------" >> ./hot_folder/$name_f
					cp echo $name_f hot_folder
					ls hot_folder
					sleep 0.70
				fi
			fi
		done
		echo "---------------------------"
	fi
done