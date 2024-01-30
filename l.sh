#!/bin/bash
#Utilisation d'AWK pour traiter le fichier CSV
awk -F';' '{
    somme[$1] += $5     
}
END {
    for (id in somme)   
    print id ";" somme[id]  
}' data.csv | sort -t ';' -k2nr | head -n 10 | sort -t ';' -k1n > temp/result_l.txt