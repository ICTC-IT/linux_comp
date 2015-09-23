#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

disable_ubuntu_guest(){
    printf "${YELLOW}Removing guest account for ubuntu ${NC} \n"
    echo "$allow-guest=false" >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
    echo "$allow-guest=false" >> /usr/share/lightdm/lightdm.conf
    echo "OK."

    ## LOG UPDATER
    echo >> log.txt
    echo "`date`" >> log.txt
    echo "Removed guest account via MANDY, entry \"ubuntudisable\"." >> log.txt
    echo "Commands Executed: echo \"$allow-guest=false\" >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf" >> log.txt
    echo "Commands Executed: echo \"$allow-guest=false\" >> /usr/share/lightdm/lightdm.conf" >> log.txt
    echo >> log.txt
}

