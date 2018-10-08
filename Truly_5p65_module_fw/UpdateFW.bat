@echo Off
echo Please keep device on home screen


echo FW Update Start

adb root

adb remount

adb push TRULY_5P65_1080_2160_HX83112A_D01C01.bin /system/etc/firmware/Himax_firmware.bin

echo Update FW
	adb shell "echo t /system/etc/firmware/Himax_firmware.bin > /proc/android_touch/debug"
echo Get result
	adb shell "cat /proc/android_touch/debug"
echo ###########


echo FW Update End
PAUSE