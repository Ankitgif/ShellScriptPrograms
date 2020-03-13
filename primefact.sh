#! /bin/bash
echo "Enter a number : "
read n
i=2
while [ $n -ne 1 ]
do
 
  while [ $(( n % i )) -eq 0 ]
  do
   echo "$i"
   n=$(( $n / $i ))
  done
 
 i=$(( i+1 ))
done
