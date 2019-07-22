#!/bin/sh

user_00=$(stat -f%Su /dev/console)

user_01=$(python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' ) 
/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

user_02=$(stat -f "%Su" /dev/console)

echo "$user_00"
echo "$user_01"
echo "$user_02"

exit 0
