#!/system/bin/sh

LOG=/data/adb/camera2api_mtk.log
echo "===== © AnasBex - 2026 Camera2API MTK Service Started =====" >> $LOG
date >> $LOG

BRAND=$(getprop ro.product.brand | tr '[:upper:]' '[:lower:]')

while true
do
    case "$BRAND" in
        samsung)
            echo "Samsung MTK mode applied" >> $LOG
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop ro.vendor.camera.HAL3.enabled 1
            resetprop persist.vendor.camera.eis.enable 1
            ;;
        
        xiaomi|redmi|poco)
            echo "Xiaomi MTK mode applied" >> $LOG
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop persist.vendor.camera.manufacturer_id 1
            resetprop persist.vendor.camera.enableBusDC 1
            ;;

        oppo|realme)
            echo "Oppo/Realme MTK mode applied" >> $LOG
            resetprop persist.vendor.cam.hal3.enabled 1
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop vendor.camera.aux.packagelist "*"
            ;;

        vivo)
            echo "Vivo MTK mode applied" >> $LOG
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop persist.camera.HAL3.enabled 1
            ;;

        infinix|tecno|itel)
            echo "Infinix / Tecno mode applied" >> $LOG
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop persist.vendor.camera.eis.enable 1
            ;;

        *)
            echo "Generic MTK Mode Applied" >> $LOG
            resetprop persist.vendor.camera.HAL3.enabled 1
            resetprop persist.camera.HAL3.enabled 1
            ;;
    esac

    sleep 20
done