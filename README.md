# Projet-CY_TRUCKS

Programme de traitement de données


# Installation 

    Install and setup gnuplot and imagemagick with apt-get on debian distrib

  sudo apt-get install gnuplot

  sudo apt-get install imagemagick

   
  chmod 777 main.sh
  


# Objectif réussis
    Nous avons réussis a finir ce projet avec les bons traitements et avec les bons graphes.

# Problèmes rencontrés
    Nous avons eu un probleme au niveau de l'assemblage de la partie gnuplot et la partie shell car gnuplot avait du mal à se lancer sur le PC, on a eu du mal à faire les traitements t et
    s,  plus précisément avec plusieurs AVL, la copie du premier dans le deuxième et le nouveau tri, l'ajout des consignes pendant les vacances, le tri par l'alphabétique, la connexion de       CYtech, l'affichage des graphes,surtout pour le -s, par rapport aux max, min et à la moyenne + le remplissage, la doc aussi, il n'y avait pas assez d'info sur gnuplot.
    La veille du rendu, il y a eu un véritable drame, le programme se compilait et tous fonctionnaient, ce qui n'était plus le cas 5 minutes après, 
    rien ne fonctionnait même ce qui fonctionnait depuis des semaines, on a découvert qu'il s'agissait de la corruption du fichier data.csv, qui se vidait quand nous l'utilisions, il était     toujours là mais vide, nous l'avons résolu quand même.
    Il a donc fallut télécharger une seconde fois le fichier ce qui a résolu le problème.
    

# Instructions

Tout d'abord votre fichier data.csv doit être stocké dans un dossier nommé data.

1- Donner les droits d'execution au fichier main.sh avec la commande 
chmod 777 main.sh

lancer le programme 
avec ./man.sh 

2- Choisir le numéros de l'option que l'on veut exectuer:
    - 1: option d1 : Trie les conducteurs par ordre décroissant en fonction du nombre de trajets et affiche un graphique des 10 principaux conducteurs.
    - 2: option d2 : calcule la somme des distances pour toutes les étapes associées à chaque conducteur et affiche un graphique des 10 plus longues distances, triées par ordre décroissant.
    - 3: option l : Récupère la distance totale pour chaque voyage et crée un graphique des 10 plus longues distances, triées par numéro d’identification de voyage ascendant.
    - 4: option t : Crée un graphique des 10 principales villes avec le plus grand nombre de voyages, trié par ordre alphabétique.
    - 5: option s : Génère un graphique des 50 premiers trajets avec la plus grande différence entre les distances maximale et minimale.
    - 6: help
    - 7: Quitter le programme

    
3- Ouvrir les fichiers .png dans le dossier "images" qui a été créer afin de voir les histogrammes qui ont été créer


# Fonctionnement du programme
En premier il y a la compilation, après ça il faudra choisir entre les 7 options numérotés, (d1, d2, l, t, s, help et exit respectivement), ce qui met les graphes dans des dossiers images, après io faudra juste les ouvrir


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


| Nom             | Prénom   | Groupe|
|---              |---       |---    |
| SAIDI           | Besma    | MI2   |
| LOISON          | Camille  | MI2   |
| NTOOGUE         |Khephren  | MI2   |
