#!/bin/bash
clear
function MENU {
REPUESTA=""
while [ $RESPUESTA !="2" ]
do
  cat <<-EOF
VER LOS PERMISOS
1       Completo
2       Salir
EOF
read -p "Indica el permiso que quiera modificar " REPUESTA
echo ""
clear
case $REPUESTA in 

    1)  
        echo "Permiso Usu"
        ru=$(ls -ld $HOME/$RUTA| cut -c 2-4)
        echo "$ru"
         echo "Permiso Grupo"
        wu=$(ls -ld $HOME/$RUTA| cut -c 5-7)
        echo "$wu"
          echo "Permiso Otro"
        xu=$(ls -ld $HOME/$RUTA| cut -c 8-10)
        echo "$xu"
        MASK=""
        for P in $ru $wu $xu; do
        case $P in
          "rwx")P=7;;
          "rw-")P=6;;
          "r-x")P=5;;
          "r--")P=4;;
          "-wx")P=3;;
          "-w-")P=2;;
          "--x")P=1;;
          "---")P=0;;
      esac
      done
      MASK=$MASK$P
        echo "El Permiso completo "
        echo "$ru$wu$xu"
        echo "El Permiso Mascara "
        echo "La máscara es $MASK"
        echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
clear
;;

    2) echo "Hasta luego"
     exit;;
    *)echo "Por favor ponga una opción";;                 
esac
done
}
   if test -e $HOME/$RUTA; then
     if test -d $HOME/$RUTA; then
      echo "Es un directorio"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      clear
      MENU
    else
       echo "Es un fichero"
       echo 
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
       MENU
       fi
  else
   echo "No existe el directorio o fichero"
  fi
