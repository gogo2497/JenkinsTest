

#!/bin/sh

pylint /JenkinsTest/test.py
result=$(grub-md5-crypt | grep xy)
echo $result