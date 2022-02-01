#!/bin/bash
clear
function CopiaSeguridad {
# Creo una function llamada CopiaSeguridad donde me copia el directorio de trabajo del usuario que pongas en la carpeta Copia
# Para que funcione se necesita antes crear la carpeta Copia en /home/
clear
read -p 'Indica el Nombre del Usuario que quiere hacer copia de Seguridad ' USU4
cp -r /home/$USU4 /home/copias/$USU4
echo ""
# Esta parte muestra al usuario que realmente se creo una copia del Directorio Trabajo del usuario.
echo "ls -l /home/copias"
ls -l /home/copias
}
function Permiso {
clear
# Le pido al usuario que me indique que usuario quiere cambiar permisos
read -p "Indica que usuario quiere cambiar permiso " USU1
# Luego le pido que fichero o carpeta quiere cambiar los permisos para el usuario que ha puesto antes
read -p "Introduzca la ruta del Archivo O Carpeta " RUTA
# Esto lo hago con el comando chown
chown $USU1:$USU1 $RUTA
# Muestro que se haya cambiado el propietario
ls -l $RUTA
echo
# Esta parte hay más en la opción 4
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
}
#Creo una tabla donde te quedarias en el script hasta que pulses la opción nº9
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
# Indico que nombre quiere que tenga el nuevo usuario
      read -p 'Indica el Nombre del Usuario que quiere crear ' USU
# Lo creo con el comando useradd -d (Crea el directorio de trabajo que tendrá) y -m (Crea automáticamente el directorio personal del usuario) y el nombre del usuario.

sudo  useradd  -d /home/$USU -m  $USU 

echo "Añadele una contraseña al usuario $USU "
# Le indico al usuario que ponga una contraseña al nuevo usuario
passwd $USU 
echo ""
# Muestro que se haya creado
ls -l /home
echo ""
echo "El usuario $USU se ha añadido a tu maquina "
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
2)clear
# Para desbloquear un usuario usamos el comando usermod -U
      read -p 'Indica el Nombre del Usuario que quiere desbloquar ' USU2
sudo usermod -U $USU2
echo
    echo "El usuario $USU2 ha sido desbloqueado" 
echo
# Le muestro que el usuario ha sido desbloqueado ,es decir , el usuario en el fichero shadow no aparece con un ! al lado de su nombre.  
echo "sudo cat /etc/shadow | grep "$USU2""
sudo cat /etc/shadow | grep "$USU2"
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
3)
clear
# Para bloquear un usuario usamos el comando usermod -L
      read -p 'Indica el Nombre del Usuario que quiere desbloquar ' USU3
sudo usermod -L $USU3
echo
     echo "El usuario $USU3 ha sido bloqueado" 
echo
# Le muestro que el usuario ha sido bloqueado ,es decir , el usuario en el fichero shadow  aparece con un ! al lado de su nombre.  
echo "sudo cat /etc/shadow | grep "$USU3""
sudo cat /etc/shadow | grep "$USU3"
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
4) Permiso;
#Creo una tabla donde te quedarias en el script hasta que pulses la opción nº8
REPUESTA1='0'
until [ $REPUESTA1 = "8" ] ;do 
clear
# Esta parte del script le muestra al usuario  la tabla con las opciones que puede elegir redireccionando el texto<<-EOF hacia al  comando  cat 
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
    # Al escoger esta opción, añadira el permiso de leer al fichero o Directorio
                     chmod ugo+r $RUTA 
                     ls -ld $RUTA 
                     echo
                     read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                    ;;

    2) 
                     clear
    # Al escoger esta opción, quitara el permiso de leer al fichero o Directorio
                     chmod ugo-r $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
              ;;
                 
    3)               clear
    # Al escoger esta opción, añadira el permiso de escritura al fichero o Directorio
                     chmod ugo+w $RUTA 
                     ls -ld $RUTA
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      

    4)               clear
    # Al escoger esta opción, quitara el permiso de escritura al fichero o Directorio
                     chmod ugo-w $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      
    5)
                     clear
    # Al escoger esta opción, añadira el permiso de ejecutar al fichero o Directorio
                     chmod ugo+x $RUTA 
                     ls -ld $RUTA 
                     echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
                      
    6)                clear
    # Al escoger esta opción, quitara el permiso de ejecutar al fichero o Directorio
                      chmod ugo-x $RUTA 
                      ls -ld $RUTA 
                      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
                      ;;
    7)
    clear
# Esta opción muestra al usuario los permisos que tiene el fichero o directorio, para así ver los cambios mejor
     ls -ld $RUTA 
    echo ""
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA ;;
    
    8)
# Si el usuario escoge esta opción, el script rompera el bucle y se acabaria
    echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
        ;;
        
    *)
# Si el usuario no escoge cualquira de las opciones que haya, el script le dira al usuario que no sabe que opción le esta dando y volvera de nuevo al la tabla
      echo "no se que opción es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
    

esac
done;;
5)CopiaSeguridad;
# Esta parte ejecuta la function CopiaSeguridad
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
6)
clear
# Aca enseña al usuario los usuarios que están conectados con el comando who
      echo 'Estos serían los usuarios conectados actualmente en el sistema ' 
      who
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
7)
clear
# Muestra con el comando df -h el espacio libre de los discos que tengas actualmente
     echo 'Este es el espacio libre de tus discos ' 
      echo
   df -h
      sleep 1
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
8)
clear
# Con el comando traceroute trazo la ruta que me ponga el usuario
      read -p 'Pon la IP o URL que quieras trazar la ruta ' ROUTE
      echo
      traceroute $ROUTE
      sleep 1
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
;;
9)clear
# Si el usuario escoge esta opción, el script rompera el bucle y se acabaria
echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
        ;;
*)
# Si el usuario no escoge cualquira de las opciones que haya, el script le dira al usuario que no sabe que opción le esta dando y volvera de nuevo al la tabla
echo "no se que opción es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;

esac
done
