#!/bin/sh

mkdir -p /usr/local/bin/
curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/voltageshift \
  -L -o /usr/local/bin/voltageshift
chmod +x /usr/local/bin/voltageshift

mkdir -p /Library/LaunchDaemons/
curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/com.sicreative.VoltageShift.plist \
  -L -o /Library/LaunchDaemons/com.sicreative.VoltageShift.plist

launchctl bootstrap system /Library/LaunchDaemons/com.sicreative.VoltageShift.plist
