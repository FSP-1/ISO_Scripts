#!/bin/bash
clear
function CHECK {  
read -p "Introduzca el valor A " a
read -p "Introduzca el valor B " b
read -p "Introduzca el valor C " c
echo
LON=$(expr length "$a")
PATRON1=""
for ((i=1;$i<=$LON;i++)); do
PATRON1=$PATRON1[0-9," ",.,-]
done
VAL1=$(expr match "$a" "$PATRON1")
if [ $VAL1 = $LON ] ;then
echo
echo "El numero $a es correcto "
read -p '' PAUSA
else
echo
echo "El numero $a es incorrecto"
read -p '' PAUSA
fi
LON2=$(expr length "$b")
PATRON2=""
for ((i=1;$i<=$LON2;i++)); do
PATRON2=$PATRON2[0-9," ",.,-]
done
VAL2=$(expr match "$b" "$PATRON2")
if [ $VAL2 = $LON2 ] ;then
echo
echo "El numero $b es correcto "
read -p '' PAUSA
else
echo
echo "El numero $b es incorrecto"
read -p '' PAUSA
fi
LON3=$(expr length "$c")
PATRON3=""
for ((i=1;$i<=$LON3;i++)); do
PATRON3=$PATRON3[0-9," ",.,-]
done
VAL3=$(expr match "$c" "$PATRON3")
if [ $VAL3 = $LON3 ] ;then
echo
echo "El numero $c es correcto "
sleep 1
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
else
echo
echo "El numero $c es incorrecto"
echo
sleep 1
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear 
fi
}
CHECK;
echo
if [ $VAL1 = $LON ] ;then
  if [ $VAL2 = $LON2 ] ;then
    if [ $VAL3 = $LON3 ] ;then
r=$[$b*$b-4*$a*$c];
e=$(echo "sqrt($r)" | bc -l)
d=$[ $e  | cut -c 1-4 ];

x1=$[-$b + $d / (2*$a) | bc -l ];
x2=$[-$b - $d / (2*$a) | bc -l ];

echo "La solucíon es $x1 y $x2 $d "
echo
    else
    echo "El numero $c es falso"
    echo
    fi
  else
  echo
  echo "Los numeros $b y $c son falsos"
  fi
else
echo
echo "Los numeros $a $b $c es falso"
fi
echo
read -p 'Pulsa cualquier tecla para acabar ' PAUSA
clear
