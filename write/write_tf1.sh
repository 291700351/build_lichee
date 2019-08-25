#!/bin/bash
sudo mount "$1"1 /mnt &&\
sudo cp ./output/zImage /mnt/zImage &&\
sudo cp ./output/suniv-f1c100s-licheepi-nano.dtb /mnt/ &&\
sudo cp ./output/boot.scr /mnt/boot.scr &&\
sync &&\
sudo umount "$1"1 &&\
echo "###write partion 1 ok!"
sudo umount /mnt >/dev/null 2>&1
echo ""
