#!/bin/bash
clear
read -p "Introduzca A (X Y Z)" AX AY AZ
read -p "Introduzca B (X Y Z)" BX BY BZ

declare -a A=( $AX $AY $AZ )
declare -a B=( $BX $BY $BZ )
declare -a S
for I in 0 1 2;do
S[$I]=$( echo "")
done

for $N in 0 1 2;do
read -p "Introduce $N" VALOR
declare -a B[$N]=$VALOR
done

declare -a  S[0]=$[${A[0]}+${B[0]}]

echo $[4%3]
