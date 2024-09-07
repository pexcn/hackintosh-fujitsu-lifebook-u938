#!/bin/sh

mkdir -p /usr/local/bin/
curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/voltageshift \
  -L -O --output-dir /usr/local/bin/
chmod +x /usr/local/bin/voltageshift

mkdir -p /Library/LaunchDaemons/
curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/com.sicreative.VoltageShift.plist \
  -L -O --output-dir /Library/LaunchDaemons/

launchctl bootstrap system /Library/LaunchDaemons/com.sicreative.VoltageShift.plist
