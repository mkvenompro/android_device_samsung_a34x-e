# Android device tree for samsung SM-A346E (a34x)

## Create the directory
   mkdir lineage-23.2; cd lineage-23.2

## Sync lineage-23.2
    repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs; repo sync
 
## Clone
    git clone https://github.com/A34-PeaceZone/lineage_device_samsung_a34-e.git -b lineage-23.2-a device/samsung/a34x

## Build
    . build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; breakfast a34x; brunch a34x

```
#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```
