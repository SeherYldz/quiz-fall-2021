#!/bin/bash

read -p "Please enter a number: " number

if [ $number -lt 0 ]
then
    echo "Your number should be positive"
    exit
fi

if [ `expr $number % 2` == 0 ]
then
	echo "Value not perfect"
else
    i= 0
    spaceCount = 0
    
    while [ $i -le $number ]
    do
        j = $number
        while [ $j -g 0 ]    
        do
            if [ [$j - $i] -g $number ]
            then
                echo " "
            else
                echo "*"
            fi
            ((j--))
        done
# ****
# ***
# **
# *   
        echo -e "\n" 
    ((i++))
    done
fi
