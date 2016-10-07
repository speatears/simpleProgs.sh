#!/bin/bash

# File:		running_size.sh
# Author:	Scott Peters
# Date:		30/11/15
# Version:	1.0
# Purpose:	This program uses the 'tput' command to calculate the size
#		of the current terminal window.
#		This program is adapted for recurring use and will work
#		if you decide to resize of the window while the program is
#		running.
#		The program will print the line number to standard out.

winSize()
{
    clear
    i="1"
    lines=$(tput lines)
    while true
    do
	while [ $i -le $lines ]
	do
	    if [ $i -eq $lines ]
	    then
	        echo -n "This is line $i of $lines."
		i=$[$i+1]
	    else
	        echo "This is line $i of $lines."
	        i=$[$i+1]
	    fi
	done
    done
}

trap winSize WINCH
winSize
while true
do
    :
done
