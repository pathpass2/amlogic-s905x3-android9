#! /bin/bash
source build/envsetup.sh
source env.sh
cd bootloader/uboot-repo/  && ./mk g12a_u212_v1 --systemroot

cp build/u-boot.bin           ../../device/bananapi/cainiao_s905d3_atv/bootloader.img
cp build/u-boot.bin.usb.bl2   ../../device/bananapi/cainiao_s905d3_atv/upgrade/u-boot.bin.usb.bl2
cp build/u-boot.bin.usb.tpl   ../../device/bananapi/cainiao_s905d3_atv/upgrade/u-boot.bin.usb.tpl
cp build/u-boot.bin.sd.bin    ../../device/bananapi/cainiao_s905d3_atv/upgrade/u-boot.bin.sd.bin

cd .. && cd ..

