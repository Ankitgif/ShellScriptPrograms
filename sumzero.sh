#! /bin/bash
declare -A a
echo -e "Enter array size : \c"
read n
for (( i=0;i<n;i++ ))
do
read a[$i]
done

for (( i=0;i<n-2;i++ ))
do
 for (( j=i+1;j<n-1;j++ ))
 do
  for (( k=j+1;k<n;k++ ))
  do
   if ((  a[$i] + a[$j] + a[$k]  == 0 ))
   then
    echo "${a[$i]} ${a[$j]} ${a[$k]}"
   fi
  done
 done
done
