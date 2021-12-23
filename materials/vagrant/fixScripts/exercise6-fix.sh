#!/bin/bash
#add fix to exercise6-fix here

if [ $# -lt 2 ]; then
    echo "missing params"
    exit 1
fi

VAR=""
VAR1=0
for ((i=1; i<$#; i++)); do
    VAR+="${!i} "
    VAR1=$(( VAR1 + `wc -c < ${!i}`))
done

pathToOtherServer="${@: -1}"

hostname=$(hostname)
if [ "$hostname" = "server1" ];
then
        scp -r $VAR server2:$pathToOtherServer >> /dev/null
else
        scp -r $VAR server1:$pathToOtherServer >> /dev/null
fi

echo "$VAR1"
