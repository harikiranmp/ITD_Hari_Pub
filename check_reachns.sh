#!/bin/bash

url=$1

if [[ -z "$url" ]] ; then
	echo "usage: $0 <url>"
exit 
fi

status=$(nslookup "$url")

if [[ $status =~ 'find' ]] ; then
	echo "$url is invalid"
else
	echo "$url is up and running"
fi
