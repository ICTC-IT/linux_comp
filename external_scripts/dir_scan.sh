#!/bin/bash

# SCAN FUNCTION
home_scan(){
	echo "Enter a directory to be scanned: "
	read scanned_dir
	
	# ARRAY DICTIONARY/SCANNED FILE NAMES
	list_arr=("passwords" "passwords.txt" "Passwords" "Passwords.txt" 
	"pass" "pass.txt" "credit" "credit.txt" "cards" "cards.txt" "accounts"
	"accounts.txt")
	
	echo "Searching input directory: "
	echo
	for i in "${list_arr[@]}"; do
		# SEARCH FOR REGULAR FILES
		if [ -f $scanned_dir/$i\.* ]; then
			echo "suspicious file found in \"$scanned_dir\" file named \"$i\"."
		fi
	done

	# COMMENTING OUT UNTIL FIXED/FINISHED
	#echo
	#echo "Going through hidden files: "
	#echo

	#for i in "${list_arr[@]}"; do
		# SEARCH FOR HIDDEN FILES
	#	if [ -f $scanned_dir/.$i.* ]; then
	#		echo "suspicious hidden file found in \"$scanned_dir\"."
	#	fi
	#done
}

home_scan

