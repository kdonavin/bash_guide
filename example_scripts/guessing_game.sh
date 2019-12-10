#!/usr/local/bin/bash

if [[ $# -lt 2 ]]; then 
	cat <<- EOM
	Please provide exactly two integers. 

	These will the min and max of a range to guess between.	
	EOM
elif [[ $1 -ge $2 || $1 -lt 1 || $2 -gt 100 ]]; then
	cat <<- EOM
	$# integers, including '$1' and '$2' provided. Please provide exactly two 
	integers between 1 and 100. 

	These will the min and max of a range to guess between.	
	EOM
else
	random=$(( $1 + $RANDOM%$(($2 - $1)) ))
	guess=0
	while ((guess != random)); do
		printf "\nGuess an integer between $1 and $2: "
		read guess
		if ((guess > random)); then
			echo "Nope, guess lower!"
		elif ((guess < random)); then
			echo "Nope, guess higher!"
		fi
	done
	echo "You got it!"
fi
