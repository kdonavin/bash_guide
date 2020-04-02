#!/usr/local/bin/bash

#Reading and Writing Files
echo 'some text' > file.txt
echo 'some more text' >> file.txt
printf "\nWhile loop reading file demonstration:\n"
i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < file.txt #use file.txt as input

#Cleanup

rm file.txt