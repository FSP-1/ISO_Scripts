#!/bin/bash
clear
function CopiaSeguridad {
clear

      read -p 'Indica el Nombre del Usuario que quiere hacer copia de Seguridad ' USU4
cp -r /home/$USU4 /home/copias/$USU4
echo "ls -l /home/copias"
ls -l /home/copias
}
function Permiso {
read -p "Indica que usuario quiere cambiar permiso " USU1
read -p "Introduzca Archivo O Carpeta " RUTA
chown $USU1 $RUTA
ls -l $RUTA
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
}
RESPUESTA='0'
until [ $RESPUESTA = "9" ] ;do 
clear
# Esta parte del script le muestra al usuario  la tabla con las opciones que puede elegir redireccionando el texto<<-EOF hacia al  comando  cat 
 cat <<-EOF
MENÚ DEL DÍA 
1- Crear usuario. 
2- Habilitar usuario. 
3- Deshabilitar usuario. 
4- Cambiar permisos a un usuario. 
5- Copia de seguridad del directorio de trabajo de un usuario determinado. 
6- Usuarios conectados actualmente. 
7- Espacio libre en disco. 
8- Trazar ruta. 
9- Salir. 
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
# Creo una seccion case para ser posible escoger multiples opciones
case $RESPUESTA in 

1)clear
      read -p 'Indica el Nombre del Usuario que quiere crear ' USU

sudo  useradd  -d /home/$USU -m  $USU 

echo "Añadele una contraseña al usuario $USU "
passwd $USU 
ls -l /home
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
2)clear
      read -p 'Indica el Nombre del Usuario que quiere desbloquar ' USU2
sudo usermod -U $USU2
echo
    echo "El usuario $USU2 ha sido desbloqueado" 
echo
echo "sudo cat /etc/shadow | grep "$USU2""
sudo cat /etc/shadow | grep "$USU2"
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
3)
clear
      read -p 'Indica el Nombre del Usuario que quiere desbloquar ' USU3
sudo usermod -L $USU3
echo
     echo "El usuario $USU3 ha sido bloqueado" 
echo
echo "sudo cat /etc/shadow | grep "$USU3""
sudo cat /etc/shadow | grep "$USU3"
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
4) Permiso;
REPUESTA1='0'
until [ $REPUESTA1 = "8" ] ;do 
clear
  cat <<-EOF
CAMBIO DE LOS PERMISOS
1       Añadir permiso de leer
2       Quitar permiso de leer
3       Añadir permiso de escribir       
4       Quitar permiso de escribir
5       Añadir permiso de ejecutar  
6       Quitar permiso de ejecutar
7       Ver
8       Salir
EOF
read -p "Indica el permiso que quiera modificar " REPUESTA1
echo ""
case $REPUESTA1 in 

 

    1)               clear
                     chmod ugo+r $RUTA 
                     ls -ld $RUTA 
                     echo
                     read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                    ;;

    2) 
                     clear
                     chmod ugo-r $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
              ;;
                 
    3)               clear
                     chmod ugo+w $RUTA 
                     ls -ld $RUTA
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      

    4)               clear
                     chmod ugo-w $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      
    5)
                     clear
                     chmod ugo+x $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      
    6)                clear
                      chmod ugo-x $RUTA 
                      ls -ld $RUTA 
                      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
    7)
    clear
     ls -ld $RUTA 
    echo ""
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA ;;
    
    8) echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
        ;;
        
    *)
      echo "no se que opción es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
    

esac
done;;
5)CopiaSeguridad;
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
6);;
7);;
8);;
9)clear
echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
        ;;
*)echo "no se que opción es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;

esac
done
