#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_free(){
	printf "${YELLOW}Listing free RAM in system${NC}: \n"
	echo
	if(printf "${RED}`free`${NC} \n"); then
		echo "OK."
	fi
	echo

    ## LOG UPDATER
    echo >> log.txt
    echo "`date`" >> log.txt
    echo "List all free RAM via MANDY, entry \"ram\"." >> log.txt
    echo "Commands Executed: free" >> log.txt
    echo >> log.txt
}
