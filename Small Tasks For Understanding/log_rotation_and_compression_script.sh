#!/bin/bash

date=$(date +%d-%h)
base_dir="/home/username/log"
if [[ -f $base_dir/auth.log ]]
then
	cd $base_dir
	tar -czf $base_dir/auth.log_$date $base_dir/auth.log
	echo " " > auth.log
fi
