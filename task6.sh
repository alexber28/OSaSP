
#!/bin/bash
allParams=$#
catalog=$2

if [ "$allParams" -eq "3" ]
then
	if [ -d "$catalog" ] 
	then
		find $2 -type f -name "*.$3" | sort > $1
	else
		echo "There is no such catalog" >&2
	fi
else
	{
	        echo "Not enough parameteres, you need to enter"
	        echo "1.Output file name"
	        echo "2.Catagog"
	        echo "3.Files extension to find"
        }>&2
fi
