#!/bin/bash

#While & until loops
printf "\nWhile less than or equal to 10:\n"
i=0
while [ $i -le 10 ]; do
    echo i:$i
    ((i+=1))
done

printf "\nUntil greater than or equal to 10:\n"
j=0
until [ $j -ge 10 ]; do
    echo j:$j
    ((j+=1))
done

#For Loops
printf "\nFor 1 to 10 by 2 :\n"
for i in {1..10}; do
	echo i:$i
done

printf "\nAssociative array for loop (Bash 4+):\n" 
declare -A arr #declare associated array 'arr'
arr[name]="Kirkwood"
arr[id]=1234
for i in "${!arr[@]}"; do #exclamation mark method returns keys
    echo "$i: ${arr[$i]}" #quotes used to handle spaces in key and value strings.
done