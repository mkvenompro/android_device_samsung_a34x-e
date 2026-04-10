#pragma once

#include <private/android_filesystem_config.h>

#define AID_VENDOR_SPAY 2906  // confirm actual UID from stock /vendor/etc/passwd

static const struct android_id_info vendor_android_ids[] = {
    {"vendor_spay", AID_VENDOR_SPAY},
};