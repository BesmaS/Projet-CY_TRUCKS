#!/bin/bash
#Utilisation d'AWK pour traiter le fichier CSV
awk -F';' '{
    sum[$1] += $5     
}
END {
    for (id in sum)   
    print id ";" sum[id]  
}' data.csv | sort -t ';' -k2nr | head -n 10 | sort -t ';' -k1n > temp/result_l.txt

gnuplot ./progc/l_scrpit.gnu