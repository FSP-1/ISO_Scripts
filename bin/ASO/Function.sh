#!/bin/bash
clear
function escribe {
v1=$(echo "200")
v2=$(echo "BBBB")
v3=$(echo "Breve")
echo "v1=$v1; v2=$v2 ;v3=$v3"
}
v1=$(echo "100") v2=$(echo "AAAA")

echo "Antes de la fuction v1=$v1 y v2=$v2"
echo ""
escribe;
echo ""
echo "Despues de la fuction v1=$v1 ; v2=$v2 ; v3=$v3"
echo "$#"
echo "$@"
echo "$2"
echo "$?"
