#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_pci(){
	printf "${YELLOW}Listing all devices connected via PCI${NC}: \n"
	echo
	if (printf "${RED}`lspci`${NC} \n"); then
		echo "OK."
	fi
	echo

    echo >> log.txt
    echo "`date`" >> log.txt
    echo "Views all devices connected by PCI via MANDY, entry \"update\"." >> log.txt
    echo "Commands Executed: lspci" >> log.txt
    echo >> log.txt
}
