#!/bin/bash

# COLOR VARIABLES
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

show_dir(){

echo "enter a directory: "
read x

for i in `ls -a $x`; do
	printf "${RED}$i${NC} \n"
done

}