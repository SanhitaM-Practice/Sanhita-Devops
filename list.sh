#!/bin/bash
awk -F":" '{
print $1":"$6}' /etc/passwd > /home/sanhita/output.text


source /home/sanhita/org_usrlist.sh
