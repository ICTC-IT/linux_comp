#!/bin/bash

# SCAN FUNCTION
home_scan(){
	echo "Enter a directory to be scanned: "
	read scanned_dir
	list_arr=("passwords" "Passwords" "pass" "credit" "cards" "accounts")
	for i in "${list_arr[@]}"; do
		if [ -f $scanned_dir/$i.* ]; then
			echo "suspicious file found in \"$scanned_dir\" file named \"$i\"."
			echo "Searching for hidden files: "
			if [ -f $scanned_dir/.$i.* ]; then
				echo "suspicious hidden file found in \"$scanned_dir\" file named \"$i\""
			else
				echo "no hidden files found."
			fi
		fi
	done
}

home_scan

