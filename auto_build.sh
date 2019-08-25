#!/bin/bash
sudo chmod +x *.sh && \
./clean_all.sh && \
./auto_uboot.sh && \
./auto_linux.sh && \
./auto_rootfs.sh