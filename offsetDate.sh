#!/bin/ksh
# Korn shell
# Add or subtract an arbitrary number of days (ndays) from a date, output format is yymmdd

if [[ $# -lt 3 ]]; then
  print "Usage: ./offsetDate.sh date +/- ndays"
  exit
fi


dt=$1
off=$2$3

off=' '$off' days'

dtStr=$dt$off

dt2=$(date -d "$dtStr" +'%y%m%d')

echo $dt2
