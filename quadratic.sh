#! /bin/bash
echo "Enter value of a : "
read a
echo "Enter value of b : "
read b
echo "Enter value of c : "
read c
d=$(echo "$(( b * b )) - 4 * $a * $c" |bc)
echo "Determinant : $d" 
if (( $d > 0 ))
then
r1=$(echo " scale=2;(- $b + sqrt($d)) / (2*$a)" | bc -l )
r2=$(echo " scale=2;(- $b - sqrt($d)) / (2*$a)" | bc -l )
echo "value of root1 : $r1"
echo "value of root2 : $r2"
elif (( $d == 0 ))
then
r1=$(echo "- $b / (2*$a)" | bc -l )
r2=$r1
echo "value of root1 : $r1"
echo "value of root2 : $r2"
else
echo "imaginary"
fi

