#!/bin/bash -x

isPartTime=1
isFullTime=2
empratePerHr=40
RC=$((RANDOM%3))

if [ $isPartTime -eq $RC ]
then
	empHr=4
elif [ $isFullTime -eq $RC ]
then
	empHr=8
else
	empHr=0
fi

Salary=$(($empHr*$empratePerHr))
