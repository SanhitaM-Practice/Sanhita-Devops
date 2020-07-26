#! /bin/bash 

#sudo useradd -m megha_0
i=1

while true
do
	sudo useradd -m megha_$i
	echo adding user megha_$i
	j=$((i+1))
	sleep 10
	if [ $j -gt $i ]
		then 
		sudo userdel megha_$j
		echo deleteing user megha_$i
	fi	

	sleep 10


done





