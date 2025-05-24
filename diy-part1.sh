#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
find /home/op/openwrt -name "*passwall*" | xargs rm -rf
# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/jtzgc/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/jtzgc/openwrt-passwall-packages' >>feeds.conf.default
echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default
