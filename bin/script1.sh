#!/bin/bash
read -p "¿Cual es tu Signo Zodiaco?" ZODIACO
read -p "¿Cual es tu edad?" EDAD
case $ZODIACO in 
              Virgo)echo "Tienes espíritu crítico, precisión, reserva, paciencia y convencionalismo.";;
              Aries)echo "Eres energía y entusiasmo; avanzada y aventurera, adorais la libertad, los retos y las nuevas ideas.";;
              Tauro)echo "Eres decidido, pragmático y tienes una enorme fuerza de voluntad.";;
              *)echo "no se que signo es ese";;
esac       
