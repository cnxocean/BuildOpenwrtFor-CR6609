#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate
# Change default theme
sed -i 's/default Bootstrap theme/default Argon theme/g' feeds/luci/collections/luci/Makefile
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# Change wifi default enable
sed -i 's/.disabled=1/.disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

