#!/bin/bash

if [ $1 === "" ]
then
echo"
Errado em usar
Modo de uso piriri
"
else
clear

echo "
 DOMAINS                            ADDRESSES
============================================="
for i in $(curl -s businesscorp.com.br | grep href | cut -d '"' -f2 | egrep "http|https" | cut -d "/" -f3)
do
domains=$(host $i | grep "has" | cut -d " " -f1)
ip=$(host $i | grep "has" | cut -d " " -f4)
echo "$domains          $ip"
done
fi
