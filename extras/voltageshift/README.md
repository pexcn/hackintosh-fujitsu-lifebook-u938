# VoltageShift

~~`com.sicreative.VoltageShift.plist` is built by the following command:~~ Now I use my customized method.

```sh
# CPU: -25 mV
# GPU: -50 mV
# CPU Cache: -25 mV
# System Agency: -50 mV
# Analog IO: 0 mV
# Digital IO: 0 mV
# Turbo: not change
# Power Limit 1: not change
# Power Limit 2: not change
# Remain: not unload kext
# Execute Interval: every 10 mins
sudo ./voltageshift buildlaunchd -25 -50 -25 -50 0 0 -1 0 0 1 10
```

This is a better way to set PL1/PL2, because it can effective immediately:

```sh
# Power Limit 1: 22 W
# Power Limit 2: 50 W
./voltageshift write 0x610 0x42819000EB80B0
./voltageshift wrmem 0xFED159A0 0xEB80B0
./voltageshift wrmem 0xFED159A4 0x428190
```

Here's alternative way to undervolt:

```sh
# CPU Core: -25 mV
# CPU Cache: -25 mV
# iGPU Slice: -50 mV
# iGPU Unslice: -50 mV
./voltageshift write 0x150 0x80000011FCE00000
./voltageshift write 0x150 0x80000211FCE00000
./voltageshift write 0x150 0x80000111F9A00000
./voltageshift write 0x150 0x80000311F9A00000

# CPU Core: -100 mV
# CPU Cache: -100 mV
# iGPU Slice: -50 mV
# iGPU Unslice: -50 mV
#./voltageshift write 0x150 0x80000011F3400000
#./voltageshift write 0x150 0x80000211F3400000
#./voltageshift write 0x150 0x80000111F9A00000
#./voltageshift write 0x150 0x80000311F9A00000
```
