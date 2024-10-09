#!/bin/bash


DISCO=$(sudo fdisk -l |grep "10 GiB" |awk '{print $2}'|awk -F ':' '{print $1}')

RTA=$(grep -c $DISCO /etc/fstab )

echo "$RTA"

if [[ $RTA == 0 ]]; then
	echo "no existe, se puede montar"
	echo "${DISCO}1 /home/vagrant/Examenes-UTN/alumno_1/parcial_1   ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}2 /home/vagrant/Examenes-UTN/alumno_1/parcial_2  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}3 /home/vagrant/Examenes-UTN/alumno_1/parcial_3  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}5 /home/vagrant/Examenes-UTN/alumno_2/parcial_1  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}6 /home/vagrant/Examenes-UTN/alumno_2/parcial_2  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}7 /home/vagrant/Examenes-UTN/alumno_2/parcial_3  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}8 /home/vagrant/Examenes-UTN/alumno_3/parcial_1  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}9 /home/vagrant/Examenes-UTN/alumno_3/parcial_2  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}10 /home/vagrant/Examenes-UTN/alumno_3/parcial_3  ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	echo "${DISCO}11 /home/vagrant/Examenes-UTN/profesores          ext4 defaults 0 0"  | sudo tee -a /etc/fstab
	sudo mount -a
fi	
sudo df -h


