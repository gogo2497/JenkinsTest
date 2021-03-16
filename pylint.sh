

#!/bin/sh

out = $(pylint /JenkinsTest/test.py)
echo $out
#result=$(grub-md5-crypt 2>&1 | grep xy)
#echo $result > output