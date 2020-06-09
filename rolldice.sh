#!/bin/bash -x

#To generate numbers from 1 to 6
declare -A Dict
declare -A Dict

for(( i=0; i<$1; i++ ))
 do
  Dict[$i]=$(( RANDOM%6+1 ))
done
echo ${Dict[@]}



for (( i=0; i<${#Dict[@]}; i++ ))
 do
   if [[ ! " ${a[@]} " =~ " ${Dict[$i]} " ]]; then
   count=1
   for (( j=($i+1) ; j<${#Dict[@]}; j++ ))
   do
     if [[ ${Dict[$i]}  -eq  ${Dict[$j]} ]]
     then
      ((count=count+1))
         a[$i]=${Dict[$i]}
	 b[$i]=$count
fi
done
fi
done

echo  "Duplicate  elements are " ${a[@]} "and their count is" ${b[@]}

i=0
max=0
min=${#Dict[@]}

for y in ${b[@]}; do
    echo "i" $i
    if (( $y>=$max ))
    then
     max=$y
     max_value=${a[$i]}
fi
    if (( $y<=$min ))
    then
    min=$y
    min_value=${a[$i]}
fi
    ((i=i+1))
done

echo  " Max and Min value is " $max_value "," $min_value
echo  "Max and Min count is " $max "," $min

