#!/bin/bash
clear
function SUM () {
return $(($1 + $2)) 
echo "$1 y $2"
}
r=$(SUM $1 $2)
echo "$r"
