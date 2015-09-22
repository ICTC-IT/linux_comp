#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

## PROMPT FUNCTION WITH OPTION VARIABLES (READ)
prompt_age(){
	echo
	printf "${YELLOW}Enter users for chage (five entries total, type \"done\" if an entry is blank)${NC}: \n"
	read option_one
	read option_two
	read option_three
	read option_four
	read option_five

	echo
	echo
}

## CONDITIONAL TEST FUNCTION FOR OPTION VARIABLES
conditional_test_age(){
	if [ -z "$option_one" ] || [ $option_one = "done" ];
		then
		echo "option skipped.";
		else
		printf "${YELLOW}changing $option_one expiration${NC}: \n"
		if(printf "${RED}`sudo chage -M 30 $option_one`${NC}"); then
			echo "OK."
		fi
	fi

	if [ -z "$option_two" ] || [ $option_two = "done" ];
		then
		echo "option skipped.";
		else
		printf "${YELLOW}changing $option_two expiration${NC}: \n"
		if(printf "${RED}`sudo chage -M 30 $option_two`${NC}"); then
			echo "OK."
		fi
		echo "OK.";
	fi

	if [ -z "$option_three" ] || [ $option_three = "done" ];
		then
		echo "option skipped.";
		else
		printf "${YELLOW}changing $option_three expiration${NC}: \n"
		if(printf "${RED}`sudo chage -M 30 $option_three`${NC}"); then
			echo "OK."
		fi
		echo "OK.";
	fi

	if [ -z "$option_four" ] || [ $option_four = "done" ];
		then
		echo "option skipped.";
		else
		printf "${YELLOW}changing $option_four expiration${NC}: \n"
		if(printf "${RED}`sudo chage -M 30 $option_four`${NC}"); then
			echo "OK."
		fi
		echo "OK.";
	fi

	if [ -z "$option_five" ] || [ $option_five = "done" ];
		then
		echo "option skipped.";
		else
		printf "${YELLOW}changing $option_five expiration${NC}: \n"
		if(printf "${RED}`sudo chage -M 30 $option_five`${NC}"); then
			echo "OK."
		fi
		echo "OK.";
	fi

	echo
	echo
}
