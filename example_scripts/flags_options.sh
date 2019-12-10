#!/usr/local/bin/bash 

#Demonstration of flags

while getopts :u:p:ab option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the 'a' flag";;
		b) echo "Got the 'b' flag";;
		?) echo "unknown '$OPTARG' flag";;
	esac
done

echo "User: $user / Password: $pass"