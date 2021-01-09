#!/bin/bash -x
for (( i=0; i<10; i++ ))
do
	num[((i))]=$((100+$RANDOM%900))
done

seclargest=$(printf '%s\n' "${num[@]}" | sort -n | tail -2 | head -1)
secsmallest=$(printf '%s\n' "${num[@]}" | sort -n | head -2 | tail -1 )

echo " array is :   "${num[@]}
echo " Second largest element is: "$seclargest
echo " Second smallest element is:  "$secsmallest
