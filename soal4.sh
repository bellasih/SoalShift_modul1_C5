#!/bin/bash
hr=`date +"%H"`
filename=`date +"%H:%M %d-%m-%y"`

lc="abcdefghijklmnopqrstuvwxyz"
uc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lc+=$lc
uc+=$uc

cat /var/log/syslog | tr "${lc:0:26}${uc:0:26}" "${lc:$hr:26}${uc:$hr:26}" > "$filename"
