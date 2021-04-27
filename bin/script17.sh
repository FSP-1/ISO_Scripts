#!/bin/bash
clear
read -n 10 -p "introduzca la fecha de nacimiento (MM/DD/AAA): " FECHA
VAL=$(expr match "$FECHA" [0-1][0-9][/][0-3][0-9][/][1,2][0,9][0-9][0-9])
echo
DIA=$(echo $FECHA | cut -c 4-5)
MES=$(echo $FECHA | cut -c 1-2)
ANYO=$(echo $FECHA | cut -c 7-10)
FECHA2=$ANYO$MES$DIA
VALOR=$(date -I | tr -d "-")
DIFERENCIA=$[$VALOR-$FECHA2]
if [ $VAL = 10 ]; then
 date --date=$FECHA
if test $DIFERENCIA -ge 18000; then
echo "Usted es mayor de edad"
else
echo "Usted no es mayor de edad"
fi
else
echo "$FECHA es una fecha incorrecta"
fi

