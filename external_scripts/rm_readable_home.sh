#!/bin/bash

# REMOVES WORLD READABLE PERMISSIONS TO HOME DIRECTORIES ENTERED
rm_readable_home_dir(){
	
	# PROMPT AND ENTRIES
	echo
	echo "Enter users to remove world readable permssions "
	echo "(five entries total, type \"done\" for blank entries): "
	read option_one_readable
	read option_two_readable
	read option_three_readable
	read option_four_readable
	read option_five _readable

	# GENERATE BLANK SPACE
	echo

	# BEGIN CONDITIONAL TESTS ON INPUT VARIABLES
	if [ -z "$option_one_readable" ] || [ $option_one_readable = "done" ]; then
		echo "Option skipped."
	else
		echo "World readable to be removed from user $option_one_readable: "
		# CONDITIONAL TEST FOR COMMAND RUN		
		if (sudo chmod 0750 /home/$option_one_readable); then
			echo "OK."		
		fi
		# END OF CONDITIONAL
	fi

	# BEGIN CONDITIONAL TESTS ON INPUT VARIABLES
	if [ -z "$option_two_readable" ] || [ $option_two_readable = "done" ]; then
		echo "Option skipped."	
	else
		echo "World readable to be removed from user $option_two_readable: "
		# CONDITIONAL TEST FOR COMMAND RUN		
		if (sudo chmod 0750 /home/$option_two_readable); then
			echo "OK."		
		fi
		# END OF CONDITIONAL
	fi

	# BEGIN CONDITIONAL TESTS ON INPUT VARIABLES
	if [ -z "$option_three_readable" ] || [ $option_three_readable = "done" ]; then
		echo "Option skipped."
	else
		echo "World readable to be removed from user $option_three_readable: "
		# CONDITIONAL TEST FOR COMMAND RUN		
		if (sudo chmod 0750 /home/$option_three_readable); then
			echo "OK."		
		fi
		# END OF CONDITIONAL
	fi

	# BEGIN CONDITIONAL TESTS ON INPUT VARIABLES
	if [ -z "$option_four_readable" ] || [ $option_four_readable = "done" ]; then
		echo "Option skipped."
	else
		echo "World readable to be removed from user $option_four_readable: "
		# CONDITIONAL TEST FOR COMMAND RUN		
		if (sudo chmod 0750 /home/$option_four_readable); then
			echo "OK."		
		fi
		# END OF CONDITIONAL
	fi

	# BEGIN CONDITIONAL TESTS ON INPUT VARIABLES
	if [ -z "$option_five_readable" ] || [ $option_five_readable = "done" ]; then
		echo "Option skipped."
	else
		echo "World readable to be removed from user $option_five_readable: "
		# CONDITIONAL TEST FOR COMMAND RUN		
		if (sudo chmod 0750 /home/$option_five_readable); then
			echo "OK."		
		fi
		# END OF CONDITIONAL
	fi

	echo
}

# CALL FUNCTION
rm_readable_home_dir


