#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=200
empRatePerHr=40
numOfWorkingDays=25

totalEmpHr=0
totalWorkingDys=0

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

function getEmpWage()
{
        echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        RC=$((RANDOM%3))
        getWorkHrs $RC
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary=$(getEmpWage $totalEmpHr)
echo ${dailyWage[@]}

echo ${!dailyWage[@]}
echo ${#dailyWage[@]}
