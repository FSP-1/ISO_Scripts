#!/bin/bash
clear
function NAME {
  read -p "¿Cuàl es tu Nombre? " NOMBRE
  read -p "¿Y tus apellidos? " APELLIDOS
LON1=$(expr length "$NOMBRE")
PATRON1=""
for ((i=1;$i<=$LON1;i++)); do
PATRON1=$PATRON1[a-z,A-Z," "]
done
VAL1=$(expr match "$NOMBRE" "$PATRON1")
if [ $VAL1 = $LON1 ];then
if [ $NOMBRE = "Franco" ];then
echo
echo "Hola $NOMBRE $APELLIDOS"
else 
echo
echo "No te conozco"
echo
fi
else
echo
echo "Pon bien tu nombre $VAL1 $LON1"
fi
}
R="0"
until [ $R = "2" ];do
cat <<-EOF
LISTA NOMBRE
1 Pon tu nombre
2 Salir
EOF
echo 
read -p "Elige una opción " R
echo
case $R in 
1)
NAME;
read -p "" c
clear;;
 
2)echo "Adios"
read -p "" b
clear;;
*)echo "No se esa opción"
esac
done
