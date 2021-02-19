#!/bin/bash
#Check modified date of file and return the time elapsed between modification and current time
#By Codarren Velvindron
#Credits: https://stackoverflow.com/questions/1819187/test-a-file-date-with-bash

CWD="$( cd "$(dirname "$0")" ; pwd -P )"
API_Request='curl -G -H "your_api_key:xxxxxxxxxxxx" https://your.api.url/your/endpoint'

file="$CWD/myfile.txt"
threshold='999'

NOW=$(date +%s)
MOD=$(date --reference="$file" +%s)

echo "#Checking file at location $file"
delta=$(($NOW-$MOD))
echo "--> $file was modified $delta secs ago"

if [[ $delta -lt $threshold ]]; then
        echo "--> File didnt exceed threshold-$threshold, exiting"
elif [[ $delta -ge $threshold ]]; then
        echo "--> File exceeded threshold-$threshold, Launch the request!"
        $API_Request
else
        echo "!! EXCEPTION caught!"
fi
