#!/bin/bash
chmod 777 d1.sh
chmod 777 d2.sh
chmod 777 l.sh
chmod 777 t.sh
chmod 777 s.sh
chmod 777 data/data.csv
sed -i 's/\r$//' ./l.sh


logiciels=("gnuplot" "imagemagick")

for logiciel in "${logiciels[@]}"; do
    if command -v "$logiciel" &> /dev/null; then
        echo "$logiciel est déjà installé sur votre système."
    else
        echo "$logiciel n'est pas installé sur votre système. Installation en cours..."
        sudo apt-get update
        sudo apt-get install "$logiciel"
        
        if [ $? -eq 0 ]; then
            echo "$logiciel a été installé avec succès."
        else
            echo "Erreur lors de l'installation de $logiciel."
        fi
    fi
done


echo "///////////WELCOME to CY-TRUCKS/////////////////"


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


while ! [["$choice" =~ ^[1-7]$]]; do
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
        1) time ./d1.sh;;
        2) time ./d2.sh;;
        3) time ./l.sh;;
        4) time ./t.sh;;
        5) time ./s.sh;;
        6) cat help.txt;;
        7) echo "Exiting..."; break;;
    esac
done
