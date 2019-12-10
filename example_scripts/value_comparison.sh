#!/bin/bash

#Value comparison
printf "\nIs 'cat' equal to 'cat'?\n"
[[ 'cat'=='cat' ]] #Note spaces after and before '[[' and ']]'
echo $?

d=20
printf "\nIs %d ≤ %d?\n" $d $c
[[ d -le c ]]
echo $?