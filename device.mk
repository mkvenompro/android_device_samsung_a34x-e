#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enforce generic ramdisk allow list
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# Non_ab_device
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    hdm_status.sh \
    init.insmod.sh \
    init.pstore_blk.sh \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.ramplus \
    factory_init.connectivity.common.rc \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.audio.samsung.rc \
    init.cgroup.rc \
    init.connectivity.common.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6877.rc \
    init.mt6877.usb.rc \
    init.mtkgki.rc \
    init.project.rc \
    init.sec.rc \
    init_conninfra.rc \
    meta_init.connectivity.common.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    meta_init.vendor.rc \
    multi_init.rc \
    init.recovery.mt6877.rc \
    init.recovery.samsung.rc \

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service-aidl.mediatek \
    android.hardware.audio.parameter_parser.service

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-service-mediatek

# Camera
PRODUCT_PACKAGES += \
    vendor.samsung.hardware.camera.provider-service_64

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator-V2-service-mediatek \
    android.hardware.graphics.composer@3.3-service \
    android.hardware.memtrack-service.mediatek \
    vendor.mediatek.hardware.mms-service \
    vendor.mediatek.hardware.pq_aidl-service \
    hwcomposer.mt6877 \
    gralloc.mt6877 

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey \
    com.google.android.widevine.nonupdatable

# Dumpstate
PRODUCT_PACKAGES += \
    android.hardware.dumpstate-service

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.c2-mediatek \
    android.hardware.media.c2-mediatek-64b \
    android.hardware.media.omx@1.0-service \
    samsung.software.media.c2@1.0-service

# Security / KeyMint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service \
    vendor.samsung.hardware.security.drk@2.0-service \
    vendor.samsung.hardware.security.engmode@1.0-service \
    vendor.samsung.hardware.security.fkeymaster-service \
    vendor.samsung.hardware.security.hdcp.wifidisplay-service \
    vendor.samsung.hardware.security.proca@2.0-service \
    vendor.samsung.hardware.security.skpm-service \
    vendor.samsung.hardware.security.vaultkeeper@2.0-service \
    vendor.samsung.hardware.security.widevine.keyprov-service \
    vendor.samsung.hardware.security.wsm-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-aidl-service.mediatekv1.0

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service-lazy \
    hostapd \
    wpa_supplicant \
    vendor.samsung.hardware.wifi-service

# Biometrics
PRODUCT_PACKAGES += \
    vendor.samsung.hardware.authfw-service \
    vendor.samsung.hardware.biometrics.face-service \
    vendor.samsung.hardware.biometrics.fingerprint-service

# Misc Samsung/MTK services
PRODUCT_PACKAGES += \
    macloader \
    mfgloader \
    secaudiohalaidl \
    tetheroffloadservice \
    vendor.mediatek.hardware.aee@1.1-service \
    vendor.mediatek.hardware.gpuserv-service \
    vendor.mediatek.hardware.mmagent-service \
    vendor.mediatek.hardware.mmlpq@V1-service \
    vendor.mediatek.hardware.nvram-service \
    vendor.mediatek.hardware.nwk_opt@1.0-service \
    vendor.samsung.hardware.hyper-service \
    vendor.samsung.hardware.snap-service \
    vendor.samsung.hardware.sysinput-service \
    vendor.samsung.hardware.tlc.hdm@1.1-service \
    vendor.samsung.hardware.tlc.iccc-service \
    vendor.samsung.hardware.tlc.kg-service \
    vendor.samsung.hardware.tlc.mpos_tui@1.0-service \
    vendor.samsung.hardware.tlc.payment@1.0-service

# APEXes
PRODUCT_PACKAGES += \
    com.android.hardware.cas \
    com.samsung.android.authfw.ta.preload \
    com.samsung.android.biometrics.face.signed \
    com.samsung.android.biometrics.fingerprint.signed \
    com.samsung.android.camera.unihal.signed \
    com.samsung.android.vital.signed

# Network stack overlays
PRODUCT_PACKAGES += \
    NetworkStackResOverlay \
    TetheringResOverlay

# MediaTek HALs
PRODUCT_PACKAGES += \
    gatekeeper.mt6877 \
    lights.mt6877 \
    power.mt6877 \
    sensors.mt6877 \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.lights-service.samsung \
    android.hardware.power-service.mediatek \
    android.hardware.sensors-service.multihal

# Samsung-specific HALs
PRODUCT_PACKAGES += \
    vendor.samsung.hardware.camera.provider-service_64 \
    vendor.samsung.hardware.gnss-service \
    vendor.samsung.hardware.health-service \
    vendor.samsung.hardware.thermal-service \
    vendor.samsung.hardware.vibrator-service

PRODUCT_BOOT_JARS += \
    telephony-ext

# Media
PRODUCT_PACKAGES += \
    libcodec2_soft_common \
    libstagefright_softomx \
    media_codecs.xml \
    media_codecs_performance.xml \
    media_profiles_V1_0.xml

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6877 \
    audio_policy.stub \
    libaudiohal

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6877:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6877 \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6877:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.mt6877

LOCAL_NOTICE_FILE := $(LOCAL_PATH)/NOTICE.xml.gz

PRODUCT_COPY_FILES += \
    device/samsung/a34x/rootdir/carrier/.keep:system/carrier/.keep

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.biometrics.face.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/samsung/aidl \
    hardware/mediatek
