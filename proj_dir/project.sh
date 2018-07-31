#! /bin/bash
mkdir proj_dir
for files in *; do
	if [[ -f "$files" ]]; then
		echo "${files} is a file"
		grep -ni "number" "$files"
		if [[ $? -eq 0 ]]; then
			echo "-------" >> $files
			cp echo $files proj_dir
			ls proj_dir
			sleep 0.70
		fi
	else
		echo "${files} is not a file"
	fi
done
-------
