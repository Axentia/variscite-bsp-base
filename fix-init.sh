#!/bin/bash

SRC=sources/poky/meta/recipes-core/initscripts/initscripts-1.0
DST=build_x11/tmp/work/armv7at2hf-neon-fslc-linux-gnueabi/initscripts/1.0-r155

for f in "$SRC"/*; do cp $f $DST; done
cp $DST/GPLv2.patch $DST/COPYING
sed -i "s/^+//g" $DST/COPYING
sed -i "1,8d" $DST/COPYING
