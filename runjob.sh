#! /bin/bash
set -x
echo "hello world"
SERVER_NAME=$(hostname)
#[-d "~/backup"] && echo "backup exists"
#ls -1 ~/backup
if [ -d backup ] 
then
	echo "$(ls ~/backup) exists in backup dir"
fi
#touch 1 2 3 4 5 
#mv 1 2 3 4 5 ~/backup
echo "ssh to ec2 from ${SERVER_NAME}"
printf "################################################################"/n
echo "entering..."
FILE_LIST=$(ls ~/backup)
DATE=$(date +%F)
cd ~/backup
for i in $FILE_LIST
do
	echo "Renaming file ${i} to ${DATE}-${i}"
	mv ${i} ${DATE}-${i}
done
cd ~/
echo "i$FILE_LIST"
