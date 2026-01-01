#!/system/bin/sh

LOG=/data/adb/camera2api_mtk.log
echo "===== Camera2API MTK Boot Init =====" > $LOG
date >> $LOG

brand=$(getprop ro.product.brand)
device=$(getprop ro.product.model)
vendor=$(getprop ro.product.vendor.manufacturer)

echo "Brand: $brand" >> $LOG
echo "Device: $device" >> $LOG
echo "Vendor: $vendor" >> $LOG

# Base enable
resetprop persist.vendor.camera.HAL3.enabled 1
resetprop ro.vendor.camera.HAL3.enabled 1
resetprop persist.camera.HAL3.enabled 1
resetprop camera.hal3.enabled 1

resetprop persist.vendor.camera.eis.enable 1
resetprop persist.vendor.camera.stats.test 5
resetprop persist.vendor.camera.enableBusDC 1

echo "Base HAL3 enabled" >> $LOG