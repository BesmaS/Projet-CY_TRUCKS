#!/bin/bash

LC_NUMERIC=C awk -F ";" '
{
  current_driver = $6;
  total_d[current_driver] +=$5;
}
END {
  for (driver in total_d){
    printf "%s;%.6f\n" , driver , total_d[driver];
  }
}' data.csv | LC_NUMERIC=C sort -t ";" -k2,2nr | head -n 10 > temp/result_d2.txt
