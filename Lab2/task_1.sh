#!/bin/bash

num1=$1
num2=$2
num3=$3

if (($num1 < $num2 && $num1 < $num3)); then
	echo "$num1 is the least number"
elif (($num2 < $num3)); then
	echo "$num2 is the least number"
else
	echo "$num3 is the least number"
fi
