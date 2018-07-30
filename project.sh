#! /bin/bash
for files in *; do
	if [[ -f "$files" ]]; then
		echo "$files"
	else
		echo "it is a folder"
	fi
done