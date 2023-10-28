#!/bin/bash

#input array = save it in array arr=()
#input number of elements in an array = save it in variable "n"
#read the values of an array and append it to the array = use for loop for doing this operation.
#A/n, B/n, C/n | eg: result = echo "scale=6; A/n" | bc
#check how many positive, how many negative and how many zeros = accordingly set numbers in 3 different variables lets say A B and C
#print $result

#initialize an array arr=()
arr=()

#input size of an array
echo "Input the size of the array"
read N

#input the number of elements in an array
echo "Input the values append to an array"
for ((i=0; i<N; i++))
do
    read array_values
    arr+=($array_values)
done

#echo "${arr[@]}"
#find number of positive,negative and zeros and save it in variables accordingly
positive_count=0
negative_count=0
zero_count=0

for element in "${arr[@]}"
do
    if ((element > 0)); then
        ((positive_count++))
    elif ((element < 0)); then
        ((negative_count++))
    else
        ((zero_count++))
    fi
done

echo "$positive_count, $negative_count, $zero_count"

result1=$(echo "scale=6; $positive_count/$N" | bc)
echo "positive_count:$result1"

result2=$(echo "scale=6; $negative_count/$N" | bc)
echo "negative_count:$result2"

result3=$(echo "scale=6; $zero_count/$N" | bc)
echo "zero_count:$result3"
