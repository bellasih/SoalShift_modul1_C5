#!/bin/bash
echo "Masukkan nama file yang akan didecrypt: "
read date_time
hr=${date_time:0:2}

lc="abcdefghijklmnopqrstuvwxyz"
uc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lc+=$kcl
uc+=$bsr

cat "$date_time" | tr "${lc:$hr:26}${uc:$hr:26}" "${lc:0:26}${uc:0:26}" | cat > "/home/bella/soalshift1/hasil_decrypt $date_time"
