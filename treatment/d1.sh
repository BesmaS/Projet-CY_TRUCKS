#!/bin/bash
chmod 777 data/data.csv

cat ./data/data.csv | cut -f1,6 -d ";" | sort | uniq | cut -f2 -d ";" | sort | uniq -c | sort -nr | head -10 | awk '{print $2" "$3";" $1}'> ./temp/result_d1.txt

cat temp/result_d1.txt
