#!/system/bin/sh

PATH=/system/bin
export PATH

if [ $(getprop ro.boot.hwversion | grep -e 5[0-9]) ]; then
    /system/bin/log -p e -t "SensorSelect" "Device is X5, set HAL to st_mve"

    chown -h system:system /persist/PSensorThFar.txt
    chmod -h 600 /persist/PSensorThFar.txt
    chown -h system:system /persist/PRSensorData.txt
    chmod -h 600 /persist/PRSensorData.txt
    chown -h system:system /persist/ASensorData.txt
    chmod -h 600 /persist/ASensorData.txt
    chown -h system:system /persist/GSensorData.txt
    chmod -h 600 /persist/GSensorData.txt
    chown -h system:system /persist/PSensorData.txt
    chmod -h 600 /persist/PSensorData.txt
    setprop ro.hardware.sensors leo
    /system/bin/log -p e -t "SensorSelect" "Use sensors.leo"
fi
