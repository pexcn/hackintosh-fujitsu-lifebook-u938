# VoltageShift

`com.sicreative.VoltageShift.plist` is built by the following command:

```sh
# CPU: -25 mV
# GPU: -50 mV
# CPU Cache: -25 mV
# System Agency: -50 mV
# Analog IO: 0 mV
# Digital IO: 0 mV
# Turbo: not change
# Power Limit 1: 22 W
# Power Limit 2: 50 W
# Remain: not unload kext
# Execute Interval: every 10 mins
sudo ./voltageshift buildlaunchd -25 -50 -25 -50 0 0 -1 22 50 1 10
```
