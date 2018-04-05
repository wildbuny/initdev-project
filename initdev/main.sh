#.!/bin/bash


x=$1  # nom du projet 
y=$2  # language utilise pour le projet
z=$3  # le type de license 
t=$4  # arguments dedier a l'utilisation de l'arguments -git

cd
if [ -n "$x" ]; # si le nom du projet est non vide 

  then 
    if [ $x = "-help" ]; 
      then 
        echo "
— Name : initdev
"
        echo "— Syntax : main.sh [ project name ] [ language ] [ type de license ] [..|| git ]
"
        echo "— args :  project name : nom du projet	
language:  c || cpp || py || latex || BEAMER
type de license : GPL || MIT 
initialisation git : git 
 "
 echo "— author : MOUSSA Badis/badis1010@hotmail.com. 
" 
        

 else 
         if [ -n "$y" ]  # si l'arguments du language utilise pour le projet est non vide 
           then 
                 if [ $y = "c" ] || [ $y = "cpp" ] || [ $y = "py" ] || [ $y = "latex" ] || [ $y = "BEAMER" ] 
                   then 
                        if [ -n "$z" ]  # si le  champ type de license est non vide 
                            then 
                                 if [ $z = "GPL" ] || [ $z = "MIT" ]
                                    then 

                    mkdir -p $x; # creation d'un repertoire  (nom du projet)
                    cd $x ;      # acceder au reprtoire 
                    touch main.$y; #creer le fichier main
                    touch LICENSE ;  # creer le fichier license 
                    touch Makefile ; # creer le fichier Makefile
                  if [ $y = "c" ] || [ $y = "cpp" ] || [ $y = "pi" ] # 
                   then 
                    echo " projet creer avec succes  ";
                    cp $HOME/initdev/sources/main.$y  $HOME/$x/main.$y ;  #  copier le main du  fichier initdev vers  un nouveau fichier main dans le repertoire du projet
                   else 
                    if [ $y = "latex" ]
                   then 
                     cp $HOME/initdev/sources/latexMin.tex  $HOME/$x/main.$y; 
                     echo " projet creer avec succes " ;
                    else  
                     cp $HOME/initdev/sources/beamer.tex  $HOME/$x/main.$y
                     echo " projet creer avec succes ";
                    fi
                    fi
                    cp $HOME/initdev/licenses/$z  $HOME/$x/LICENSE ;      #  copier la license approprie  du fichier initdev vers un fichier LICENSE dans  le repertoire du projet 
      if [ -n "$t" ] && [ $t = "-git" ]         # si le dernier arguments est non vide et il egal a "-git" 
          then 
                    cp $HOME/initdev/gitignores/$y  $HOME/$x/.gitignore ;  #copier le fichier gitignores pout le type de languages selectionne precedement
                    git init; # executer le la commande 
      fi
           else 
             echo "Uknown arguments, please chek the help:[initdev1.bash -help] " ;  
                 fi 
             else 
              echo "rm Expected arguments, please chek the help : [initdev1.bash -help] ";
               fi 

                  
                   else 
                   echo "Uknown arguments, please check the help:[initdev1.bash -help]" ;
                 fi
           else
            echo "rm Expected arguments, please check the help : [initdev1.bash –help]";
         fi 


      fi
  
   
else

    echo "rm Expected arguments, please check the help : [initdev1.bash –help]";
fi 





   #fin du projet
exit 


