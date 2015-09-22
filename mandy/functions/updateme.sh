#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

# CREATE UPDATE SYSTEM FUNCTION
update_sys(){
	if (printf "${RED}`sudo apt-get update`${NC} \n"); then printf "${RED}`sudo apt-get upgrade`${NC} \n"; fi
}
