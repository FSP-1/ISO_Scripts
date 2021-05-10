#!/bin/bash
clear
read -p "Introduzca un numero del vector AX " aX
read -p "Introduzca un numero del vector AY " aY
read -p "Introduzca un numero del vector AZ " aZ
read -p "Introduzca un numero del vector BX " bX
read -p "Introduzca un numero del vector BY " bY
read -p "Introduzca un numero del vector BZ " bZ


declare -a A=( $aX $aY $aZ )
declare -a B=( $bX $bY $bZ )
declare -a  S=( $[${A[0]}+${B[0]}]  $[${A[1]}+${B[1]}]  $[${A[2]}+${B[2]}] ) 
RESPUESTA='0'
until [ $RESPUESTA = "7" ] ;do 
 clear
 cat <<-EOF 
VECTORES
1  Vector (AX + BX)
2  Vector (AY + BY)
3  Vector (AZ + BZ)
4  Vector (AX,AY,AZ) + (BX,BY,BZ)
5  Ver los numeros de los vectore A
6  Ver los numeros de los vectore B 
7  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)clear
      echo "La Suma de los Vectores (AX + BX) es ${S[0]}"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       2)clear
      echo "La Suma de los Vectores (AY + BY) es ${S[1]}"
      echo 
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       3)clear 
       echo "La Suma de los Vectores (AZ + BZ) es ${S[2]}"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       4)clear
      echo "La Suma del Vector (AX,AY,AZ) + (BX,BY,BZ) es (${S[0]},${S[1]},${S[2]})"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      5)clear
      echo "$aX, $aY, $aZ"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      6)clear
      echo "$bX, $bY, $bZ"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      7)echo "Adiós y gracias por su visita"
      echo
      clear
      ;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 



