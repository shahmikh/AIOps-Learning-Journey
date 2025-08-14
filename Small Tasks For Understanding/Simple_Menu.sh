#!/bin/bash

while :
do

        echo " ============================ "
        echo "  Main Manu  "
        echo "[1] show today date and time"
        echo "[2] show files in current directory"
        echo "[3] show calender"
        echo "[4] cowsay fun"
        echo "[5] exit/stop"
        echo " ============================ "
        echo " Enter your choice: "
        read choice
        case $choice in
                1)
                        echo "Today is $(date)"
                        echo "press a key...."
                        read blank
                        ;;
                2)
                        echo "files are as follow:"
                        echo $(ls -l)
                        echo "pess a key...."
                        read blank
                        ;;
                3)
                        echo $(calander)
                        echo "press a key...."
                        read
                        ;;
                4)
                        echo "Enter text you want to print with cow"
                        read text
                        echo $(cowsay $text)
                        echo "press a key...."
                        read
                        ;;
                5)
                        exit 0
                        ;;
                *)
                        echo "OPPPS!!! Please press between 1 and 5"
                        read
                        ;;

        esac
done
