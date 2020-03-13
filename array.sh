0#! /bin/bash
declare -A matrix
echo "Enter number of rows : "
read r
echo "Enter number of coloumns : "
read c
for(( i=0;i<r;i++ ))
do
 for(( j=0;j<c;j++ ))
  do
 
  echo "$( r * c )" | bc 
  read number
  n=$number
  matrix[$i,$j]=$n
 done
done
echo "Array : "
for(( i=0;i<r;i++ ))
do
 for(( j=0;j<c;j++ ))
 do
 echo -e "${matrix[$i,$j]} \c"
 done
 echo
done 
