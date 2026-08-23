#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a34x)

# With prebuilt kernel, no DTB files are compiled from source.
# BOARD_INCLUDE_DTB_IN_BOOTIMG creates a dependency on dtb.img for recovery,
# but the build system has no rule to build it (no .dtb sources).
# Override by copying our prebuilt dtb.img directly to the output directory.
$(PRODUCT_OUT)/dtb.img: $(LOCAL_PATH)/prebuilts/dtb.img
	@echo "Prebuilt dtb.img: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) cp $< $@

include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
