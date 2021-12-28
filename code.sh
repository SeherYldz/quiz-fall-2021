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
    i=1
    rowmid = $number / 2
    start = $number / 2   
    end = $number / 2
    
    while [ $i -le $number ]
    do
    
    if [ $i -le $rowmid ]
    then
        j = 0   
        while [ $j -l $number ]    
        do
            if [ $j -lt $start] || [$j -gt $end]
            then
                echo " "
            else
                echo "*"
            fi
            ((j++))
        done
    else
        j = 0
        while [ $j -l $number ]    
        do
            if [ $j -lt $start] || [$j -gt $end]
            then
                echo "*"
            else
                echo " "
            fi
            ((j++))
        done   
    fi

    ((start--))
    ((end++))
    ((i++))
    done
fi
