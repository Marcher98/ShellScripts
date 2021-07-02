#!/bin/bash

if [ $# -ne 2 ]; then
	echo "There needs to be two arguments."
	exit 1
fi

if ! [ $1 -le $2 ]; then
	echo "The first argument needs to be less than or equal to the second."
	exit 1
fi
seq $1 $2
