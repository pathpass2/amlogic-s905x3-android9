#! /bin/bash
source build/envsetup.sh
source env.sh
cd bootloader/uboot-repo/  && ./mk g12a_u212_v1 --systemroot
#cd bootloader/uboot-repo/  && ./mk sm1_ac213_v1

cp build/u-boot.bin           ../../device/bananapi/m411a/bootloader.img
cp build/u-boot.bin.usb.bl2   ../../device/bananapi/m411a/upgrade/u-boot.bin.usb.bl2
cp build/u-boot.bin.usb.tpl   ../../device/bananapi/m411a/upgrade/u-boot.bin.usb.tpl
cp build/u-boot.bin.sd.bin    ../../device/bananapi/m411a/upgrade/u-boot.bin.sd.bin

cd .. && cd ..

