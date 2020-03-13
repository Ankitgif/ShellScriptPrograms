#! /bin/bash
echo "Enter value of x : "
read x
echo "Enter value of y : " 
read y
d=$(echo "sqrt($x^$x) + sqrt($y^$y)" | bc -l )
echo "$d"
