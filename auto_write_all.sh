#!/bin/bash
./write/clean_tf.sh $1 && \
./write/write_tf.sh $1 && \
./write/write_mktf.sh $1 && \
./write/write_uboot.sh $1 && \
./write/write_tf1.sh $1 && \
./write/write_tf2.sh $1 