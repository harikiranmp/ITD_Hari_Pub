#!/bin/bash
input=("$@")
max=${input[0]}
for num in "${input[@]}"; do
	if [[ "$num" > "$max" ]] ; then
		max=$num 
	fi
done
	echo "$max is the maximum of the given input numbers"
