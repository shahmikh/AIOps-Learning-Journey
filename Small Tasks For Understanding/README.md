## 2025-08-12

## Below is the bash script that will check disk space, and if it’s full, it will automatically create a compressed zip file and empty the original log file.

```bash
#!/bin/bash
time=$(date +%d-%m-%y-%H)
disk_status=$(df -h | grep /dev/sda2 | awk '{print $5}' | tr -d %)

if [ "$disk_status" -le 50 ]
then
    echo "$disk_status is Good"
else
    cd /home/shahmikh/log
    tar -czf /home/shahmikh/log/zipauth-$time-.tar.gz /home/shahmikh/log/auth.log
    echo "" > auth.log
    echo "Var log alert has been archived"
fi

##
Command to get the output of df -h in CSV format
'''bash
df -h | awk '{print $1,$2,$3,$4,$5,$6}' | tr ' ' ',' | awk '{print NR ","$0}'

2025-08-13

Password manager

```bash
#!/bin/bash

echo "Enter your password: "
read password
length="${#password}"

if [[ $length -ge 8 ]]
then
        echo "$password" | grep -q [0-9]
        if [[ $? -eq 0 ]]
        then

                echo "$password" | grep -q [A-Z]
                if [[ $? -eq 0 ]]
                then

                        echo "$password" | grep -q [a-z]
                        if [[ $? -eq 0 ]]
                        then
                                echo "strong password"
                        else
                                echo "WEAK PASSWORD-should contain a lower case letter"
                        fi
                else
                        echo "WEAK PASSWORD-should contain an upper case letter"
                fi
        else
                echo "WEAK PASSWORD-should contain a number"
        fi
else
        echo "Length is too small-minimum 8 length"
fi

