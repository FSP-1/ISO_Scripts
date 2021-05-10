#!/bin/bash
clear 
function NombreCompletoVAL {
read  -p "¿Cómo es el Nombre del Alumno? " NOMBRE
read  -p "¿Cómo es el  Apellido? " APELLIDO1 
read  -p "¿Y segundo Apellido? " APELLIDO2 
echo 
LON1=$(expr length "$NOMBRE")
PATRON1=""
for ((i=1;$i<=$LON1;i++)); do
PATRON1=$PATRON1[a-z,A-Z," "]
done
VAL1=$(expr match "$NOMBRE" "$PATRON1")
if [ $VAL1 = $LON1 ] ;then
echo "$NOMBRE es un nombre correcto"
read -p '' PAUSA
else
echo "$NOMBRE es un nombre incorrecto"
read -p '' PAUSA
fi
echo 
LON2=$(expr length "$APELLIDO1")
PATRON2=""
for ((i=1;$i<=$LON2;i++)); do
PATRON2=$PATRON2[a-z,A-Z," "]
done
VAL2=$(expr match "$APELLIDO1" "$PATRON2")
if [ $VAL2 = $LON2 ] ;then
echo "$APELLIDO1 es un apellido correcto"
read -p '' PAUSA
else
echo "$APELLIDO1 es un apellido incorrecto"
read -p '' PAUSA
fi
echo 
LON3=$(expr length "$APELLIDO2")
PATRON3=""
for ((i=1;$i<=$LON3;i++)); do
PATRON3=$PATRON3[a-z,A-Z," "]
done
VAL3=$(expr match "$APELLIDO2" "$PATRON3")
if [ $VAL3 = $LON3 ] ;then
echo "$APELLIDO2 es un segundo apellido correcto"
else
echo "$APELLIDO2 es un segundo apellido incorrecto"
fi
}
clear 
RESPUESTA='0'
until [ $RESPUESTA = "6" ] ;do 
 clear
 cat <<-EOF 
LISTA DE ALUMNOS
1  Añadir
2  Ordenar
3  Ver lista
4  Eliminar a un Alumno
5  Eliminar lista
6  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)
      NombreCompletoVAL;
      echo
if [ $VAL1 = $LON1 ] ;then
  if [ $VAL2 = $LON2 ] ;then
    if [ $VAL3 = $LON3 ] ;then
      echo "$NOMBRE $APELLIDO1 $APELLIDO2" >> alumno.txt
    else
    echo "Tu apellido $APELLIDO2 es falso"
    fi
  else
  echo "Tus apellidos $APELLIDO1 y $APELLIDO2 son falsos"
  fi
else
echo "Tu nombre $NOMBRE $APELLIDO1 $APELLIDO2 es falso"
fi
echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2) sort < alumno.txt > alumnoa.txt
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       3) cat -n alumnoa.txt
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      4)read  -p "¿Cual es el número del Alumno que quire eliminar ? " r
       echo
       sed -i "$r" alumnoa.txt
       echo "El Alumno $r a sido eliminado"
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       5)rm alumno.txt
       rm alumnoa.txt
       echo "La lista a sido eliminado"
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      echo;;
      6)echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
       ;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 


