# :green_apple: Hackintosh Fujitsu Lifebook U938

## :computer: Specification

| **Hardware**    | **Detail**                                                |
| --------------- | --------------------------------------------------------- |
| **CPU**         | Intel Core i5-8250U Processor                             |
| **GPU**         | Intel UHD Graphics 620                                    |
| **RAM**         | 4GB Non-removable 2400MHz DDR4 + Gloway 16GB 2666MHz DDR4 |
| **SSD**         | Lenovo X780 256GB NVMe SSD                                |
| **Display**     | Sharp LQ133M1JW28 13.3" 1920x1080p                        |
| **Audio**       | Realtek ALC255 HD Audio                                   |
| **Ethernet**    | Intel Ethernet Connection I219-LM                         |
| **Wireless**    | ~~Intel Dual Band Wireless-AC 8265~~ Intel Wi-Fi 6 AX200  |
| **Camera**      | Chicony Electronics FJ Camera                             |
| **Keyboard**    | Fujitsu PS/2 Japanese keyboard (106/109 Key)              |
| **TouchPad**    | Synaptics SMBus TouchPad                                  |
| **Fingerprint** | Validity Sensors Swipe Fingerprint Sensor                 |
| **Card Reader** | O2Micro Integrated MMC/SD Controller                      |
| **SMBIOS**      | `MacBookPro15,4` ~~`MacbookPro14,1`~~                     |

## :unlock: BIOS Settings

Set the following BIOS options via [`setup_var.efi`](https://github.com/datasone/setup_var.efi).

```sh
# CFG Lock
setup_var.efi CpuSetup:0x3C=0x00

# Above 4GB MMIO BIOS assignment
setup_var.efi SaSetup:0xE4=0x01

# Intel(R) SGX
setup_var.efi CpuSetup:0xF2=0x00

# DVMT Pre-Allocated
setup_var.efi SaSetup:0xDF=0x02

# DVMT Total Gfx Mem
setup_var.efi SaSetup:0xE0=0x03
```

## :x: Not Working

- Card Reader
- Fingerprint Sensor
- Black screen after connected HDMI
- HDMI no signal output after hotplugs
- Enable `NVMeFix.kext` will randomly stuck at booting
- High CPU usage when enable `VoodooSMBus.kext`, but if not enabled, `RMISMBus.kext` will not work
  ```
  24:836 00:017 OC: Prelinked injection VoodooRMI.kext\Contents\PlugIns\RMISMBus.kext (RMISMBus.kext) - Invalid Parameter
  ```
- `ECEnabler.kext` not work?
  ```
  23:525 00:016 OC: Prelinked injection ECEnabler.kext (ECEnabler.kext) - Invalid Parameter
  ```
