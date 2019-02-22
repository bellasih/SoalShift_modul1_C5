#!/bin/bash

digit='0123456789'
lower='abcdefghijklmnopqrstuvwxyz'
upper='ABCDEFGHIJKLMNOPQRSTUVWXYZ'

create_pass() { echo ${1:RANDOM%${#1}:1}; }
create_format_password() {
  create_pass $digit
  create_pass $lower
  create_pass $upper
  for i in $( seq 1 $(( 9 )) )
     do
        create_pass $digit$lower$upper
     done
 }

i=1

while true;
do
if ! [[ -f password$i.txt ]];
   then
   while true; do
   	create_format_password | sort -R | tr -d '\n' > random_pass.txt
	random=$(awk '{print $1}' random_pass.txt)
	if [[ "$(awk -v random="$random" 'pw==$0{print $0}' password*.txt)" -eq "" ]]; then
		echo "$random" > password$i.txt
		break
	fi
	done
	break
   fi
   i=$((i+1))
done
