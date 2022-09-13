#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=30
maxRateInMonth=250
numOfWorkingDays=25
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
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
totalEmpHr=$(($totalEmpHr+$empHr))
salary=$(($empHr*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
