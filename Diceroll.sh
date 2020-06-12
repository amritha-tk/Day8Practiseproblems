
#!/bin/bash -x
declare -A Dict
maxCount=0
maxVal=0
i=0
while [[ $maxCount -le '10' ]]
do
    #To generate 1 to 6 random numbers
	random=$((RANDOM%6+1))
	#echo "Random num " $random
	if [[ $random -eq '1' ]] ; then
		((count1++))
		Dict[1]=$((count1))
		if [[ $count1 -eq '10' ]] ; then
			maxCount=11
			maxVal=1;
		fi
	fi
	if [[ $random -eq '2' ]] ; then
		((count2++))
		Dict[2]=$((count2))
		if [[ $count2 -eq '10' ]] ; then
			maxCount=11
			maxVal=2
		fi
	fi
	if [[ $random -eq '3' ]] ; then
		((count3++))
		Dict[3]=$((count3))
		if [[ $count3 -eq '10' ]] ; then
			maxCount=11
			maxVal=3
		fi
	fi
	if [[ $random -eq '4' ]] ; then
		((count4++))
		Dict[4]=$((count4))
		if [[ $count4 -eq '10' ]] ; then
			maxCount=11
			maxVal=4
		fi
	fi
	if [[ $random -eq '5' ]] ; then
		((count5++))
		Dict[5]=$((count5))
		if [[ $count5 -eq '10' ]] ; then
			maxCount=11
			maxVal=5
		fi
	fi
	if [[ $random -eq '6' ]] ; then
		((count6++))
		Dict[6]=$((count6))
		if [[ $count6 -eq '10' ]] ; then
 			maxCount=11
			maxVal=6
		fi
	fi
done
echo "Value " ${!Dict[@]}
echo "Count " ${Dict[@]}
echo "Maximum value " $maxVal

# For retrieving minimum value and count
min_count=10

for x in ${!Dict[@]}; do
	y=${Dict[$x]}
	if [[ $y -lt $min_count ]] ; then
	min_count=$y
	min_value=$x
	fi
done

echo "First Minimum count " $min_count
echo "First Minimum value" $min_value


