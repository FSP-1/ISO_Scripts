#!/bin/bash
clear 
function NombreCompletoVAL {
read  -p "¿Cómo es tu Nombre? " NOMBRE
read  -p "¿Cómo es tu Apellido? " APELLIDO1 
read  -p "¿Cómo es segundo Apellido? " APELLIDO2 
echo 
LON1=$(expr length "$NOMBRE")
PATRON1=""
for ((i=1;$i<=$LON1;i++)); do
PATRON1=$PATRON1[a-z,A-Z," "]
done
VAL1=$(expr match "$NOMBRE" "$PATRON1")
if [ $VAL1 = $LON1 ] ;then
echo "$NOMBRE es un nombre correcto"
echo
read -p '' PAUSA
else
echo "$NOMBRE es un nombre incorrecto"
echo
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
echo
read -p '' PAUSA
else
echo "$APELLIDO1 es un apellido incorrecto"
echo
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
echo
else
echo "$APELLIDO2 es un segundo apellido incorrecto"
echo
fi
}
function CHECK2 {
echo
if [ $VAL1 = $LON1 ] ;then
  if [ $VAL2 = $LON2 ] ;then
    if [ $VAL3 = $LON3 ] ;then
    echo "Te llamas $NOMBRE $APELLIDO1 $APELLIDO2 "
    echo
    echo "Tu nombre $NOMBRE $APELLIDO1 $APELLIDO2 es correcto"

    else
    echo "Te llamas $NOMBRE $APELLIDO1 $APELLIDO2 "
    echo
    echo "Tu apellido $APELLIDO2 es falso"
    fi
  else
  echo "Te llamas $NOMBRE $APELLIDO1 $APELLIDO2 "
  echo
  echo "Tus apellidos $APELLIDO1 y $APELLIDO2 son falsos"
  fi
else
echo "Te llamas $NOMBRE $APELLIDO1 $APELLIDO2 "
echo
echo "Tu nombre $NOMBRE $APELLIDO1 $APELLIDO2 es falso"
fi
echo
read -p 'Pulsa cualquier tecla para acabar ' PAUSA
clear
}
NombreCompletoVAL
CHECK2
