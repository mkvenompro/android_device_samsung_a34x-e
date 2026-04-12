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

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/nfc/sec_s3nrn4v_firmware.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nfc/sec_s3nrn4v_firmware.bin \
    $(LOCAL_PATH)/firmware/tsp_goodix/gt9895_a34x.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/tsp_goodix/gt9895_a34x.bin \
    $(LOCAL_PATH)/firmware/BT_FW.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/BT_FW.cfg \
    $(LOCAL_PATH)/firmware/SetMultiCal.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/SetMultiCal.bin \
    $(LOCAL_PATH)/firmware/SoundBoosterParam.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/SoundBoosterParam.bin \
    $(LOCAL_PATH)/firmware/WIFI:$(TARGET_COPY_OUT_VENDOR)/firmware/WIFI \
    $(LOCAL_PATH)/firmware/WIFI_RAM_CODE_soc5_0_1_1.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/WIFI_RAM_CODE_soc5_0_1_1.bin \
    $(LOCAL_PATH)/firmware/WIFI_RAM_CODE_soc5_0_1c_1.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/WIFI_RAM_CODE_soc5_0_1c_1.bin \
    $(LOCAL_PATH)/firmware/connfem.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/connfem.cfg \
    $(LOCAL_PATH)/firmware/conninfra.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/conninfra.cfg \
    $(LOCAL_PATH)/firmware/fm_cust.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/fm_cust.cfg \
    $(LOCAL_PATH)/firmware/gt9896s_cfg_6877v01.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gt9896s_cfg_6877v01.bin \
    $(LOCAL_PATH)/firmware/gt9896s_cfg_6877v02.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gt9896s_cfg_6877v02.bin \
    $(LOCAL_PATH)/firmware/gt9896s_firmware_6877v01.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gt9896s_firmware_6877v01.bin \
    $(LOCAL_PATH)/firmware/gt9896s_firmware_6877v02.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gt9896s_firmware_6877v02.bin \
    $(LOCAL_PATH)/firmware/lib3a.ccu:$(TARGET_COPY_OUT_VENDOR)/firmware/lib3a.ccu \
    $(LOCAL_PATH)/firmware/mt6635_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6635_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6635_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6635_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/remoteproc_scp:$(TARGET_COPY_OUT_VENDOR)/firmware/remoteproc_scp \
    $(LOCAL_PATH)/firmware/soc5_0_ram_bt_1_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_bt_1_1_hdr.bin \
    $(LOCAL_PATH)/firmware/soc5_0_ram_bt_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_bt_1c_1_hdr.bin \
    $(LOCAL_PATH)/firmware/soc5_0_ram_mcu_1_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_mcu_1_1_hdr.bin \
    $(LOCAL_PATH)/firmware/soc5_0_ram_mcu_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_mcu_1c_1_hdr.bin \
    $(LOCAL_PATH)/firmware/soc5_0_ram_wmmcu_1_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_wmmcu_1_1_hdr.bin \
    $(LOCAL_PATH)/firmware/soc5_0_ram_wmmcu_1c_1_hdr.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc5_0_ram_wmmcu_1c_1_hdr.bin \
    $(LOCAL_PATH)/firmware/tfa98xx.cnt:$(TARGET_COPY_OUT_VENDOR)/firmware/tfa98xx.cnt \
    $(LOCAL_PATH)/firmware/txpowerctrl.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/txpowerctrl.cfg \
    $(LOCAL_PATH)/firmware/wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/wifi.cfg    
    
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
    
# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml

# Samsung IMS
PRODUCT_PACKAGES += \
    volte_clientapi_ua \
    volte_rcs_ua \
    rcs_volte_stack    

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.c2-mediatek \
    android.hardware.media.c2-mediatek-64b \
    android.hardware.media.omx@1.0-service \
    samsung.software.media.c2@1.0-service

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service.samsung \
    com.android.nfc_extras \
    NfcNci \
    Tag

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
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/system/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/system/audio_effects_common.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects_common.conf \
    $(LOCAL_PATH)/configs/audio/system_ext/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/a2dp_in_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_configuration_bluetooth_legacy_hal.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_configuration_stub.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_configuration_stub.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_engine_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_engine_default_stream_volumes.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_engine_default_stream_volumes.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_engine_product_strategies.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_engine_product_strategies.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_engine_stream_volumes.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_engine_stream_volumes.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/audio_policy_volumes.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/default_volume_tables.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/system_ext/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/a2dpsink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dpsink_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_device_gain.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device_gain.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_config.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects_config_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_config_sec.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_framework_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_framework_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_configuration_a2dp_offload_disabled.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_a2dp_offload_disabled.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_configuration_bluetooth_legacy_hal.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_configuration_gsi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_gsi.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_sec.xml \
    $(LOCAL_PATH)/configs/audio/vendor/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/vendor/aurisys_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/aurisys_config.xml \
    $(LOCAL_PATH)/configs/audio/vendor/aurisys_config_hifi3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/aurisys_config_hifi3.xml \
    $(LOCAL_PATH)/configs/audio/vendor/aurisys_config_rv.xml:$(TARGET_COPY_OUT_VENDOR)/etc/aurisys_config_rv.xml \
    $(LOCAL_PATH)/configs/audio/vendor/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/bluetooth_offload_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_offload_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/configs/audio/vendor/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/le_audio_codec_capabilities.xml:$(TARGET_COPY_OUT_VENDOR)/etc/le_audio_codec_capabilities.xml \
    $(LOCAL_PATH)/configs/audio/vendor/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/sec_audio_volume_curve.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sec_audio_volume_curve.xml \
    $(LOCAL_PATH)/configs/audio/vendor/situation_audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/situation_audio_policy_volumes_sec.xml \
    $(LOCAL_PATH)/configs/audio/vendor/usb_audio_accessory_only_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_accessory_only_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/vendor/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/android.hardware.media.c2@1.2-extended-seccomp-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-extended-seccomp-policy \
    $(LOCAL_PATH)/configs/seccomp/android.hardware.media.c2@1.2-mediatek-seccomp-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-mediatek-seccomp-policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaswcodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaswcodec.policy \
    $(LOCAL_PATH)/configs/seccomp/samsung.software.media.c2-base-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/samsung.software.media.c2-base-policy \
    $(LOCAL_PATH)/configs/seccomp/samsung.software.media.c2-ext-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/samsung.software.media.c2-ext-policy

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media/mtk_platform_codecs_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mtk_platform_codecs_config.xml \
    $(LOCAL_PATH)/configs/media/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/configs/media/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec.conf


# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/cust_color.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cust_color.xml \
    $(LOCAL_PATH)/configs/display/pq_flag.xml:$(TARGET_COPY_OUT_VENDOR)/etc/pq_flag.xml \
    $(LOCAL_PATH)/configs/display/displayconfig/display_id_4627039422300187648.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4627039422300187648.xml \
    $(LOCAL_PATH)/configs/display/gralloc/cam.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gralloc/cam.xml \
    $(LOCAL_PATH)/configs/display/gralloc/dpu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gralloc/dpu.xml \
    $(LOCAL_PATH)/configs/display/gralloc/dpu_aeu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gralloc/dpu_aeu.xml \
    $(LOCAL_PATH)/configs/display/gralloc/gpu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gralloc/gpu.xml \
    $(LOCAL_PATH)/configs/display/gralloc/vpu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gralloc/vpu.xml

# GNSS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gnss/MNL_Config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/MNL_Config.xml \
    $(LOCAL_PATH)/configs/gnss/agps_profiles_conf2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gnss/agps_profiles_conf2.xml

# WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/.ht120.mtc:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal/.thermal_policy_08:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_08

# RIL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/RIL/ecc_list.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP01.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP02.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP02.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP09.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP09.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP12.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP12.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP17.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP17.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP18.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP18.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_OP236.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_OP236.xml \
    $(LOCAL_PATH)/configs/RIL/ecc_list_preference.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ecc_list_preference.xml \
    $(LOCAL_PATH)/configs/RIL/mtu-conf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mtu-conf.xml \
    $(LOCAL_PATH)/configs/RIL/mvno_list.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mvno_list.xml \
    $(LOCAL_PATH)/configs/RIL/pdpcnt-conf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/pdpcnt-conf.xml \
    $(LOCAL_PATH)/configs/RIL/smsdbvisitor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/smsdbvisitor.xml \
    $(LOCAL_PATH)/configs/RIL/special_pws_channel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/special_pws_channel.xml \
    $(LOCAL_PATH)/configs/RIL/virtual-spn-conf-by-efgid1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/virtual-spn-conf-by-efgid1.xml \
    $(LOCAL_PATH)/configs/RIL/virtual-spn-conf-by-efpnn.xml:$(TARGET_COPY_OUT_VENDOR)/etc/virtual-spn-conf-by-efpnn.xml \
    $(LOCAL_PATH)/configs/RIL/virtual-spn-conf-by-efspn.xml:$(TARGET_COPY_OUT_VENDOR)/etc/virtual-spn-conf-by-efspn.xml \
    $(LOCAL_PATH)/configs/RIL/virtual-spn-conf-by-imsi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/virtual-spn-conf-by-imsi.xml

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/misc/floating_feature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/floating_feature.xml \
    $(LOCAL_PATH)/configs/misc/hqm_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hqm_device.xml \
    $(LOCAL_PATH)/configs/misc/power_app_cfg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/power_app_cfg.xml \
    $(LOCAL_PATH)/configs/misc/powercontable.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powercontable.xml \
    $(LOCAL_PATH)/configs/misc/powerscntbl.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerscntbl.xml \
    $(LOCAL_PATH)/configs/misc/vramdiskd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vramdiskd.xml

# odm
ODM_MANIFEST_SKUS := dsds qsqs ss tsts
ODM_MANIFEST_DSDS_FILES := $(LOCAL_PATH)/odm/manifest_dsds.xml
ODM_MANIFEST_QSQS_FILES := $(LOCAL_PATH)/odm/manifest_qsqs.xml
ODM_MANIFEST_SS_FILES := $(LOCAL_PATH)/odm/manifest_ss.xml
ODM_MANIFEST_TSTS_FILES := $(LOCAL_PATH)/odm/manifest_tsts.xml

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/samsung/aidl \
    hardware/mediatek
