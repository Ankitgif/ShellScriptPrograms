#! /bin/bash
echo "Enter value of t : "
read t
echo "Enter value of v : "
read v
w=$(echo " scale=3; 35.74 + 0.6215 * $t  + 0.4275 * $t * v^0.16" | bc -l )
echo "$w"
