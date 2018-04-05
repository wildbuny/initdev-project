#./bin/sh


echo 'export PATH=/$HOME/initdev:$PATH'  >> ~/.bash_profile 
# on viens d'ouvrir le fichier cachee .bash_profile ,
# ajouter le  chemin des fichier d'initdev et les inserer dans le fichier .bash_profile




cd 


. .bash_profile  
# on execute  le  .bash_profile 
# ainsi  le main.sh est devenue une commande de notre systeme 
# on peut executer le main.sh directement  comme commande en ajourant les arguments necessaire 




exit 
