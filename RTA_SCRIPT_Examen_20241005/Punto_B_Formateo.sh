#!/bin/bash
DISCO=$(sudo fdisk -l |grep Disk |grep "10 GiB" | awk '{print $2}' |sed 's/://g')
echo "Formateo de las particiones"
echo

sudo fdisk -l $DISCO |grep $DISCO |grep -viE 'Disk|exten' |awk '{print "sudo mkfs.ext4 "$1}' |/bin/bash

echo

echo "Particiones Formateadas"

sudo blkid 
