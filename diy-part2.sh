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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify the password to null
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# Modify hostname
sed -i 's/OpenWrt/OpenWrt/g' package/base-files/files/bin/config_generate

# Modify the version number
sed -i "s/OpenWrt /Yan-ME.TOP Build $(TZ=UTC-8 date "+%Y.%m.%d") @ Lean OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
