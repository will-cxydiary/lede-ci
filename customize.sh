#!/bin/bash
# --------------------------------------------------------
# Script to compile and create files for each openwrt
# --------------------------------------------------------
#1. 修改默认IP
sed -i 's/192.168.1.1/10.10.10.1/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改自定义固件名,增加编译日期
#sed -i "s/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)=\"IMG_PREFIX:=$(shell date +%m-%d)-$(VERSION_DIST_SANITIZED)'\"/g" include/image.mk


#sed -i 's?zstd$?zstd ucl upx\n$(curdir)/upx/compile := $(curdir)/ucl/compile?g' tools/Makefile
#sed -i 's/$(TARGET_DIR)) install/$(TARGET_DIR)) install --force-overwrite/' package/Makefile
#sed -i 's/root:.*/root:$1$tTPCBw1t$ldzfp37h5lSpO9VXk4uUE\/:18336:0:99999:7:::/g' package/base-files/files/etc/shadow
exit
