#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

net_interface(){
	printf "${YELLOW}Listing network interface${NC}: \n"
	echo
	if (printf "${RED}`cat /etc/network/interfaces`${NC} \n"); then
		echo "OK."
	fi
	echo
}
