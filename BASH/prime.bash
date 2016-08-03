# !/bin/bash
# Script: prime.sh
# Purpose: determine all prime numbers and add them all together
# Author: Ryan C. Rammell
##############################################################################################################

echo -n "Enter a prime number that comes after 11."
read primen
i = 2
z = $(($primen/2))

while [ $i -lt $primen ]
do
	if [ `expr $primen % $i` -eq 0 ] #This statement means the remainder of the prime number
	then
		echo "$primen is not a prime number"
		echo "Since it is divisible by 1$ which is not equal to $z"
		exit
	fi
	i=`expr $i + 1` #Notice that these are back ticks not apaostrophies.
done

echo "$num is a prime "
