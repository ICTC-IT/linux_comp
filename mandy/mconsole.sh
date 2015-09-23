#!/bin/bash


# IMPORTS


## PROMPT IMPORT
source functions/prompt.sh

## SHOW DIRECTORY IMPORT
source functions/show_dir.sh

## SHOW BIN FILES IMPORT
source functions/show_bin.sh

## SHOW REPOSITORIES IMPORT
source functions/show_repositories.sh

## SHOW SYSTEM INFO IMPORT
source functions/show_sys_info.sh

## SHOW HELP IMPORT
source functions/help.sh

## SHOW USERS IMPORT
source functions/show_users.sh

## SHOW NETWORK INTERFACE IMPORT
source functions/net_interface.sh

## SHOW FREE RAM IMPORT
source functions/show_free.sh

## SHOW PCI BUS CONNECTIONS IMPORT
source functions/show_pci.sh

## SHOW BLOCK DEVICES IMPORT
source functions/show_blk.sh

## SHOW DISK SPACE IMPORT
source functions/show_space.sh

## SHOW OPEN PORTS IMPORT
source functions/show_open_ports.sh

## DISABLE UBUNTU GUEST IMPORT
source functions/disable_ubuntu_guest.sh

## UPDATE SYSTEM IMPORT
source functions/updateme.sh

## DELETE USERS IMPORT
source functions/userdelete.sh

## SET UFW FIREWALL IMPORT
source functions/ufwset.sh

## REMOVE/REPLACE USER CHAGE IMPORT
source functions/removeage.sh

## EDIT SUDOERS IMPORT
source functions/edit_sudoers.sh

## SHOW GROUP USERS IMPORT
source functions/show_group_users.sh

## CHANGE USER PASS FUNCTION IMPORT
source functions/secure_user_pass.sh

# SETTING NECESSARY ALIASES
#alias cdm="cd"
#shopt -s expand_aliases

clear

## PROMPT CALL
prompt


# FUNCTIONS

## WHILE LOOP TO END MANDY
while [ "$option" != "exit" ]; do

## RUN CASE FUNCTION
run_case(){

	## CREATE CASE FOR $OPTION
	case $option in
		"help")
			help_info
			;;
		"show")
			show_sys_info
			;;
		"users")
			show_users
			;;
		"network")
			net_interface
			;;
		"bin")
			show_bin
			;;
		"space")
			show_space
			;;
		"repo")
			show_repositories
			;;
		"directory")
			show_dir
			line_count_condition
			;;
		"ram")
			show_free
			;;
		"pci")
			show_pci
			;;
		"block")
			show_blk
			;;
		"ports")
			show_open_ports
			;;
		"setufw")
			set_ufw_enable
			set_ufw_ruleset
			set_ufw_in
			set_allow_port
			;;
		"update")
			update_sys
			;;
		"removeuser")
			delete_user
			;;
		"removeage")
			prompt_age
			conditional_test_age
			;;
		"editsudo")
			edit_sudoers
			;;
		"groupsee")
			prompt_show_group_users
			show_group_users
			;;
		"changepass")
			prompt_pass
			conditional_test_pass
			;;
		"editsudoremove")
			prompt_group
			conditional_test_group
			;;
		*)
			if [ "$option" == "exit" ]; then
			echo "Exiting Mandy"
			echo
			else
			echo
			fi
			;;
		esac
		## END CASE
}

add_common_cmd(){
	case $option in
		"clear")
			clear
			;;
		"ls")
			ls
			echo
		;;
		"pwd")
			pwd
			echo
		;;
	esac
}


# FUNCTION CALLING

## CALL PRINT FUNCTION
print

## CALL SECONDARY PROMPT FUNCTION
prompt2

## CALL RUN_CASE/ADD_COMMON_CMD FUNCTIONS
run_case
add_common_cmd

# ENDING LOOP
done

# LEAVING WITH EXIT 0 CODE
exit 0