#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_users(){
	printf "${YELLOW}Listing users in system${NC}: \n"
	echo
	if (printf "${RED}`cat /etc/passwd | grep -e "bash"`${NC} \n"); then
		echo "OK."
	fi
	echo

    echo >> logs/log.txt
    echo "`date`" >> logs/log.txt
    echo "Show users in system via MANDY, entry \"users\"." >> logs/log.txt
    echo "Commands Executed: cat /etc/passwd | grep -e \"bash\"" >> logs/log.txt
    echo >> logs/log.txt
}
