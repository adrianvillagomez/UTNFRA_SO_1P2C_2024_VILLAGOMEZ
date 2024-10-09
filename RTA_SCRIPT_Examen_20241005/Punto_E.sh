#!/bin/bash

cat /proc/meminfo |grep MemTotal >>  /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_VILLAGOMEZ/RTA_ARCHIVOS_Examen_20241009/Filtro_Basico.txt

sudo dmidecode -t chassis |grep -E 'Chassis|Manufacturer' >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_VILLAGOMEZ/RTA_ARCHIVOS_Examen_20241009/Filtro_Basico.txt

