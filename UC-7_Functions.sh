#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=50
maxRateInMonth=100
numOfWorkingDays=25
totalEmpHr=0
totalWorkingDays=0

function getWorkHrs()
{
	case $RC in
		$isPartTime)
			empHrs=4
		;;
		$isFullTime)
			empHrs=8
		;;
		*)
			empHrs=0
		;;
	esac
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	RC=$((RANDOM%3))
	getWorkHrs $RC
	totalEmpHr=$((totalEmpHr+empHrs))
done

totalSalary=$((totalEmpHr*empRatePerHr))
