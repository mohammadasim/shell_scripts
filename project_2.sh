#! /bin/bash
for dir in $(find . -type d); do
	echo "This is the folder $dir"
	for file in $dir/*; do
		echo "This is the file $file"
	done
	echo "---------------------------"
done