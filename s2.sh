#!/bin/bash

if [ $# -ne 2 ] ; then
	echo "Input values are not equal to 2"
	echo "provide input in this format: $0 <num1> <num2>"
	exit
fi

a=$1
b=$2

if [ $a -eq $b ] ; then
	echo "Provided values are equal"
ls
else 
	echo "Provided values are not equal"
fi

