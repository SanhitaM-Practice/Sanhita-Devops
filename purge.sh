#! /bin/bash
#purgring file those are older and no longer needed
echo $(find . -mtime 30)
