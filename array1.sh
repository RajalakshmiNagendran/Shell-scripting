#!/bin/bash

#Sample Input 1 2 3 4 5
#Sample Output 10 14

#Intialize a variable by assigning a exact array size as 5, initialize an array, input the array values
#sort the array values by ascending order
#add the array values except the last value
#add the array values except first value
#print the values seperated by space

N=5
read -a arr
sorted_array=($(printf "%s\n" "${arr[@]}" | sort -n))
echo "${sorted_array[@]}"

result1=$(("${sorted_array[0]}" + "${sorted_array[1]}" + "${sorted_array[2]}" + "${sorted_array[3]}"))
result2=$(("${sorted_array[1]}" + "${sorted_array[2]}" + "${sorted_array[3]}" + "${sorted_array[4]}"))
echo "$result1 $result2"
