#!/bin/bash
Date=$(date +'%m:%d:%Y')
Time=$(date +'%H:%M:%S')
echo  $Date,$Time | awk -F"," 'BEGIN { printf "%-8s %10s %15s\n","DATE","TIME","CHANGES" } { printf "%8s %10s %15s\n",$1,$2,"Changes_occurred" }'
