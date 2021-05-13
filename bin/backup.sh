#!/bin/bash
DB_USER=root
DB_PASSWORD=root
DB_NAME=tienda
DB_TABLE=producto
FILENAME_BACKUP_01=tabla_producto.sql
FILENAME_BACKUP_02=tienda_con_create.sql
FILENAME_BACKUP_03=all.sql

mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME $DB_TABLE > $FILENAME_BACKUP_01 

mysqldump -u $DB_USER -p$DB_PASSWORD --databases $DB_NAME >$FILENAME_BACKUP_02

mysqldump -u $DB_USER -p$DB_PASSWORD --all-databases >$FILENAME_BACKUP_03