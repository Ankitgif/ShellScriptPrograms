#! /bin/bash
echo "Enter username : "
read username
pname=Ankit
if [ ${#username} -ge 3 ]
then
echo Hello $pname , How are you
else
echo "Invalid username"
fi
