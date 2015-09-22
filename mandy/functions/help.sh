#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

help_info(){
	echo "List of available options: "
	echo
	echo
	printf "${CYAN}show${NC}: displays the system info \n"
	echo
	printf "${CYAN}users${NC}: displays the system users \n"
	echo
	printf "${CYAN}network${NC}: reads the /etc/network/interfaces file\n"
	echo
	printf "${CYAN}bin${NC}: show the bin directory \n"
	echo
	printf "${CYAN}repo${NC}: show the repositories in aptitude \n"
	echo
	printf "${CYAN}directory${NC}: display a input directory \n"
	echo
	printf "${CYAN}pci${NC}: show all devices connected via PCI bus \n"
	echo
	printf "${CYAN}ram${NC}: show all free ram in the system \n"
	echo
	printf "${CYAN}block${NC}: show all block devices connected to the system \n"
	echo
	printf "${CYAN}exit${NC}: exits Tell Info \n"
	echo
	printf "${CYAN}ports${NC}: show all open ports \n"
	echo
	printf "${CYAN}setufw${NC}: sets up the ufw firewall to configuration \n"
	echo
	printf "${CYAN}update${NC}: updates the system \n"
	echo
	printf "${CYAN}removeuser${NC}: removes the specified 5 users \n"
	echo
	printf "${CYAN}removeage${NC}: removes and replaces the chage of 5 users \n"
	echo
	printf "${CYAN}space${NC}: show free disk space in the system \n"
	echo
	printf "${CYAN}editsudo${NC}: edits the /etc/sudoers file \n"
	echo
	printf "${CYAN}groupsee${NC}: view all of the users in a specified group \n"
	echo
}
