#!/bin/bash
#@By Matthew Archer 04/09/2020

if [[ $# -ne 0 ]]; then
        echo "usage: ./add_new_users.sh < file"
        exit 0
fi
while read line; do
        first1=$(echo $line | cut -d "," -f 1)#removes first name
        last1=$(echo $line | cut -d "," -f 2)#removes the last name
        first2=$(echo $first1 | tr 'A-Z' 'a-z')#translates to lower case
        last2=$(echo $last1 | tr 'A-Z' 'a-z')#translates to lower case
        firstoflast=$(echo $last2 | cut -c 1)#extracts first letter of last name
        username=$first2$firstoflast #concatenates firstname with first letter of last name
        cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 8 > /home/archerm1/labs/lab6/pw.tmp #generate a random password
        password=$(head pw.tmp)
        head pw.tmp | /usr/bin/passwd --stdin $username > /dev/null
        echo "Adding $first1 $last1: $username, $password"
done
