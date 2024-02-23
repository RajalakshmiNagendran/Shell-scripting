#!/bin/bash

#Author=RajalakshmiNagendran
rm tempfile tempfile1
#echo "$(cut -d ' ' -f1 logfile)" > tempfile
#echo "$(cat logfile | awk -v FS="(responseCode|TTL)" '{print $2}')" >> tempfile
#sort tempfile | uniq -c
while read -r first others; do echo -e "$(echo "$first") \t $(echo "$(echo "$others" | awk -v FS="(responseCode|TTL)" '{print $2}')")"; done < logfile > tempfile
sort tempfile | uniq -c > tempfile1
#echo "$(cat tempfile1)" | echo "ResponseCode $3 occurs $1 times at $2"
while read -r field1 field2 field3; do echo "ResponseCode "$field3" ocuurs "$field1" times at $field2"; done < tempfile1
