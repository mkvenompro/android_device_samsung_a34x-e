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

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

PRODUCT_PACKAGES_OVERLAYS := $(filter-out device/generic/goldfish/overlay device/google/cuttlefish/overlay, $(PRODUCT_PACKAGES_OVERLAYS))

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

PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    extphonelib \
    extphonelib-product \
    extphonelib.xml \
    extphonelib_product.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Display
PRODUCT_PACKAGES += \
    hwcomposer.mt6877 \
    gralloc.mt6877 \
    libvulkan

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
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

PRODUCT_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/samsung/aidl \
    hardware/mediatek

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a34x/a34x-vendor.mk)
