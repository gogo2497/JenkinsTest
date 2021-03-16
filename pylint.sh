

#!/bin/sh

out=$(pylint /JenkinsTest/test.py)
echo $out
NUMBER=$(echo $out | tr -dc '0-9')
echo $NUMBER
extractedNum=$($NUMBER/100)
echo $extractedNum
#if[[$out =~ \d+ ]]; then
#    echo "$out contains a digit"
#else
#    echo "no"
#fi
#result=$(grub-md5-crypt 2>&1 | grep xy)
#echo $result > output