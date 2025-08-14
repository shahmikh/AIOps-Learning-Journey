#!/bin/bash

ext="/home/username/*.csv"
for i in $ext
do
	if [[ -f "$i" ]]
	then
		echo " $i file exist"
		mv $i /home/username/archive
	else
		echo "File not found"
	fi
done
