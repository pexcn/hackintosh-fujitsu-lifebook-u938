#!/bin/sh

curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/voltageshift \
  -L -O --output-dir /usr/local/bin/
chown root:wheel /usr/local/bin/voltageshift
chmod +x /usr/local/bin/voltageshift

curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/com.sicreative.VoltageShift.plist \
  -L -O --output-dir /Library/LaunchDaemons/
chown root:wheel /Library/LaunchDaemons/com.sicreative.VoltageShift.plist

launchctl bootstrap system /Library/LaunchDaemons/com.sicreative.VoltageShift.plist
