#! /bin/bash
echo "Enter username : "
read username
echo "Enter propername : "
read propername
if [ ${#username} -ge 3 ]
then
echo Hello $propername , How are you
else
echo "Invalid username"
fi
