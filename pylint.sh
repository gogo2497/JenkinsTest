

#!/bin/sh

pylint /JenkinsTest/test.py
result=$(grub-md5-crypt 2>&1 | grep xy)
echo $result > output