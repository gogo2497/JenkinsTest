

#!/bin/sh

out=$(pylint /JenkinsTest/test.py)
echo $out
out=$(expr match "$string" '2013:06:23 \([0-9]\+\)')
echo $out
#result=$(grub-md5-crypt 2>&1 | grep xy)
#echo $result > output