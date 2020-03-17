#! /bin/bash
echo "Enter a number of code to generate"
read n
for (( i=1;i<=n;i++ ))
do
c1=$(shuf -i 1-50 -n 1)
c2=$(shuf -i 100-200 -n 1)
c4=$(shuf -i 1000-5000 -n 1)
echo "$c1$c2$c3$c4"
done

