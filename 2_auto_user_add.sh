#! /bin/bash 

#sudo useradd -m megha_0
i=1

while (( $i < 10 ))
do
	sudo useradd -m megha_$i
	echo adding user megha_$i
	i=$((i+1))
	sleep 30



done





