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
---

## Command to get the output of df -h in CSV format
'''bash
df -h | awk '{print $1,$2,$3,$4,$5,$6}' | tr ' ' ',' | awk '{print NR ","$0}'

---

## 2025-08-13
## Bash Script: Password Strength Checker

```bash
#!/bin/bash

# Prompt user for password
echo "Enter your password: "
read -s password  # -s hides input while typing
length="${#password}"

# Check minimum length
if [[ $length -ge 8 ]]; then

    # Check for at least one number
    if echo "$password" | grep -q '[0-9]'; then

        # Check for at least one uppercase letter
        if echo "$password" | grep -q '[A-Z]'; then

            # Check for at least one lowercase letter
            if echo "$password" | grep -q '[a-z]'; then
                echo "✅ Strong password"
            else
                echo "⚠️ WEAK PASSWORD - should contain a lowercase letter"
            fi
        else
            echo "⚠️ WEAK PASSWORD - should contain an uppercase letter"
        fi
    else
        echo "⚠️ WEAK PASSWORD - should contain a number"
    fi
else
    echo "⚠️ Length is too small - minimum 8 characters"
fi

---
