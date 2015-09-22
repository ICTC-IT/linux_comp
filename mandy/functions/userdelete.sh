#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

delete_user(){

	echo
	echo "Enter usernames (there are five entries in total, type \"done\" on the extra entries): "
	read option_one
	read option_two
	read option_three
	read option_four
	read option_five

	echo

	if [ -z "$option_one" ] || [ $option_one = "done" ];
		then echo "0: option one not set, skipping.";
		else
			printf "${YELLOW}Removing user $option_one${NC}:"
			if(printf "${RED}`sudo userdel $option_one`${NC} \n"); then
				echo "OK."
			fi
	fi

	if [ -z "$option_two" ] || [ $option_two = "done" ];
		then echo "1: option two not set, skipping.";
		else 
			printf "${YELLOW}Removing user $option_two${NC}:"
			if(printf "${RED}`sudo userdel $option_two`${NC} \n"); then
				echo "OK."
			fi
	fi

	if [ -z "$option_three" ] || [ $option_three = "done" ];
		then echo "2: option three not set, skipping.";
		else
			printf "${YELLOW}Removing user $option_three${NC}:"
			if(printf "${RED}`sudo userdel $option_three`${NC} \n"); then
				echo "OK."
			fi
	fi

	if [ -z "$option_four" ] || [ $option_four = "done" ];
		then echo "3: option four not set, skipping.";
		else
			printf "${YELLOW}Removing user $option_four${NC}:"
			if(printf "${RED}`sudo userdel $option_four`${NC} \n"); then
				echo "OK"
			fi
	fi

	if [ -z "$option_five" ] || [ $option_five = "done" ];
		then echo "4: option five not set, skipping.";
		else
			printf "${YELLOW}Removing user $option_five${NC}:"
			if(printf "${RED}`sudo userdel $option_five`${NC} \n"); then
				echo "OK"
			fi
	fi


	echo
	echo
}

