DefinitionBlock ("", "SSDT", 2, "ACDT", "RMCF", 0x00000000)
{
    External(_SB.PCI0.LPCB.KBC, DeviceObj)

    Scope (\_SB.PCI0.LPCB.KBC)
    {
        If (_OSI ("Darwin"))
        {
            Name (RMCF,Package()
            {
                "Keyboard", Package()
                {
                    "NumLockSupport", ">y",
                    "RemapPrntScr", ">y",
                    "Make Application key into Apple Fn key", ">y",

                    "Custom PS2 Map", Package()
                    {
                        Package(){},

                        // JIS to ANSI
                        "7d=0e", // Keyboard Int'l 3 (Japanese Yen) -> BackSpace
                        "73=36", // Keyboard Int'l 1 (Japanese Ro) -> Right Shift
                        "7b=39", // Keyboard Int'l 5 (Japanese Muhenkan) -> Space
                        "79=39", // Keyboard Int'l 4 (Japanese Henkan) -> Space
                        "70=e038", // Keyboard Intl'2 (Japanese Katakana/Hiragana) -> Right Alt

                        // Swap Left Ctrl and Command
                        "1d=e05b", // Left Ctrl -> Command
                        "e05b=1d", // Command -> Left Ctrl

                        // Fix misc.
                        "e045=e022", // Pause/Break -> Play/Pause (otherwise will mapped to F15, can increase brightness)
                        "46=0", // Disable Scroll Lock (otherwise will mapped to F14, can decrease brightness)
                    },
                }
            })
        }
    }
}
