#! /bin/bash
echo "Enter a number : "
read n
h=0
x=1
for (( i=2;i<=$n;i++ ))
do
 h=$(echo "scale=3;$x + 1/$i"|bc )
 x=$h
done
echo "$h" 
