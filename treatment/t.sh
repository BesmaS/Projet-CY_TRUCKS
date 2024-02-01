#!/bin/bash

cat data.csv | cut -d ';' -f1,2,3,4 > data_t.txt