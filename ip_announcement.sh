#!/usr/bin/bash

ip=$(hostname -I)
#espeak -ven+m1 -s 130 $ip
#declaring m_IP
declare -a M_IP

for i in $(echo $ip | fold -w1  )
do
if [[ $i == *.* ]] then
espeak -p 70 "dot"
else
espeak -p 70 $i
fi
done
echo $M_IP
