#!/bin/bash
chmod 777 data/data.csv
#Utilisation d'AWK pour traiter le fichier CSV
awk -F';' '{
    sum[$1] += $5    
}
END {
    for (id in sum)  
    print id ";" sum[id]  
}' data/data.csv | sort -t ';' -k2nr | head -n 10 | sort -t ';' -k1n > temp/result_l.txt

gnuplot gnuplot/histo_l.txt
mv H_l.png images/
