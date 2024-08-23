#!/bin/sh

curl https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/hidpi/DisplayVendorID-4d10/DisplayProductID-1483 \
-L -O --create-dirs --output-dir /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-4d10/

chown -R root:wheel /Library/Displays/Contents/Resources/Overrides
