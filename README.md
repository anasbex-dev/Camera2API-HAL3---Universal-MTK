# Camera2API HAL3 - Universal MTK (Magisk Module)

This Magisk module force-enables Camera2 API HAL3 support for all Mediatek (MTK) Android devices.  
It includes automatic vendor detection, aggressive daemon enforcement, EIS enhancement, and persistent property patching to bypass vendor restrictions.

### Features
- ✓ Works on Android 8 – Android 14
- ✓ Supports Samsung MTK, Xiaomi, Redmi, POCO, Realme, Oppo, Vivo, Infinix, Tecno, and AOSP based ROMs
- ✓ Automatically detects device brand and applies optimized properties
- ✓ Aggressive daemon to continuously enforce HAL3 (prevents vendor reset)
- ✓ Built-in EIS enhancements
- ✓ System logging support (`/data/adb/camera2api_mtk.log`)

### Expected Results
| Result | Meaning |
|--------|--------|
| LEVEL_3 / FULL | Perfect – Full HAL3 Support |
| LIMITED | HAL3 enabled but vendor locked |
| LEGACY | Device hard-blocked |

> Note: Some vendors (Samsung, Oppo, Vivo) intentionally limit Camera HAL. This module forces enablement, but hardware/firmware limits may remain.

### Installation
1. Download the ZIP
2. Install via Magisk
3. Reboot
4. Verify using **Camera2 API Probe**

### Credits
Developer: **AnasBex**