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
}
