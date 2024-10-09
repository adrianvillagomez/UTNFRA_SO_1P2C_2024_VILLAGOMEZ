#!/bin/bash

sudo chown p1c2_2024_A1:p1c2_2024_A1 /home/vagrant/Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /home/vagrant/Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /home/vagrant/Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /home/vagrant/Examenes-UTN/profesores

sudo chmod 750 /home/vagrant/Examenes-UTN/alumno_1
sudo chmod 760 /home/vagrant/Examenes-UTN/alumno_2
sudo chmod 700 /home/vagrant/Examenes-UTN/alumno_3
sudo chmod 775 /home/vagrant/Examenes-UTN/profesores

echo "Propiedad y permisos cambiados"

ls -ld /home/vagrant/Examenes-UTN/alumno_1
ls -ld /home/vagrant/Examenes-UTN/alumno_2
ls -ld /home/vagrant/Examenes-UTN/alumno_3
ls -ld /home/vagrant/Examenes-UTN/profesores


