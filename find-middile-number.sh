#!/bin/bash
arr=()
echo "Enter the size of the array, only odd values are accepted"
read n
echo "Enter the $n values seperated by space"
read -a arr
for ((i=0; i<n; i++))
do
    arr1[i]=${arr[i]}
done
echo "${arr1[@]}"
odd=$(($n / 2))
if [ $odd != 0 ]; then
    echo "Middile value from the array is: ${arr1[odd]}"
else
    echo "Enter only odd value of the size of an array, eg:1,3,5,7"
fi