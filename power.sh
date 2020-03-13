#! /bin/bash
n=5
i=0
while [ $i -le $n ]
do
echo " 2 ^ $i " | bc  -l
(( i++ ))
done
