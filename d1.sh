#!/bin/bash
chmod 777 data/data.csv

cat data/data.csv | cut -f1,6 -d ";" | sort | uniq | cut -f2 -d ";" | sort | uniq -c | sort -nr | head -10 | awk '{print $2" "$3";" $1}'> temp/result_d1.txt

gnuplot gnuplot/histo_d1.txt
convert H_d1.png -rotate 90 H_d1.png
mv H_d1.png images/
