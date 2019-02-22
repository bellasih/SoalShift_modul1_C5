#!/bin/bash

mv /home/bella/Downloads/nature.zip /home/bella/soalshift1/nature.zip
mkdir "hasil_decrypt_zip"
unzip /home/bella/soalshift1/nature.zip

i=0

for n in /home/bella/soalshift1/nature/*.jpg;
do
    base64 --decode $n | xxd -r > /home/bella/soalshift1/hasil_decrypt_zip/$i.jpg
    i=$(($i+1))
done
