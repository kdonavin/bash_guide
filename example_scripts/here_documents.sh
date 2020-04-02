#!/usr/local/bin/bash

#Here documents
printf "\nHere is an example of 'Here' documents:\n"
cat <<- EndOfText #Note minus sign, which strips leading tabs
	This is a
	multiline
	text string
	
EndOfText
#EndOfText is here document specified 'limit string', note that it cannot have spaces before or after it to be recognized