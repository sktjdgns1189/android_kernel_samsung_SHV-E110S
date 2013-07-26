rm ramdisk-new.gz
rm boot.img
./mkbootfs ./ramdisk | gzip > ramdisk-new.gz
./mkbootimg --base "40400000" --cmdline "androidboot.hardware=qcom usb_id_pin_rework=true no_console_suspend=true zcache" --ramdiskaddr 0x41800000 --kernel zImage --ramdisk ramdisk-new.gz -o boot.img
