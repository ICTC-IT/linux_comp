#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_bin(){
	printf "${YELLOW}Listing /bin and /sbin${NC} \n"
	echo
	if(printf "${RED}`ls /bin; ls /sbin`${NC} \n"); then
		echo "OK."
	fi
	echo

    ## LOG UPDATER
    echo >> log.txt
    echo "`date`" >> log.txt
    echo "Viewed bin files via MANDY, entry \"bin\"." >> log.txt
    echo "Commands Executed: ls /bin; ls /sbin" >> log.txt
    echo >> log.txt
}
