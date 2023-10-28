#!/bin/bash

#Assign a varibale to Read input 12hour time
#convert it to 24 hour time
#print the result

echo "Enter the time in following format hh:mm:ssAM or hh:mm:ssPM"
read time
converted_time=$(date -d "$time" +"%T")
echo "Time converted in 24-hour format: $converted_time"