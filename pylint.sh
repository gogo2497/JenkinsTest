

#!/bin/sh

out=$(pylint /JenkinsTest/test.py)
echo $out
if [[ $out =~ [0-9]]; then
    echo "$out contains a digit"
fi
#result=$(grub-md5-crypt 2>&1 | grep xy)
#echo $result > output