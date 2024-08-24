#!/bin/sh

VID=4d10
PID=1483

curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/hidpi/DisplayVendorID-${VID}/DisplayProductID-${PID} \
  -L -O --create-dirs --output-dir /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/

chown -R root:wheel /Library/Displays/Contents/Resources/Overrides
chmod -R 0755 /Library/Displays/Contents/Resources/Overrides
chmod 0644 /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/DisplayProductID-${PID}

defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
