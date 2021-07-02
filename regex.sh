#!/bin/bash

REGEX="<[A-Za-z]+>"

printf "Please enter a string to match to the REGEX: "
read STRING

if [[ "$STRING" =~ $REGEX ]]; then
	echo "The string matches the REGEX."
else
	echo "The string does not match the REGEX."
fi
