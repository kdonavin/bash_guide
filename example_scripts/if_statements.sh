#!/usr/local/bin/bash

#If statements
a=5
if [ $a -gt 4 ]; then
	echo "$a is greater than 4!"
elif [ $a -lt 4]; then
	echo "$a is less than 4!"
else
	echo "$a is 4!"
fi
