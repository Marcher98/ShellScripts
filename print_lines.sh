#!/bin/bash
#Matthew Archer 02/03/2020
NUMARGS=$#

if [ $NUMARGS -ne 3 ] ; then #error checking
        echo "Invalid amount of arguments."
        exit 1
fi

FILENAME=$1 #reads the first argument as the FILENAME
FIRST=$2
LAST=$3
if test -f "$FILENAME"; then
        #echo "$FILENAME exists"
        NUMOFLINES=$(wc -l < "$FILENAME")
        if [ $NUMOFLINES -lt $LAST ] ; then
                echo "The last line number is too big."
                exit 1
        fi
        if [ $FIRST -ge $LAST ] ; then #error checking
                echo "First number cannot be bigger than the second"
                exit 1
        fi

else
        echo "$FILENAME does not exist"
        exit 1
fi
iter=0
exec <${FILENAME} # this command puts our file into stdin
while read ; do # this line reads each line into a variable named REPLY
iter=$(( $iter + 1 )) # maintain line count
	if [ "$iter" -ge "${FIRST}" ] ; then
        	if [ "$iter" -gt "${LAST}" ] ; then
			exit 1
		else
			echo "${REPLY}" #output
                fi
        fi
done
