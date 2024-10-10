#!/bin/bash
{
echo "Mi IP Publica es: $(curl -s ifconfig.me | awk -F '@' '{print $1}')"
echo "Mi usuario es: $(whoami)"
echo "El Hash de mi Usuario es: $(sudo grep -i vagrant /etc/shadow | awk -F ':' '{print $2}')"
echo "La URL de mi reposiorio es : $(git remote get-url origin)"  
} > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_VILLAGOMEZ/RTA_ARCHIVOS_Examen_20241009/Filtro_Avanzado.txt

echo "Archivo creado."
