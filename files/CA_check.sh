#! /bin/bash

celist=$(cat /files/sourcelist.txt | grep -v \#)

for ce in $celist; do
    echo -n $ce": "
    message=`timeout 10 openssl s_client -connect $ce:443 2>&1 | grep ^issuer`
    echo $message
done
