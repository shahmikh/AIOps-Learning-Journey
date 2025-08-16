#!/bin/bash
IP=$( cat serverIP.csv | awk 'NR>1' | cut -d , -f2 )

for i in $IP
do
	ping -c1 $i 1>> /home/username/file
	status=$(echo $?)
	if [[ $status -eq 0 ]]
	then
		echo -e "\n$i is connected\n"
	else
		echo -e "\n$i not connected\n"
	fi
done
