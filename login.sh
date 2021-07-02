#!/bin/bash
# A login script to welcome any user, written by Matthew Archer 2/3/2020
TIME=$(date "+%l:%M%P")
FULLNAME=$(grep "^$USERNAME:" /etc/passwd | awk -F: '{print $5}')
echo "Welcome to $HOSTNAME, $FULLNAME!"
echo "You are logged in as $USERNAME and your current directory is $PWD."
echo "The time is $TIME".
