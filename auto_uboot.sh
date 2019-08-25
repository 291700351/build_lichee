#!/bin/bash 
# clone u-boot. Config u-boot. Build u-boot. Copy bin to output
rm -rfv u-boot > /dev/null && \
git clone https://github.com/Lichee-Pi/u-boot.git -b nano-v2018.01 --depth 1 && \
cd u-boot && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- licheepi_nano_defconfig && \
wget https://raw.githubusercontent.com/291700351/build_lichee/master/u-boot.config -O .config && \
make menuconfig && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j8 && \
cd .. && \
cp u-boot/u-boot-sunxi-with-spl.bin ./output/u-boot-sunxi-with-tf.bin 

