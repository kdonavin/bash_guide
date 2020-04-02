#!/usr/local/bin/bash 
#This is a practice script for learning Bash scripting. Note that the Bash version has been updated beyond the stock system version

#variables
printf "This script is called: %s\n\n" $0 #The name of this script

a=Hello
b="Good Day"
c=16

printf "%s, I have %d apples!\n\n" "$b" $c

#Formatting
today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d" #Quotes preserve new lines

#Command substitution

a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo "Time to ping example.com: "$a
