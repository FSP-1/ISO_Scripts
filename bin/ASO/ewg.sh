#!/bin/bash

#Los datos de la Maquina remota y su ruta donde guardaremos la carpeta compartida
USUARIO_REMOTO="a"
IP_HOST_REMOTO="10.33.5.11"
DIRECTORIO_REMOTO="carpeta_copia"
RUTA_COMPLETA_DIRECTORIO_REMOTO="/home/$USUARIO_REMOTO/$DIRECTORIO_REMOTO/"

#Los datos de la Maquina local donde indicamos la carpeta que haremos copia
USUARIO_LOCAL="rabbit"
DIRECTORIO_LOCAL="carpeta_compartida"
RUTA_COMPLETA_DIRECTORIO_LOCAL="/home/$USUARIO_LOCAL/$DIRECTORIO_LOCAL/"

# Feacha y hora donde indicaremos el dia que se hace la copia
FECHA_Y_HORA=`date "+%d-%m-%y %H-%M-%S"`

# Archivo log que indica el dia y hora que se hace la copia con información extra que da el propio comando rsync"" 
RUTA_LOG="/home/$USUARIO_LOCAL/rsync.txt"
echo "" >> $RUTA_LOG
echo "[$FECHA_Y_HORA]Comenzando sincronizacion..." >> $RUTA_LOG

# Sincronización entre maquina local y remota
rsync -azv --delete $RUTA_COMPLETA_DIRECTORIO_LOCAL $USUARIO_REMOTO@$IP_HOST_REMOTO:$RUTA_COMPLETA_DIRECTORIO_REMOTO >> $RUTA_LOG
# La opción a es para sincronizar directorios recursivamente y mantener sus permisos y dueños 
# Luego, la opción z es para comprimir los archivos durante la transferencia
# Y Como tercera  opción tenemos a v es para que sea verboso,para saber concretamente que esta pasando a la hora de hacer la transferencia de datos y tener un mejor log.

# Notificación que se le mostrara al usario 
notify-send " Se ha echo la copia en la fecha $FECHA_Y_HORA, puedes mirarlo en "/home/$USUARIO_LOCAL/rsync.txt" "
