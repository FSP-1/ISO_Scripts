#!/bin/bash
clear 
function Formateo {
clear
read -n -4 -p "¿Cómo quiere llamar el dipositivo?" $DISP
echo
VAL=$(expr match "$DISP"[a-z][0-9])
if [ $VAL = 4 ]; then
momdisp;
fdformat /dev/$DISP
else 
echo "No existe /dev/$DISP"
}
RESPUESTA='0'
until [ $RESPUESTA = "4" ] ;do clear
 cat <<-EOF 
BUSCADOR DE USUARIOS
1  Formatear
2  Montar
3  Desmontar
4  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)Formateo
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       2)mount  /dev/$DISP/mnt
      echo "Se ha montado el dispositivo"
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       3)umount /dev/$DISP
      echo "Se ha desmontado el dispositivo"
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      4)echo "Adiós y gracias por su visita"
      echo;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 


