#!/bin/bash

prime_check(){
num=$1
is_prime=1

if [[ $num -le 1 ]] ; then
	is_prime=0
else
for (( i=2; i<num ; i++)) ; do
	if [[ $((num % i)) -eq 0 ]] ; then
		is_prime=0
	break
	fi
done
fi

if [[ $is_prime -eq 1 ]] ; then
	echo "$num: The number is prime"
else
	echo "$num: The number is not prime"
fi
}

for num in "$@" ; do
prime_check "$num"
done
