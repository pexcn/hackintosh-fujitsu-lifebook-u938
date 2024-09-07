#!/bin/sh

VID=4d10
PID=1483

mkdir -p /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/
curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/hidpi/DisplayVendorID-${VID}/DisplayProductID-${PID} \
  -L -O --output-dir /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/

defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
