#!/bin/bash
hour=`date +"%H"`
name=`date +"%H:%M %d-%m-%y"`

kcl="abcdefghijklmnopqrstuvwxyz"
bsr="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
kcl+=$kcl
bsr+=$bsr

cat /var/log/syslog | tr "${kcl:0:26}${bsr:0:26}" "${kcl:$hour:26}${bsr:$hour:26}" > "$name"
