#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=40
RC=$((RANDOM%3))
case $RC in
	$isPartTime)
	empHr=4
	;;
	$isFullTime)
	empHr=8
	;;
	*)
	empHr=0
	;;
esac

salary=$(($empHr*$empRatePerHr))
echo $salary
