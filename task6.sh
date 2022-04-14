#!/bin/bash
allParams=$#

if [ "$allParams" -eq "3" ]
then
	find $2 -type f -name "*.$3" > $1 | sort -o $1 2>&1

else
	{
        echo "Not enough parameteres, you need to enter"
        echo "1.Output file name"
        echo "2.Catagog"
        echo "3.Files extension to find"
        }>&2
fi
