#!/system/bin/sh
# Trigger runtime CAMERA permission check for testing apps

APPS=("com.google.android.GoogleCamera" "com.android.camera" "org.cyanogenmod.snap")

for app in "${APPS[@]}"
do
    if pm list packages | grep -q $app; then
        echo "Grant CAMERA permission to $app"
        pm grant $app android.permission.CAMERA
        pm grant $app android.permission.RECORD_AUDIO
    fi
done