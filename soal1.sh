#!/bin/bash

mv /home/bella/Downloads/nature.zip /home/bella/modul1/nature.zip
mkdir "hasil_decrypt_zip"
unzip /home/bella/modul1/nature.zip

i=0

for file_jpg in /home/bella/modul1/nature/*.jpg;
do
    base64 --decode $n | xxd -r > /home/bella/modul1/hasil_decrypt_zip/$i.jpg
    i=$(($i+1))
done
