#!/bin/bash

#删除feeds自带mosdns、v2ray-geodata
rm -rf ./feeds/packages/net/mosdns

#克隆passwall环境插件
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/pwpage

#克隆的源码放在small文件夹
mkdir package/small
pushd package/small

#克隆源码
#passwall2
git clone -b main --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git
#mosdns
git clone -b v5 --depth 1 https://github.com/sbwml/luci-app-mosdns.git



popd
