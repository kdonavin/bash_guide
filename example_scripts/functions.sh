#!/usr/local/bin/bash 

#Function Demo
printf "\nDemonstration of a function: greet\n"
function greet {
	echo "Hi, $1! What a nice $2."
}
function greetu {
	day=$(date | cut -f 1 -d ' ')
	case $day in
		Mon) day='Monday';;
		Tue) day='Tuesday';;
		Wed) day='Wednesday';;
		Thu) day='Thursday';;
		Fri) day='Friday';;
		Sat) day='Saturday';;
		Sun) day='Sunday';;
	esac
	greet $(whoami) $day
}
greetu

printf "\nDemonstration of a function: numberthings\n"
function numberthings {
	i=1
	for f in $@; do #'$@' accesses all arguments passed to a function
		echo $i: $f
		((i++))
	done
	printf "\n"
}
printf "list files:\n"
numberthings $(ls)
printf "\nlist arguments:\n"
numberthings apple banana orange
