#!/bin/bash
for (( i=0; i<10; i++ ))
do
        num[i]=$((100+$RANDOM%900))
done
echo ${num[@]}
printf "\n"

for (( i=0; i<${#num[@]}; i++ ))
do
        for (( j=i+1; j<${#num[@]}; j++ ))
        do
                if [[ ${num[$i]} -gt ${num[$j]} ]]
                then
                        temp=${num[$i]}
                        num[$i]=${num[$j]}
                        num[$j]=$temp
                fi
        done
done
echo " array is :   "${num[@]}
echo " Second largest element is: "${num[$n-2]}
echo " Second smallest element is:  "${num[1]}


