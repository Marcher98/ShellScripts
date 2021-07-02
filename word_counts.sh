#!/bin/bash
#Matthew Archer 02/04/2020
LINENUM=1
TOTAL=0
while read LINE
        do
                N=$(echo $LINE | wc -w )
                echo "Line $LINENUM: $N"
                ((LINENUM++))
                TOTAL=$((TOTAL+N))
        done
printf "Total: $TOTAL\n"
