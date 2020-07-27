#! /bin/bash 

#sudo useradd -m megha_0
i=1

while (( $i < 10 ))
do
	sudo useradd -m megha_$i
	echo "adding user megha_$i"
	i=$((i+1))
	sleep 2



done


for i in 9 8 7 6 5 4 3 2 1
do

	sudo userdel -r megha_$i
	echo "Deleting user megha_$i"
#	i=$((i-1))
	sleep 2
done

