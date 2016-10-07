#!/bin/bash

# File:		terminal_size.sh
# Author:	Scott Peters
# Date:		1/12/15
# Version:	1.5
# Purpose:	This program calculates how large the current terminal
#		window is and outputs on each line of the window which
#		line it is.

clear
lines=$(tput lines)
i="1"
while [ $i -lt ${lines} ]
do
    echo "This is line $i of $lines."
    i=$[$i+1]
done
