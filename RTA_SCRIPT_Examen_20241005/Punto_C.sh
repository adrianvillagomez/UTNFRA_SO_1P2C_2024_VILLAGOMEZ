#!/bin/bash

LISTA=$1
USER_HASH=$2
HASH=$(sudo grep -i $USER_HASH /etc/shadow | awk -F ':' '{print $2}')


ANT_IFS=$IFS
IFS=$'\n'
for LINEA in `cat $LISTA | grep -v ^#`
do
	USUARIO=$(echo $LINEA |awk -F ',' '{print $1}')
	GRUPO=$(echo $LINEA |awk -F ',' '{print $2}')
	if [ $(grep $GRUPO -c /etc/group) == 0 ];then
		sudo groupadd $GRUPO
		sudo useradd -m -p "$HASH" -s /bin/bash -G $GRUPO $USUARIO
	else
		sudo useradd -m -p "$HASH" -s /bin/bash -G $GRUPO $USUARIO
	fi
	echo "USUARIO CREADO"	
	echo "Usuario:$(sudo grep -i $USUARIO /etc/passwd)"
	echo "Grupo:$(id $USUARIO)"
	echo "pass:$(sudo grep -i $USER_HASH /etc/shadow | awk -F ':' '{print $2}')"
	echo "-----------------------------------------------------------------------"
	echo
	
done
	echo  ls -l /home
IFS=$ANT_IFS

