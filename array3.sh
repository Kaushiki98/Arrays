#!/bin/bash 
echo "Enter a number: "
read num
primefact() {
while [ $(($num%2)) -eq 0 ]
do
	num=$(( $num/2 ))
	#echo "$num"
done
for((i=3; i<=$(($num*2)); i=$i+2))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		num=$(( $num/i ))
		#echo "$num"
	done
	if [ $num -gt 2 ]
	then
		echo "$num"
	exit
	fi
done
}
primefact
