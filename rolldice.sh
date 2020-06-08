
#!/bin/bash

#To generate numbers from 1 to 6
declare -A Dict


for(( i=0; i<$1; i++ ))
 do
  Dict[$i]=$(( RANDOM%6+1 ))
done
echo ${Dict[@]}
x=0
for (( i=0; i<${#Dict[@]}; i++ ))
 do
   count=1
   ((x=x+1))
  for (( j=($i+1) ; j<${#Dict[@]}; j++ ))
   do
    if [[ ${Dict[$i]}  -eq  ${Dict[$j]} ]]
     then
      ((count=count+1))
          a[$x]=${Dict[$i]}
          
          b[$x]=$count

fi
done
done

echo  "Duplicate  elements are " ${a[@]} "and their count is" ${b[@]}

max=0
min=0
i=0
for y in ${b[@]}; do
    if (( $y > $max ))
    then
     max=$y 
     #echo  "max value " ${a[$i]}
     max_value=${a[$i]}
    if (( $y < $min ))
    then
    min=$y
    min_value=${a[$i]}
fi
fi
    ((i=i+1)) 
done

echo  " Max and Min value is " $max_value "," $min_value
echo  "Max and Min count is " $max "," $min
