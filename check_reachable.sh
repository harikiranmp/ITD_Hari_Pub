#!/bin/bash

url=$1

if [[ -z "$url" ]] ; then
	echo "usage: $0 <url>"
	exit
fi 

status=$(curl -s --head "$url" | head -1 | awk '{print $2}')

echo "$status"

if [[ "$status" =~ ^(2|3)[0-9]{2}$ ]] ; then
	echo "$url is reachable"
elif [[ "$status" =~ ^(4|5)[0-9]{2}$ ]] ; then
	echo "$url is either invalid or ureachable"
else
	echo "unexpected status code"
fi 
