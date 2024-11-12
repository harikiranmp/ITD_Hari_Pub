#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <path>"
	exit
fi

if [[ -e "$1" ]] ; then
	echo "Valid path: $1"

	if [[ -d "$1" ]] ; then
		echo "$1 is a directory"
	elif [[ -f "$1" ]] ; then
		echo "$1 is a file"
	fi
else
	echo "Invalid path"
fi
