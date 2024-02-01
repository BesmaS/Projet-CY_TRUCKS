#!/bin/bash

#Définition de la taille de l'image:
set terminal png size 650, 680

#Sauvegarde du graphique dans le fichier H_d1.png:
set output "images/H_d1.png"

#On choisit le style du graphique dans ce cas un histogramme:
set style data histogram

#Définition du séparateur afin de séparer les noms(axe des ordonnées) avec les chiffres (axe des abscisses):
set datafile sep ";"

#Création de la bordure des barres:
set style fill solid border -1

#Modifications pour que les barres soient moins opaque:
set style fill transparent solid 1 noborder

#Création de la graduation pour l'axe des ordonnées:
set ytics 50

#Pivote de 90° les ordonnées(la graduation et non la position de l'axe des ordonées par rapport au graphique):
set ytics rotate by 90 scale 1

#Définit la plage de valeurs de l'axe des ordonnées:
set yrange [0:250]

#Définit le titre de l'axe des abscisses:
set xlabel ' '

#Déplace les chiffres(la ligne des ordonnées afin d'avoir un histogramme correct une fois retourné ) en changeant leur position:
set ytics offset 62.5, graph 0.008

#Déplace les noms en changeant leur position:
set xtics offset 0.5, graph -0.38

#Pivote de 90° les abscisses(même chose que pour les ordonées donc juste les noms):
set xtic rotate by 90 scale 0.90  

#Déplace le graphique en laissant une marge en bas qu'on définit:
set bmargin at screen 0.35

#Déplace le graphique en laissant une marge à droite qu'on définit:
set rmargin at screen 0.90

#Création du "DRIVERS NAMES" selon les coordonnées suivantes:
set label 1 'DRIVERS NAMES' at graph 0.5, -0.5 centre rotate by 180

#Création du texte "Option d1" selon les coordonnées suivantes:
set label 2 'Option -d1 : Nb routes =f(Driver)' at graph -0.05, 0.30 left rotate by 90

#Création du texte "NB ROUTES" selon les coordonnées suivantes:
set label 3 'NB ROUTES' at graph 1.07, 0.45 left rotate by 90

#Création des barres de couleur définit en hexa (en prenant la première colone du fichier 'd1.data' pour la retranscrire sur l'axe des abscisses puis prend la deuxième colone pour créer les barres en fonctions de l'axe des ordonnées)
plot 'temp/result_d1.txt' using 2:xtic(1) notitle linecolor rgb "#649ed