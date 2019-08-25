#!/bin/bash 
 
# git clone --depth=1 -b f1c100s-480272lcd-test https://github.com/Icenowy/linux.git && \

cd buildroot-2019.08-rc2 && \
make && \
cd .. && \
cp buildroot-2019.08-rc2/output/images/rootfs.tar  ./output/rootfs.tar