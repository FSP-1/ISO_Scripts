#!/bin/bash
clear

for ((i=50;$i>=0;i--)); do date=$(date); echo " $i" $date  ;sleep 1 ;done >> a.txt
