#!/bin/bash

# SCAN FUNCTION
home_scan(){
	echo "Enter a directory to be scanned: "
	read scanned_dir
	list_arr=("passwords", "Passwords", "pass", "credit", "cards", "accounts")
	#for i in "${list_arr[@]}"; do
		arr_var="passwords"
		if [ -e $scanned_dir/arr_var.* ]; then
				echo "suspicious file found in \"$scanned_dir\"."
				#break
		else
			echo "directory is clear."
		fi
	#done
}

home_scan

