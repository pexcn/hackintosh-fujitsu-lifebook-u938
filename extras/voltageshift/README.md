# VoltageShift

`com.sicreative.VoltageShift.plist` is built by the following command:

```sh
# CPU: -100 mV
# GPU: -50 mV
# CPU Cache: -100 mV
# System Agency: 0 mV
# Analog IO: 0 mV
# Digital IO: 0 mV
# Turbo: not change
# Power Limit 1: 20 W
# Power Limit 2: 55 W
# Remain: not unload kext
# Execute Interval: every 10 mins
sudo ./voltageshift buildlaunchd -100 -50 -100 0 0 0 -1 20 55 1 10
```
