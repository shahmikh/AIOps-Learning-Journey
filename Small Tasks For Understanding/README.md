## 2025-08-12
## Below is the bash script that will check disk space and if its full then it will automatically create a compress zip file and empty the orignal log file

#/bin/bash
time=$(date +%d-%m-%y-%H)
disk_status=$(df -h  | grep /dev/sda2 | awk '{print $5}' | tr -d %)
if [ "$disk_status" -le 50 ]
then
echo "$disk_status is Good"
else
cd /home/shahmikh/log
tar -czf /home/shahmikh/log/zipauth-$time-.tar.gz /home/shahmikh/log/auth.log
echo "" > auth.log
echo "Var log alert has been archivedd"
fi
