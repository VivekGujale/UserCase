#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=50
numOfWorkinDays=25
totalSalary=0

for (( day=1; day<=25; day++ ))
do
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

salary=$(($empHr*$empRatePerHr)) #DailySalary
totalSalary=$(($totalSalary+$salary)) #MonthSalary

done
echo $salary
echo $totalSalary
