#!/bin/bash -x
count=0
n[((count++))]=4
n[((count++))]=6
n[((count++))]=5
echo ${n[@]}
threeint(){
found = True
for ((i=0; i<$(($n-2)); i++))
do
	for((j=$i+1; j<$(($n-1)); j++))
	do
		for((k=$j+1; k<$n; k++))
		do
			if [ $(( $i+$j+$k )) -eq 0]
			then
				echo "$i $j $k"
				$found=True
			fi
		done
	done
done
}
zero="$(threeint)"
echo "$zero"
