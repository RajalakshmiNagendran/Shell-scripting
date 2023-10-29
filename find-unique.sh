#!/bin/bash
arr=()
echo "Enter size of an array"
read n
echo "Enter the values in an array, where all elements occur twice with only one unique element"
read -a arr
for ((i=0; i<n; i++))
do
    arr1[i]=${arr[i]}
done
unique_number=$(printf '%s\n' "${arr1[@]}" | sort | uniq -u)
echo "The unique number from the array is: $unique_number"