#! /bin/bash
echo "Enter number of trails : "
read n
echo "Enter stake in INR : "
read stake
echo "Enter goal : "
read goal
bet=0
win=0
for(( i=0;i<n;i++ ))
do
 cash=$stake
 while [ $cash -gt 0 -a $cash -lt $goal ]
 do
  (( bet++ ))
  r=$(($(($RANDOM%10))%2))
  if (( $r == 1))
  then
   (( cash++ ))
  else
   (( cash-- ))
  fi
 done
 if (( $cash == $goal ))
 then
  (( win++ ))
 fi
done
pw=$(( 100*$win/$n | bc ))
avg=$(( $bet/$n | bc ))
echo "Number of time win : $win"
echo "Percentage of win : $pw"
echo "Average number of bet : $avg"

