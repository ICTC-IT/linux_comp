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
	printf "${CYAN}show${NC}: displays the system info \n"
	printf "${CYAN}users${NC}: displays the system users \n"
	printf "${CYAN}network${NC}: reads the /etc/network/interfaces file\n"
	printf "${CYAN}bin${NC}: show the bin directory \n"
	printf "${CYAN}repo${NC}: show the repositories in aptitude \n"
	printf "${CYAN}directory${NC}: display a input directory \n"
	printf "${CYAN}pci${NC}: show all devices connected via PCI bus \n"
	printf "${CYAN}ram${NC}: show all free ram in the system \n"
	printf "${CYAN}block${NC}: show all block devices connected to the system \n"
	printf "${CYAN}exit${NC}: exits Tell Info \n"
	printf "${CYAN}ports${NC}: show all open ports \n"
	printf "${CYAN}setufw${NC}: sets up the ufw firewall to configuration \n"
	printf "${CYAN}update${NC}: updates the system \n"
	printf "${CYAN}removeuser${NC}: removes the specified 5 users \n"
	printf "${CYAN}removeage${NC}: removes and replaces the chage of 5 users \n"
	printf "${CYAN}space${NC}: show free disk space in the system \n"
	printf "${CYAN}editsudo${NC}: edits the /etc/sudoers file \n"
	printf "${CYAN}groupsee${NC}: view all of the users in a specified group \n"
	printf "${CYAN}changepass${NC}: change password of specified 5 users \n"
	printf "${CYAN}editsudoremove${NC}: remove specified 5 users from the sudo group \n"
	printf "${CYAN}logsee${NC}: view the tail of log files and creat log_mesg.txt \n"
	echo

	## LOG UPDATER
	echo >> logs/log.txt
	echo "`date`" >> logs/log.txt
	echo "Listed all functions in MANDY, entry \"help\"." >> logs/log.txt
	echo "Commands Executed: echo" >> logs/log.txt
	echo >> logs/log.txt
}
