#!/bin/bash

echo 

read -p "Enter a number: " entered_no

echo

if [ $entered_no -gt 100 ]
then
    echo "$entered_no is greater than 100"
elif [ $entered_no -lt 100 ]
then
    echo "$entered_no is smaller than 100"
else
    echo "$entered_no is equal to 100"
fi

echo
