#!/bin/bash
clear
function mes2 {  
mes=('enero' "febrero" "marzo" "abril" "mayo" "junio" "julio" "agosto" "septiembre" "octubre" "nobiembre" "diciembre")  
estaciones=('invierno' 'primavera' 'verano' 'otoño')
 for i in ${mes[@]}
 do 
case $i in
enero)   echo "${mes[@]:0:1}      == ${estaciones[@]:0:1}"
;;
febrero)   echo "${mes[@]:1:1}    == ${estaciones[@]:0:1}"
;;
marzo)   echo "${mes[@]:2:1}      == ${estaciones[@]:1:1}"
;;
abril)   echo "${mes[@]:3:1}      == ${estaciones[@]:1:1}"
;;
mayo)  echo "${mes[@]:4:1}       == ${estaciones[@]:1:1}"

;;
junio)  echo "${mes[@]:5:1}      == ${estaciones[@]:2:1}"

;;
julio)   echo "${mes[@]:6:1}      == ${estaciones[@]:2:1}"

;;
agosto)  echo "${mes[@]:7:1}     == ${estaciones[@]:2:1}"

;;
septiembre)  echo "${mes[@]:8:1} == ${estaciones[@]:3:1}"

;;
octubre)  echo "${mes[@]:9:1}    == ${estaciones[@]:3:1}"

;;
nobiembre)  echo "${mes[@]:10:1}  == ${estaciones[@]:3:1}"

;;
diciembre)  echo "${mes[@]:11:1}  == ${estaciones[@]:0:1}"
;;
esac
   done
} 
mes2; 
