#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):67108864:a2de99b2975f55edb640d3052720c0f8298c29e4; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):33554432:5ac6db14d60abd0948cc15ab2e0d455556110fcc \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):67108864:a2de99b2975f55edb640d3052720c0f8298c29e4 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

