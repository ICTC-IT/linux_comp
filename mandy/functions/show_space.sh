#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_space(){
    printf "${YELLOW}Listing free disk space${NC}: \n"
    printf "${RED} \n"
    df
    printf "${NC}"
    echo

    echo >> log.txt
    echo "`date`" >> log.txt
    echo "Views free disk space via MANDY, entry \"space\"." >> log.txt
    echo "Commands Executed: df" >> log.txt
    echo >> log.txt
}
