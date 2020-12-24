#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0fd50f4b3676a61b6677ff40cc145ab6d330b98e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:d58f530a28f1708c7e340eb211412fd710723a2b EMMC:/dev/block/bootdevice/by-name/recovery 0fd50f4b3676a61b6677ff40cc145ab6d330b98e 67108864 d58f530a28f1708c7e340eb211412fd710723a2b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
