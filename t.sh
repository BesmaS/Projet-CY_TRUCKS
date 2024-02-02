#!/bin/bash
chmod 777 data/data.csv

#awk: Cree un fichier avec les villes, le nombre de traversé et de depart depuis $data
awk -F';' '
NR > 1 {
if(!seen[$1,$3]++) town_a[$3]++;
if(!seen[$1,$4]++) town_b[$4]++;
if($2==1 && !depart_seen[$1,$3]++) depart[$3]++;
}
END {
for(town in town_a)
print town ";" town_a[town]+town_b[town] ";" (town in depart ? depart[town] : 0)
}
' data/data.csv > tmp.txt

mv tmp.txt temp

gcc -o progc/t progc/t.c
./progc/t

gnuplot gnuplot/histo_t.txt
mv H_t.png images/
