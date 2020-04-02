#!/bin/bash

#Cases
printf "\nCases demonstration:\n"
a="pig"
case $a in 
    cat) echo "Feline";;
    dog|puppy) echo "Canine";;
    *) echo "No Match!";; #catch for no match
esac