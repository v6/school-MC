#!/bin/bash

#you're going to be prompted to enter a number.
#That number is going to be compared to the other stored numbers, if there aren't any then you'll be prompted to input more.
#The program will store it if it's higher, discard it if it's not.
#the program will close if someone enters a string "no".


#"While input isn't a string keep going"

defaultvar=0
inputvar=0
biggestvar=0
continuevar="yes"


until [ $continuevar == "no" ] 
do
        echo "Enter the number, to escape enter a string"
        read inputvar
        if [ $inputvar -gt $biggestvar ]
        then $biggestvar=$inputvar
        else echo "The number you entered isn't the biggest."
        fi
        echo "Do you want to continue?"
        read continuevar
done
