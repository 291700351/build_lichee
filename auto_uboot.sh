#!/bin/bash 
# clone u-boot. Config u-boot. Build u-boot. Copy bin to output

# git clone https://github.com/Lichee-Pi/u-boot.git -b nano-v2018.01 --depth 1 && \

cd u-boot && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- licheepi_nano_defconfig && \
wget https://raw.githubusercontent.com/291700351/build_lichee/master/u-boot.config -O .config && \
make menuconfig && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j8 && \
cd .. && \
cp u-boot/u-boot-sunxi-with-spl.bin ./output/u-boot-sunxi-with-tf.bin && \
echo "setenv bootargs console=tty0 console=ttyS0,115200 panic=5 rootwait root=/dev/mmcblk0p2 rw" > ./output/boot.cmd && \
echo "load mmc 0:1 0x80C00000 suniv-f1c100s-licheepi-nano.dtb" >> ./output/boot.cmd && \
echo "load mmc 0:1 0x80008000 zImage" >> ./output/boot.cmd && \
echo "bootz 0x80008000 - 0x80C00000" >> ./output/boot.cmd && \
cd output && \
mkimage -C none -A arm -T script -d boot.cmd boot.scr && \
cd ..

