#!/bin/sh
sudo mount "$1"2 /mnt && \
sudo rm -rf /mnt/* && \

sudo cp ./output/rootfs.tar /mnt/ && \
cd /mnt && \
sudo tar -xf /mnt/rootfs.tar && \
sudo rm /mnt/rootfs.tar && \
cd .. && \

sudo umount "$1"2 &&\
sync &&\
echo "###write partion 2 ok!"
sudo umount /mnt >/dev/null 2>&1
