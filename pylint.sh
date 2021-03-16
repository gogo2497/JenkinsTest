

#!/bin/sh

myVar = 100
echo "${myVar}"
out = "${(pylint /JenkinsTest/test.py)}"
echo $out
#result=$(grub-md5-crypt 2>&1 | grep xy)
#echo $result > output