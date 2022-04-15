#!/bin/bash

if test -f "$1";
then
	gcc $1 -o $2 && ./$2
else
	echo "There is no such file"
fi
