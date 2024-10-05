
DISCO=$(sudo fdisk -l |grep Disk |grep "10 GiB" | awk '{print $2}' |sed 's/://g')
echo "Particiono el disco : $DISCO"
echo 

sudo fdisk $DISCO << PARTICIONES
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
PARTICIONES
echo
echo "Mis Particiones"
sudo fdisk -l $DISCO
echo

