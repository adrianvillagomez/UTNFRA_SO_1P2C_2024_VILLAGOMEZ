#!/bin/bash

mkdir -p /home/vagrant/Estructura_Asimetrica/{correo/{carteros_{1..10},cartas_{1..100}},cliente_{1..100}}

tree /home/vagrant/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
