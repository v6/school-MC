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

## Part 1: Get User Input, make comparisons

until [ $continuevar == "no" ] 
do
	##  We'll repeatedly get number input from the user,
	##  and update the biggest number.
	##  If the user doesn't want to continue, we'll
	##  exit the loop.
        echo "Enter the number, to escape enter a string"
	echo ""
        read inputvar
        if [ $inputvar -gt $biggestvar ]
        then biggestvar=$inputvar
        else echo "The number you entered isn't the biggest."
        fi
        echo "Do you want to continue?"
        read continuevar
done

##  Part 2: Give the output to the user upon exiting.
##  By this point, $biggestvar should be the largest
##  number, because we've been updating it each time.
echo ""
echo "The biggest number, of the ones you entered, was"
echo $biggestvar
