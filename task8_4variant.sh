#!/bin/bash

count=0

for file1 in $1/*
do
	if [ -f $file1 ]; 
	then
		
		for file2 in $2/*
		do
			
			if [ -f $file3 ]; 
			then 
				if  cmp -s $file1 $file2;  then
					echo  "$file1 == $file2"
				fi
			fi
		done
	let count++
	fi
done

for file2 in $2/*
do
	if [ -f $file2 ]; 
	then
		let count++
	fi
done

echo "count = $count"
