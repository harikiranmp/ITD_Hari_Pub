#!/bin/bash

pass="$1"

if [[ -z "$pass" ]] ; then
	echo "Usage: $0 <password>"
	exit
fi 

if [[ ${#pass} -ge 10 ]] && [[ "$pass" =~ [A-Z0-9] ]] && [[ "$pass" =~ [[:punct:]] ]] ; then
	echo "$pass: Password is strong"
else
	echo "Password should contain atleast 10 characters, one Uppercase, number and special character"
	exit 
fi 	


