#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_open_ports(){
    echo
    printf "${YELLOW}Listing all open ports${NC}: \n"
    echo
    if(printf "${RED}`netstat -auntl`${NC} \n"); then
    	echo "OK."
    fi
    echo
    echo "IP TABLE RULES ALLOWED"
    echo
    if(printf "${RED}`sudo iptables -L`${NC} \n"); then
    	echo "OK."
    fi
    echo

    echo >> log.txt
    echo "`date`" >> log.txt
    echo "Shows all open ports via MANDY, entry \"update\"." >> log.txt
    echo "Commands Executed: netstat -auntl" >> log.txt
    echo "Commands Executed: sudo iptables -L" >> log.txt
    echo >> log.txt
}
