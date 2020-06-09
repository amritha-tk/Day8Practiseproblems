#!/bin/bash 

declare -A person

for (( i=1; i<51; i++ ))
do
month=$((RANDOM%12+1))
person[$i]=$month
done
echo "Months : ${person[@]}"
echo "Person : ${!person[@]}"
for i in "${!person[@]}"
do
      for j in "${!person[@]}"
	  do
	    if [[ ${person[$i]} -eq ${person[$j]}  ]] && [[ $i != $j ]]
		then
		  echo " $i $j "
		  fi
	done
done
