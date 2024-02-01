#!/bin/bash

echo "welcome to CY-Trucks"


if [ ! -d "temp" ]; then
    mkdir "temp"
    echo " temp created."
else
    rm -r "temp"/*
    echo " temp was emptied."
fi
if [ ! -d "images" ]; then
    mkdir "images"
    echo " images created."
else
    rm -r "images"/*
    echo " images was emptied."
fi


while ! [["$choice" =~ ^[1-6]$]]; do
    echo "Choose a treatment option:"
    echo "1) Option -d1"
    echo "2) Option -d2"
    echo "3) Option -l"
    echo "4) Option -t"
    echo "5) Option -s"
    echo "6) Help"
    echo "7) Exit"

    read -p "Enter your choice : " choice

    # Validate input
    if [[ ! $choice =~ ^[1-7]$ ]]; then
        echo "Invalid choice: $choice. Please enter a number between 1 and 7."
        continue
    fi

    case $choice in
        1) treatment/d1.sh;;
        2) treatment/d2.sh;;
        3) treatment/l.sh;;
        4) treatment/t;;
        5) treatment/s;;
        6) cat help.txt;;
        7) echo "Exiting..."; break;;
    esac
done
