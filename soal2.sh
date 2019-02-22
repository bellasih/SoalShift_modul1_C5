#!/bin/bash

echo "(2a)"
awk -F, '$7=="2012" && maximum<$10 {maximum=$1} END {print maximum}' WA_Sales_Products_2012-14.csv

echo "(2b)"
awk -F , '$1=="United States" && $7==2012 {i[$4]+=$10} END {for(x in i) print i[x], x}' WA_Sales_Products_2012-14.csv | sort -nr  | head -3 | awk '{print $2,$3}'

echo "(2c)"
awk -F , '$1=="United States" && $7==2012 && ($4 == "Personal Accessories" || $4 == "Camping Equipment" || $4 == "Outdoor Protection") {i[$6]+=$10} END  {for(x in i) print i[x], x}' WA_Sales_Products_2012-14.csv | sort -nr  | head -3 | awk '{print $2,$3}'

