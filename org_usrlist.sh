#! /bin/bash

#SM : used set -x for debugging purpose
#set -x


#SM : in the first ever iteration goes to else part and creates the row heading and first user change entry
if [ -s /var/log/user_changes ]
then
	echo "INFO: Adding changes to user_changes in /var/log/user_changes"
else
	echo "INFO: Creating file user_changes in /var/log/user_changes"
	echo $Date,$Time | awk -F"," 'BEGIN { printf "%-8s %10s %16s\n","DATE","TIME","CHANGES" }' >> /var/log/user_changes
fi


function date_time ()
{
	Date=$(date +'%m:%d:%Y')
	Time=$(date +'%H:%M:%S')
	echo $Date,$Time | awk -F"," '{ printf "%8s %10s %18s\n",$1,$2,"Changes_occurred" }'
}



hash_1="$(md5sum output.text | awk '{print $1}')"
#echo $hash_1

if [ -f /var/log/current_users ]
then
	hash_2=$(cat /var/log/current_users)
	#echo $hash_2
	
	if [ $hash_1 != $hash_2 ] 
	then
	        #date_time
		Ch_R=$( date_time )
		echo $Ch_R  >> /var/log/user_changes
		echo $hash_1 > /var/log/current_users

	else
		echo $hash_1 > /var/log/current_users
		cat /var/log/current_users

	fi	
	
else
   echo $hash_1 > /var/log/current_users

fi



