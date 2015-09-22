#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

# FUNCTIONS FOR PROMPT
prompt(){
	echo
	cat logo.txt
	echo
	echo "Welcome to the Mandy console "
	echo "type \"help\" for options."
	echo
	echo "Made by Jackson Brown, Blake Holloway"
	printf "${CYAN}Last update: september, 22, 2k15${NC} \n"
	echo
	echo "COLOR CODING: "
	printf "${GREEN}green${NC}: command input \n"
	printf "${RED}red${NC}: output of a command being run or by Mandy \n"
	printf "${CYAN}cyan${NC}: information from devs \n"
	printf "${YELLOW}yellow${NC}: actions being commited by mandy \n"
	echo
}

prompt2(){
	#echo -ne
	printf "${GREEN}>${NC}"
	read option
	echo
}
