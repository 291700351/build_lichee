#!/bin/bash
# clone u-boot
git clone https://github.com/Lichee-Pi/u-boot.git -b nano-v2018.1 && \
cd u-boot && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- licheepi_nano_defconfig && \

