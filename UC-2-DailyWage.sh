#!/bin/bash -x

ispresent=1
Randomcheck=$((RANDOM%2))

if [ $ispresent == $Randomcheck ]
then
	empRatePerHrs=30
	empHrs=8
	salary=$(($empRatePerHrs*$empHrs))
	#echo $salary
else
	salary=0
fi

