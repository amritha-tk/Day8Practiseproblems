#!/bin/bash -x
declare -P person
for(( i=1; i<$i; i++ ))
do
month =$((RANDOM%12+1))
person[$i]=expr $month
done
echo "Months : ${person[@]}"
echo "Person : ${!person[@]}"
for i in "${!person[@]}"
do     
      for j in "${!person[@]}"
	  do
	    if [[ ${person[$i]} -eq ${person[$j]}  ]] && [[ $i -neq $j ]]
		then 
		  echo "$i $j"
		  fi
		done
	done	
		  