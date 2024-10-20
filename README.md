# :apple: Hackintosh Fujitsu Lifebook U938

![OpenCore version](https://img.shields.io/badge/OpenCore-1.0.2-blue?style=flat-square&logo=circle) ![macOS version](https://img.shields.io/badge/macOS-Sonoma-green?style=flat-square&logo=apple)

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
```

## :hammer_and_wrench: Usage

> [!TIP]
If the installation cannot be completed successfully, try setting `SecureBootModel` to `Disabled`.

1. Generate SMBIOS info and put it into `config.plist`.
2. Put your EFI into EFI partition.

   ```sh
   # Find EFI partition
   diskutil list

   # Mount EFI partition
   sudo diskutil mount disk0s1

   # Copy EFI to /Volumes/EFI
   cp -a /path/to/your/EFI /Volumes/EFI/

   # Umount EFI partition
   diskutil umount disk0s1
   ```

3. Additionals:

   ```sh
   # Enable HiDPI (optional)
   curl -sSL https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/hidpi/enable.sh | sudo sh -

   # Undervolt and Boost (optional)
   curl -sSL https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/voltageshift/enable.sh | sudo sh -

   # Optimize (optional)
   curl -sSL https://github.com/pexcn/hackintosh-fujitsu-lifebook-u938/raw/master/extras/optimize/pmset.sh | sudo sh -
   ```

## :rocket: Updating

Before macOS updating, make sure the following changes:

1. Make sure SIP enabled.
2. Set `SecureBootModel` to `Disabled`.
3. Add `-v` into `boot-args` to enable verbose logging.

After update is completed, undo the above changes.

## :x: Not Working

- Card Reader
- Fingerprint Sensor
- Black screen after connected HDMI
- HDMI no signal output after hotplugs
