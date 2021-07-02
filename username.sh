#!/bin/bash
 
if [[ $# -ne 1 ]]; then
	echo "error, wrong number of arguments!"
	exit 1
fi

search=$(cut -d ':' -f 1 /etc/passwd)

for un in $search; do
	if [[ "$un" = "$1" ]]; then
		echo "$1 exists!"
		exit 0
	fi
done
 
echo "$1 does not exist!"
