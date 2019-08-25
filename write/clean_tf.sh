#!/bin/bash
sudo umount "$1"1
sudo umount "$1"2
sudo fdisk $1 <<EOF
d
1
d
2
d
3
d
4
w
p
q
EOF

sync