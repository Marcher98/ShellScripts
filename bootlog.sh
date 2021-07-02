#!/bin/bash
# @By Matthew Archer 04/09/2020
if [[ $# -ne 1 ]]; then #if number of arguments is not one... 
            echo "usage: ./bootlog.sh boot|shutdown"
            exit 0
fi
if [[ $1 == "boot" ]]; then
        printf "%s %s %s\n" "$(date)" "$HOSTNAME" "booted!" >> /home/archerm1/lab5/boot.log
        exit 0
elif [[ $1 == "shutdown" ]]; then
        printf "%s %s %s\n" "$(date)" "$HOSTNAME" "shutdown!" >> /home/archerm1/lab5/boot.log
        exit 0
fi
echo "usage: ./bootlog.sh boot|shutdown"
exit 0
