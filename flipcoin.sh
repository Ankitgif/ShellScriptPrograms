#! /bin/bash
echo "Enter number of times to flip : "
read n
t=0
h=0
for (( i=0;i<n;i++ ))
do
r=$(($(($RANDOM%10))%2))
if (( $r == 1 ))
then
 (( h++ ))
else
 (( t++ ))
fi
done
echo "number of heads : $h"
echo "number of tails :  $t"
hp=$(( 100*$h/$n | bc ))
echo "percentage of heads is : $hp"
tp=$(( 100*$t/$n | bc ))
echo "percentage of tails is : $tp"

