#!/bin/bash 
sudo fdisk $1 <<EOF
n
p
1

+32M

n
p
2


p
w
q
EOF