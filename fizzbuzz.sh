#!/bin/bash
echo "Please enter the value greater than 0 less than 2000000"
read n
if [ n == 0 ]; then
    echo "Entered value is 0, Please enter the value greater than 0 less than 2000000"
elif [[ $n -gt 0 && $n -lt 2000000 ]];then
    for ((i=1; i<=n; i++))
    do
        if [[ $(("$i" % 3)) == 0 &&  $(("$i" % 5)) == 0 ]];then
            echo "fizzBuzz"
        elif [[ $(("$i" % 3)) == 0 && $(("$i" % 5)) != 0 ]];then
            echo "fizz"
        elif [[ $(("$i" % 5)) == 0 && $(("$i" % 3)) != 0 ]];then
                echo "Bizz"
        elif [[ $(("$i" % 3)) != 0 && $(("$i" % 5)) != 0 ]];then
                echo "$i"
        fi
    done
else
    echo "Entered value is not correct, Please enter the value greater than 0 less than 2000000"
fi
